import UIKit

//let input = "38006F45291200"
let input = "60552F100693298A9EF0039D24B129BA56D67282E600A4B5857002439CE580E5E5AEF67803600D2E294B2FCE8AC489BAEF37FEACB31A678548034EA0086253B183F4F6BDDE864B13CBCFBC4C10066508E3F4B4B9965300470026E92DC2960691F7F3AB32CBE834C01A9B7A933E9D241003A520DF316647002E57C1331DFCE16A249802DA009CAD2117993CD2A253B33C8BA00277180390F60E45D30062354598AA4008641A8710FCC01492FB75004850EE5210ACEF68DE2A327B12500327D848028ED0046661A209986896041802DA0098002131621842300043E3C4168B12BCB6835C00B6033F480C493003C40080029F1400B70039808AC30024C009500208064C601674804E870025003AA400BED8024900066272D7A7F56A8FB0044B272B7C0E6F2392E3460094FAA5002512957B98717004A4779DAECC7E9188AB008B93B7B86CB5E47B2B48D7CAD3328FB76B40465243C8018F49CA561C979C182723D769642200412756271FC80460A00CC0401D8211A2270803D10A1645B947B3004A4BA55801494BC330A5BB6E28CCE60BE6012CB2A4A854A13CD34880572523898C7EDE1A9FA7EED53F1F38CD418080461B00440010A845152360803F0FA38C7798413005E4FB102D004E6492649CC017F004A448A44826AB9BFAB5E0AA8053306B0CE4D324BB2149ADDA2904028600021909E0AC7F0004221FC36826200FC3C8EB10940109DED1960CCE9A1008C731CB4FD0B8BD004872BC8C3A432BC8C3A4240231CF1C78028200F41485F100001098EB1F234900505224328612AF33A97367EA00CC4585F315073004E4C2B003530004363847889E200C45985F140C010A005565FD3F06C249F9E3BC8280804B234CA3C962E1F1C64ADED77D10C3002669A0C0109FB47D9EC58BC01391873141197DCBCEA401E2CE80D0052331E95F373798F4AF9B998802D3B64C9AB6617080"

class Reader {
    private var binaryBuffer: Substring
    var isEmpty: Bool { binaryBuffer.isEmpty }
    
    init(hex: String) {
        binaryBuffer = ""

        var hexBuffer = Substring(hex)
        while !hexBuffer.isEmpty {
            let partial = hexBuffer.prefix(16)
            hexBuffer = hexBuffer.dropFirst(16)
            
            let unpaddedBinaryRepresentation = String(UInt(partial, radix: 16)!, radix: 2)
            let paddedBinaryRepresentation = String(unpaddedBinaryRepresentation.reversed())
                .padding(toLength: partial.count * 4, withPad: "0", startingAt: 0)
                .reversed()
            binaryBuffer.append(contentsOf: paddedBinaryRepresentation)
        }
    }
    
    private init(binary: Substring) {
        self.binaryBuffer = binary
    }
    
    func readBits(amount: Int) -> Substring {
        let bits = binaryBuffer.prefix(amount)
        binaryBuffer = binaryBuffer.dropFirst(amount)
        return bits
    }

    func readInt(bits amount: Int) -> UInt {
        UInt(readBits(amount: amount), radix: 2)!
    }
    
    func readPacketType(bits amount: Int) -> PacketType {
        PacketType(rawValue: Int(readInt(bits: amount)))!
    }

    func readBool() -> Bool {
        readInt(bits: 1) == 1
    }

    func readIntoReader(bits amount: UInt) -> Reader {
        Reader(binary: readBits(amount: Int(amount)))
    }
}

enum PacketType: Int {
    case sum = 0
    case product
    case minimum
    case maximum
    case literalValue
    case greaterThan
    case lesserThan
    case equalTo
}

enum Packet {
    case literalValue(version: UInt, value: UInt)
    case anyOperator(version: UInt, type: PacketType, subpackets: [Packet])

    static func from(reader: Reader) -> Packet {
        let version = reader.readInt(bits: 3)
        let type = reader.readPacketType(bits: 3)

        if type == .literalValue {
            var keepReading = true
            var literalValueBits = ""

            while keepReading {
                keepReading = reader.readBool()
                literalValueBits.append(contentsOf: reader.readBits(amount: 4))
            }

            let literalValue = UInt(literalValueBits, radix: 2)!
            
            return .literalValue(version: version, value: literalValue)
        } else {
            // Operator
            let lengthTypeId = reader.readInt(bits: 1)
            if lengthTypeId == 0 {
                let numberOfBitsInSubpackets = reader.readInt(bits: 15)
                let subpacketReader = reader.readIntoReader(bits: numberOfBitsInSubpackets)
                
                var subpackets: [Packet] = []
                while !subpacketReader.isEmpty {
                    subpackets.append(Packet.from(reader: subpacketReader))
                }
                return .anyOperator(version: version, type: type, subpackets: subpackets)
            } else {
                let numberOfSubpackets = reader.readInt(bits: 11)
                let subpackets = (0..<numberOfSubpackets).map { _ in Packet.from(reader: reader) }
                return .anyOperator(version: version, type: type, subpackets: subpackets)
            }
        }
    }
    
    var value: UInt {
        switch self {
        case let .literalValue(_, value):
            return value
        case let .anyOperator(_, type, subpackets):
            let values = subpackets.map(\.value)

            switch type {
            case .sum:
                return values.reduce(0, +)
            case .product:
                return values.reduce(1, *)
            case .minimum:
                return values.min()!
            case .maximum:
                return values.max()!
            case .literalValue:
                fatalError()
            case .greaterThan:
                return values.first! > values.last! ? 1 : 0
            case .lesserThan:
                return values.first! < values.last! ? 1 : 0
            case .equalTo:
                return values.first! == values.last! ? 1 : 0
            }
        }
    }
}

let reader = Reader(hex: input)
let packet = Packet.from(reader: reader)

// Part 1
func sumVersions(packet: Packet) -> UInt {
    switch packet {
    case let .literalValue(version, _):
        return version
    case let .anyOperator(version, _, subpackets):
        return version + subpackets.reduce(0) { partialResult, packet in
            partialResult + sumVersions(packet: packet)
        }
    }
}
sumVersions(packet: packet)

// Part 2
packet.value
