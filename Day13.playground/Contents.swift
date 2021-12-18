import Accelerate

//let input = [Coord(6,10),Coord(0,14),Coord(9,10),Coord(0,3),Coord(10,4),Coord(4,11),Coord(6,0),Coord(6,12),Coord(4,1),Coord(0,13),Coord(10,12),Coord(3,4),Coord(3,0),Coord(8,4),Coord(1,10),Coord(2,14),Coord(8,10),Coord(9,0)]
let dots = [Coord(1141,761),Coord(175,114),Coord(628,854),Coord(654,506),Coord(314,266),Coord(370,883),Coord(642,826),Coord(244,669),Coord(739,429),Coord(970,852),Coord(1298,740),Coord(1121,777),Coord(642,579),Coord(497,308),Coord(1150,460),Coord(644,60),Coord(745,866),Coord(1169,882),Coord(807,338),Coord(319,705),Coord(740,647),Coord(763,632),Coord(1163,829),Coord(1278,408),Coord(460,675),Coord(1002,301),Coord(162,550),Coord(243,353),Coord(858,240),Coord(632,372),Coord(704,749),Coord(604,494),Coord(917,240),Coord(1034,838),Coord(261,800),Coord(585,238),Coord(741,39),Coord(315,674),Coord(1298,803),Coord(189,117),Coord(606,184),Coord(797,348),Coord(244,144),Coord(1290,110),Coord(1198,54),Coord(459,192),Coord(401,868),Coord(70,217),Coord(1077,54),Coord(634,110),Coord(982,660),Coord(179,737),Coord(1221,5),Coord(49,810),Coord(223,423),Coord(760,600),Coord(170,42),Coord(679,380),Coord(658,793),Coord(78,625),Coord(1036,283),Coord(995,674),Coord(353,225),Coord(1032,525),Coord(735,353),Coord(140,372),Coord(333,830),Coord(609,410),Coord(900,213),Coord(154,817),Coord(218,667),Coord(726,217),Coord(258,268),Coord(502,889),Coord(654,424),Coord(237,677),Coord(499,870),Coord(995,686),Coord(1265,238),Coord(112,795),Coord(32,30),Coord(1230,682),Coord(734,625),Coord(539,208),Coord(353,221),Coord(1019,292),Coord(324,236),Coord(137,22),Coord(1148,176),Coord(44,320),Coord(482,350),Coord(761,95),Coord(276,838),Coord(1266,320),Coord(172,749),Coord(976,194),Coord(480,584),Coord(403,144),Coord(172,593),Coord(1044,283),Coord(406,255),Coord(150,0),Coord(545,488),Coord(195,416),Coord(1299,226),Coord(140,820),Coord(569,855),Coord(345,290),Coord(962,723),Coord(35,816),Coord(426,542),Coord(524,103),Coord(92,392),Coord(587,336),Coord(358,235),Coord(321,474),Coord(666,39),Coord(1115,478),Coord(479,444),Coord(15,441),Coord(79,317),Coord(112,54),Coord(62,313),Coord(972,248),Coord(524,299),Coord(1096,270),Coord(851,702),Coord(1262,184),Coord(554,856),Coord(363,78),Coord(850,637),Coord(87,592),Coord(152,5),Coord(1153,581),Coord(185,98),Coord(1135,114),Coord(1231,317),Coord(398,390),Coord(524,567),Coord(68,402),Coord(398,838),Coord(108,756),Coord(216,78),Coord(425,256),Coord(1029,500),Coord(1099,763),Coord(20,784),Coord(410,681),Coord(544,567),Coord(636,166),Coord(196,103),Coord(971,208),Coord(821,432),Coord(1180,810),Coord(893,553),Coord(1146,12),Coord(223,726),Coord(141,418),Coord(340,467),Coord(269,35),Coord(195,478),Coord(572,254),Coord(132,616),Coord(62,718),Coord(472,525),Coord(656,449),Coord(611,894),Coord(1098,110),Coord(1089,799),Coord(18,276),Coord(258,402),Coord(1136,423),Coord(1158,808),Coord(324,460),Coord(89,341),Coord(308,288),Coord(334,700),Coord(1221,30),Coord(634,499),Coord(517,565),Coord(763,665),Coord(314,822),Coord(11,226),Coord(1091,184),Coord(142,171),Coord(644,453),Coord(537,298),Coord(62,176),Coord(684,16),Coord(294,38),Coord(179,1),Coord(1160,894),Coord(1174,644),Coord(1180,82),Coord(776,520),Coord(1173,872),Coord(744,348),Coord(1057,196),Coord(1298,826),Coord(1150,152),Coord(950,455),Coord(1300,60),Coord(460,616),Coord(932,614),Coord(984,22),Coord(252,331),Coord(455,372),Coord(922,199),Coord(88,409),Coord(564,631),Coord(970,315),Coord(182,2),Coord(572,634),Coord(408,234),Coord(632,624),Coord(1221,530),Coord(48,184),Coord(401,26),Coord(1014,464),Coord(1128,444),Coord(1233,290),Coord(446,521),Coord(47,880),Coord(238,369),Coord(407,465),Coord(1006,423),Coord(1087,23),Coord(1009,511),Coord(723,663),Coord(1278,439),Coord(867,131),Coord(1009,665),Coord(1198,99),Coord(97,61),Coord(539,238),Coord(1153,26),Coord(642,875),Coord(141,882),Coord(32,590),Coord(705,138),Coord(343,453),Coord(1180,586),Coord(340,180),Coord(70,504),Coord(681,872),Coord(408,820),Coord(652,182),Coord(1158,310),Coord(1098,784),Coord(73,840),Coord(1116,21),Coord(348,483),Coord(756,515),Coord(23,514),Coord(1028,460),Coord(1169,12),Coord(1292,276),Coord(554,515),Coord(850,271),Coord(50,481),Coord(455,66),Coord(674,584),Coord(940,883),Coord(813,586),Coord(454,227),Coord(718,46),Coord(2,854),Coord(1032,822),Coord(1087,471),Coord(1046,304),Coord(1180,308),Coord(136,698),Coord(584,108),Coord(796,731),Coord(244,449),Coord(781,714),Coord(726,677),Coord(278,749),Coord(22,522),Coord(421,432),Coord(996,822),Coord(1134,178),Coord(345,738),Coord(913,726),Coord(413,66),Coord(1213,61),Coord(182,749),Coord(353,847),Coord(738,260),Coord(1059,368),Coord(12,154),Coord(1058,331),Coord(1046,269),Coord(937,36),Coord(765,854),Coord(169,26),Coord(1228,549),Coord(682,40),Coord(875,632),Coord(223,471),Coord(874,530),Coord(1026,883),Coord(996,427),Coord(194,257),Coord(952,847),Coord(900,640),Coord(880,200),Coord(8,151),Coord(1262,145),Coord(546,152),Coord(1012,729),Coord(955,9),Coord(1282,873),Coord(1016,663),Coord(850,392),Coord(725,656),Coord(139,523),Coord(592,189),Coord(934,525),Coord(1168,171),Coord(412,423),Coord(1057,474),Coord(299,457),Coord(388,361),Coord(127,828),Coord(828,145),Coord(1041,35),Coord(909,478),Coord(776,374),Coord(1094,791),Coord(398,120),Coord(502,23),Coord(783,527),Coord(1140,42),Coord(1180,327),Coord(80,660),Coord(376,749),Coord(1086,240),Coord(994,23),Coord(276,280),Coord(716,247),Coord(1202,756),Coord(406,471),Coord(282,96),Coord(967,441),Coord(1015,864),Coord(67,663),Coord(472,640),Coord(166,658),Coord(507,513),Coord(28,21),Coord(1195,686),Coord(1192,863),Coord(848,148),Coord(330,199),Coord(453,714),Coord(130,586),Coord(1072,185),Coord(150,296),Coord(238,33),Coord(989,420),Coord(1278,887),Coord(281,52),Coord(338,248),Coord(763,229),Coord(283,218),Coord(738,449),Coord(575,353),Coord(1169,418),Coord(957,221),Coord(658,854),Coord(597,351),Coord(721,352),Coord(723,336),Coord(964,86),Coord(857,712),Coord(155,306),Coord(78,191),Coord(469,12),Coord(1243,663),Coord(162,718),Coord(281,500),Coord(975,306),Coord(393,58),Coord(637,828),Coord(80,522),Coord(246,717),Coord(308,606),Coord(229,256),Coord(462,820),Coord(1138,593),Coord(830,584),Coord(950,142),Coord(495,711),Coord(852,187),Coord(130,362),Coord(147,289),Coord(1228,345),Coord(671,673),Coord(1077,432),Coord(1064,32),Coord(684,878),Coord(960,148),Coord(984,458),Coord(32,439),Coord(1141,313),Coord(264,269),Coord(257,616),Coord(229,638),Coord(1290,784),Coord(718,257),Coord(1201,40),Coord(314,803),Coord(458,856),Coord(1305,382),Coord(658,773),Coord(995,220),Coord(321,469),Coord(1202,667),Coord(850,278),Coord(920,403),Coord(1124,494),Coord(808,711),Coord(989,425),Coord(927,856),Coord(1178,891),Coord(594,199),Coord(897,150),Coord(462,522),Coord(331,184),Coord(1230,1),Coord(601,70),Coord(150,436),Coord(241,150),Coord(994,616),Coord(932,280),Coord(226,248),Coord(10,386),Coord(1184,3),Coord(196,327),Coord(388,199),Coord(169,133),Coord(745,476),Coord(460,392),Coord(1173,777),Coord(390,624),Coord(939,560),Coord(855,66),Coord(360,142),Coord(1096,504),Coord(529,462),Coord(479,562),Coord(932,736),Coord(155,446),Coord(234,724),Coord(277,308),Coord(1225,514),Coord(224,654),Coord(745,478),Coord(38,21),Coord(581,812),Coord(89,364),Coord(770,570),Coord(62,189),Coord(970,266),Coord(991,189),Coord(864,521),Coord(806,296),Coord(494,12),Coord(488,152),Coord(333,64),Coord(489,208),Coord(130,327),Coord(1155,870),Coord(84,647),Coord(1014,399),Coord(975,474),Coord(1223,512),Coord(184,134),Coord(1054,665),Coord(831,444),Coord(1016,38),Coord(678,522),Coord(1078,721),Coord(1009,217),Coord(406,647),Coord(90,77),Coord(726,786),Coord(547,297),Coord(201,462),Coord(296,430),Coord(436,227),Coord(109,40),Coord(170,465),Coord(663,588),Coord(957,225),Coord(594,647),Coord(1185,740),Coord(654,449),Coord(656,470),Coord(1265,208),Coord(566,348),Coord(363,623),Coord(1191,387),Coord(676,395),Coord(749,450),Coord(1114,595),Coord(1029,52),Coord(1232,255),Coord(735,541),Coord(79,129),Coord(223,23),Coord(639,889),Coord(152,808),Coord(783,197),Coord(211,315),Coord(745,418),Coord(831,450),Coord(524,595),Coord(619,826),Coord(1135,780),Coord(315,686),Coord(515,371),Coord(415,64),Coord(746,631),Coord(584,217),Coord(281,394),Coord(1140,465),Coord(658,121),Coord(678,372),Coord(110,359),Coord(636,614),Coord(806,514),Coord(976,602),Coord(1067,541),Coord(176,716),Coord(977,64),Coord(565,866),Coord(606,749),Coord(1136,584),Coord(107,665),Coord(534,520),Coord(233,462),Coord(460,502),Coord(484,877),Coord(1163,320),Coord(718,332),Coord(753,833),Coord(725,238),Coord(1033,455),Coord(346,86),Coord(489,432),Coord(796,176),Coord(1267,222),Coord(825,138),Coord(1163,737),Coord(1308,40),Coord(201,656),Coord(458,187),Coord(592,562),Coord(489,462),Coord(1174,196),Coord(372,544),Coord(1170,372),Coord(196,366),Coord(266,695),Coord(1173,341),Coord(1193,298),Coord(10,229),Coord(88,537),Coord(295,30),Coord(904,647),Coord(132,425),Coord(569,156),Coord(782,3),Coord(176,436),Coord(965,290),Coord(768,383),Coord(877,543),Coord(372,350),Coord(846,82),Coord(125,742),Coord(537,148),Coord(48,145),Coord(783,828),Coord(572,445),Coord(960,199),Coord(1064,673),Coord(194,189),Coord(1007,66),Coord(1222,546),Coord(1125,12),Coord(1002,512),Coord(990,521),Coord(380,428),Coord(1033,308),Coord(1262,301),Coord(137,777),Coord(1007,514),Coord(1216,91),Coord(1019,602),Coord(920,637),Coord(12,91),Coord(811,870),Coord(678,270),Coord(637,66),Coord(433,799),Coord(311,217),Coord(320,521),Coord(1148,434),Coord(999,217),Coord(232,49),Coord(164,348),Coord(908,563),Coord(1158,584),Coord(810,525),Coord(1123,371),Coord(1305,512),Coord(688,864),Coord(581,474),Coord(118,863),Coord(115,686),Coord(169,138),Coord(1202,308),Coord(950,612),Coord(405,290),Coord(709,70),Coord(514,74),Coord(933,719),Coord(182,166),Coord(257,278),Coord(1014,430),Coord(855,25),Coord(831,780),Coord(517,374),Coord(522,469),Coord(841,546),Coord(1225,738),Coord(393,352),Coord(1004,171),Coord(348,275),Coord(321,873),Coord(1183,645),Coord(826,877),Coord(574,269),Coord(1275,714),Coord(473,156),Coord(472,702),Coord(766,77),Coord(756,422),Coord(1298,852),Coord(698,201),Coord(1028,3),Coord(485,868),Coord(1265,656),Coord(397,726),Coord(1173,117),Coord(335,420),Coord(364,373),Coord(1302,151),Coord(438,499),Coord(502,871),Coord(78,177),Coord(416,369),Coord(745,665),Coord(1039,589),Coord(793,872),Coord(619,154),Coord(540,150),Coord(147,605),Coord(428,198),Coord(1169,866),Coord(870,105),Coord(162,270),Coord(781,462),Coord(989,469),Coord(884,542),Coord(478,884),Coord(585,656),Coord(1131,605),Coord(278,374),Coord(1087,423),Coord(1150,882),Coord(334,373),Coord(1272,333),Coord(970,467),Coord(70,56),Coord(580,115),Coord(69,392),Coord(1081,190),Coord(1265,110),Coord(36,499),Coord(996,803),Coord(934,749),Coord(920,38),Coord(112,511),Coord(534,374),Coord(938,891),Coord(1185,152),Coord(412,247),Coord(676,110),Coord(584,675),Coord(438,807),Coord(1151,183),Coord(186,400),Coord(673,66),Coord(668,292),Coord(12,852),Coord(574,669),Coord(976,373),Coord(306,275),Coord(390,403),Coord(585,315),Coord(378,614),Coord(576,625),Coord(1205,799),Coord(350,746),Coord(410,445),Coord(678,471),Coord(549,95),Coord(838,192),Coord(852,856),Coord(319,637),Coord(301,511),Coord(402,563),Coord(339,504),Coord(1057,698),Coord(62,637),Coord(340,315),Coord(1076,724),Coord(350,563),Coord(596,294),Coord(771,238),Coord(766,499),Coord(731,816),Coord(278,822),Coord(1073,677),Coord(562,284),Coord(80,372),Coord(382,112),Coord(57,543),Coord(351,66),Coord(996,290),Coord(1284,406),Coord(350,695),Coord(1251,726),Coord(1029,36),Coord(1292,618),Coord(517,553),Coord(1111,372),Coord(584,677),Coord(192,372),Coord(80,682),Coord(808,423),Coord(982,458),Coord(380,466),Coord(199,372),Coord(937,708),Coord(1128,2),Coord(736,625),Coord(699,894),Coord(897,156),Coord(552,311),Coord(885,256),Coord(1126,134),Coord(570,647),Coord(458,528),Coord(1222,409),Coord(725,635),Coord(783,380),Coord(990,821),Coord(1288,423),Coord(979,710),Coord(502,392),Coord(176,290),Coord(605,138),Coord(557,14),Coord(25,673),Coord(912,838),Coord(1292,584),Coord(1298,68),Coord(117,298),Coord(43,222),Coord(967,453),Coord(619,740),Coord(1062,639),Coord(1156,369),Coord(544,87),Coord(736,269),Coord(623,416),Coord(5,382),Coord(990,292),Coord(995,838),Coord(649,606),Coord(984,872),Coord(1051,231),Coord(585,635),Coord(1298,763),Coord(584,56),Coord(492,792),Coord(686,11),Coord(176,604),Coord(1275,290),Coord(884,654),Coord(636,469),Coord(147,829),Coord(10,646),Coord(1300,647),Coord(738,254),Coord(572,885),Coord(507,829),Coord(132,54),Coord(253,196),Coord(373,558),Coord(1210,38),Coord(504,458),Coord(1202,152),Coord(194,873),Coord(1114,366),Coord(632,23),Coord(1028,96),Coord(89,553),Coord(550,600),Coord(1068,23),Coord(315,838),Coord(249,514),Coord(897,828),Coord(980,695),Coord(130,103),Coord(401,478),Coord(492,434),Coord(174,871),Coord(416,525),Coord(725,315),Coord(902,234),Coord(196,856),Coord(1198,392),Coord(587,112),Coord(729,474),Coord(848,201),Coord(609,574),Coord(320,821),Coord(879,726),Coord(1196,598),Coord(1016,243),Coord(547,665),Coord(957,677),Coord(12,68),Coord(1160,296),Coord(1192,339),Coord(542,789),Coord(524,532),Coord(957,453),Coord(196,812),Coord(726,338),Coord(1230,458),Coord(642,315),Coord(233,483),Coord(1180,84),Coord(579,176),Coord(62,332),Coord(246,32),Coord(316,229),Coord(507,65),Coord(691,156),Coord(0,470),Coord(517,872),Coord(644,199),Coord(462,201),Coord(1155,448),Coord(584,838),Coord(652,121),Coord(314,467),Coord(1148,718),Coord(893,341),Coord(1300,732),Coord(818,434),Coord(79,577),Coord(1222,357),Coord(1094,103),Coord(619,738),Coord(530,449),Coord(195,192),Coord(311,677),Coord(1062,717),Coord(28,873),Coord(98,206),Coord(855,372),Coord(726,838),Coord(666,199),Coord(666,453),Coord(972,646),Coord(462,74),Coord(196,775),Coord(1125,98),Coord(1248,241),Coord(938,350),Coord(416,33),Coord(1138,301),Coord(1114,775),Coord(1141,26),Coord(1010,194),Coord(745,28),Coord(816,12),Coord(1049,94),Coord(291,719),Coord(996,490),Coord(904,255),Coord(704,184),Coord(1210,422),Coord(184,187),Coord(889,462),Coord(514,176),Coord(783,514),Coord(1282,21),Coord(130,632),Coord(1310,469),Coord(786,595),Coord(714,152),Coord(20,499),Coord(989,474),Coord(119,387),Coord(1016,231),Coord(808,392),Coord(907,144),Coord(390,270),Coord(12,292),Coord(888,49),Coord(248,269),Coord(1081,208),Coord(1146,98),Coord(174,584),Coord(798,723),Coord(385,859),Coord(314,490),Coord(1032,374),Coord(850,257),Coord(915,231),Coord(59,168),Coord(395,231),Coord(182,254),Coord(774,443),Coord(1073,665),Coord(304,695),Coord(1288,522),Coord(549,799),Coord(1248,176),Coord(1178,54),Coord(725,392),Coord(1163,289),Coord(1072,369),Coord(115,656),Coord(622,243),Coord(294,231),Coord(831,562),Coord(169,581),Coord(110,395),Coord(1186,295),Coord(502,616),Coord(1222,537),Coord(320,73),Coord(530,239),Coord(110,87),Coord(338,487),Coord(1009,246),Coord(647,868),Coord(1067,353),Coord(671,221),Coord(196,408),Coord(632,270),Coord(10,647),Coord(649,830),Coord(1169,236),Coord(243,541),Coord(1077,483),Coord(0,506),Coord(1069,828),Coord(223,168),Coord(1012,654),Coord(922,533),Coord(766,359),Coord(1178,425),Coord(185,796),Coord(1200,87),Coord(1228,254),Coord(353,677),Coord(50,606),Coord(306,171),Coord(108,152),Coord(1248,313),Coord(938,3),Coord(1221,364),Coord(738,640),Coord(813,698),Coord(1174,698),Coord(425,704),Coord(38,469),Coord(43,672),Coord(1279,416)]
let instructions = [FoldInstruction(\.x, 655),FoldInstruction(\.y, 447),FoldInstruction(\.x, 327),FoldInstruction(\.y, 223),FoldInstruction(\.x, 163),FoldInstruction(\.y, 111),FoldInstruction(\.x, 81),FoldInstruction(\.y, 55),FoldInstruction(\.x, 40),FoldInstruction(\.y, 27),FoldInstruction(\.y, 13),FoldInstruction(\.y, 6)]

struct Coord: Hashable {
    var x: Int
    var y: Int
    
    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

struct FoldInstruction {
    let axis: WritableKeyPath<Coord, Int>
    let position: Int
    
    init(_ axis: WritableKeyPath<Coord, Int>, _ position: Int) {
        self.axis = axis
        self.position = position
    }
    
    func apply(coordinate: Coord) -> Coord {
        let value = coordinate[keyPath: axis]
        guard value > position else { return coordinate }

        var mirroredCoord = coordinate
        mirroredCoord[keyPath: axis] = position - (value - position)
        return mirroredCoord
    }
    
    func apply(coordinates: [Coord]) -> [Coord] {
        coordinates.map(apply)
    }
}

// Part 1
Set(instructions.first!.apply(coordinates: dots)).count

// Part 2
let result = instructions
    .reduce(dots) { partialResult, instruction in
        instruction.apply(coordinates: partialResult)
    }

let width = result.map(\.x).max()! + 1
let height = result.map(\.y).max()! + 1
let emptyFoldedPaper = Array(repeating: Array(repeating: ".", count: width), count: height)

let paper = result
    .reduce(into: emptyFoldedPaper) { partialResult, coord in
        partialResult[coord.y][coord.x] = "#"
    }
    .map { $0.joined() }
    .joined(separator: "\n")

print(paper) // PZEHRAER
