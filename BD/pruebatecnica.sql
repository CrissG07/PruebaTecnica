-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2024 a las 23:00:04
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebatecnica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamento`
--

CREATE TABLE `tbldepartamento` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbldepartamento`
--

INSERT INTO `tbldepartamento` (`codigo`, `nombre`) VALUES
('11', 'Bogotá D.C.'),
('13', 'Bolívar'),
('15', 'Boyacá'),
('17', 'Caldas'),
('18', 'Caquetá'),
('19', 'Cauca'),
('20', 'Cesar'),
('23', 'Córdoba'),
('25', 'Cundinamarca'),
('27', 'Chocó'),
('41', 'Huila'),
('44', 'La Guajira'),
('47', 'Magdalena'),
('5', 'Antioquia'),
('50', 'Meta'),
('52', 'Nariño'),
('54', 'Norte de Santander'),
('63', 'Quindío'),
('66', 'Risaralda'),
('68', 'Santander'),
('70', 'Sucre'),
('73', 'Tolima'),
('76', 'Valle del Cauca'),
('8', 'Atlántico'),
('81', 'Arauca'),
('85', 'Casanare'),
('86', 'Putumayo'),
('88', 'San Andrés'),
('91', 'Amazonas'),
('94', 'Guainía'),
('95', 'Guaviare'),
('97', 'Vaupés'),
('99', 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmunicipio`
--

CREATE TABLE `tblmunicipio` (
  `codigo` varchar(6) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `departamento` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblmunicipio`
--

INSERT INTO `tblmunicipio` (`codigo`, `nombre`, `departamento`) VALUES
('05001', 'MEDELLÍN', '5'),
('05002', 'ABEJORRAL', '5'),
('05004', 'ABRIAQUÍ', '5'),
('05021', 'ALEJANDRÍA', '5'),
('05030', 'AMAGÁ', '5'),
('05031', 'AMALFI', '5'),
('05034', 'ANDES', '5'),
('05036', 'ANGELÓPOLIS', '5'),
('05038', 'ANGOSTURA', '5'),
('05040', 'ANORÍ', '5'),
('05042', 'SANTAFÉ DE ANTIOQUIA', '5'),
('05044', 'ANZA', '5'),
('05045', 'APARTADÓ', '5'),
('05051', 'ARBOLETES', '5'),
('05055', 'ARGELIA', '5'),
('05059', 'ARMENIA', '5'),
('05079', 'BARBOSA', '5'),
('05086', 'BELMIRA', '5'),
('05088', 'BELLO', '5'),
('05091', 'BETANIA', '5'),
('05093', 'BETULIA', '5'),
('05101', 'CIUDAD BOLÍVAR', '5'),
('05107', 'BRICEÑO', '5'),
('05113', 'BURITICÁ', '5'),
('05120', 'CÁCERES', '5'),
('05125', 'CAICEDO', '5'),
('05129', 'CALDAS', '5'),
('05134', 'CAMPAMENTO', '5'),
('05138', 'CAÑASGORDAS', '5'),
('05142', 'CARACOLÍ', '5'),
('05145', 'CARAMANTA', '5'),
('05147', 'CAREPA', '5'),
('05148', 'EL CARMEN DE VIBORAL', '5'),
('05150', 'CAROLINA DEL PRÍNCIPE', '5'),
('05154', 'CAUCASIA', '5'),
('05172', 'CHIGORODÓ', '5'),
('05190', 'CISNEROS', '5'),
('05197', 'COCORNÁ', '5'),
('05206', 'CONCEPCIÓN', '5'),
('05209', 'CONCORDIA', '5'),
('05212', 'COPACABANA', '5'),
('05234', 'DABEIBA', '5'),
('05237', 'DONMATÍAS', '5'),
('05240', 'EBÉJICO', '5'),
('05250', 'EL BAGRE', '5'),
('05264', 'ENTRERRÍOS', '5'),
('05266', 'ENVIGADO', '5'),
('05282', 'FREDONIA', '5'),
('05284', 'FRONTINO', '5'),
('05306', 'GIRALDO', '5'),
('05308', 'GIRARDOTA', '5'),
('05310', 'GÓMEZ PLATA', '5'),
('05313', 'GRANADA', '5'),
('05315', 'GUADALUPE', '5'),
('05318', 'GUARNE', '5'),
('05321', 'GUATAPÉ', '5'),
('05347', 'HELICONIA', '5'),
('05353', 'HISPANIA', '5'),
('05360', 'ITAGÜÍ', '5'),
('05361', 'ITUANGO', '5'),
('05364', 'JARDÍN', '5'),
('05368', 'JERICÓ', '5'),
('05376', 'LA CEJA', '5'),
('05380', 'LA ESTRELLA', '5'),
('05390', 'LA PINTADA', '5'),
('05400', 'LA UNIÓN', '5'),
('05411', 'LIBORINA', '5'),
('05425', 'MACEO', '5'),
('05440', 'MARINILLA', '5'),
('05467', 'MONTEBELLO', '5'),
('05475', 'MURINDÓ', '5'),
('05480', 'MUTATÁ', '5'),
('05483', 'NARIÑO', '5'),
('05490', 'NECOCLÍ', '5'),
('05495', 'NECHÍ', '5'),
('05501', 'OLAYA', '5'),
('05541', 'PEÑOL', '5'),
('05543', 'PEQUE', '5'),
('05576', 'PUEBLORRICO', '5'),
('05579', 'PUERTO BERRÍO', '5'),
('05585', 'PUERTO NARE', '5'),
('05591', 'PUERTO TRIUNFO', '5'),
('05604', 'REMEDIOS', '5'),
('05607', 'RETIRO', '5'),
('05615', 'RIONEGRO', '5'),
('05628', 'SABANALARGA', '5'),
('05631', 'SABANETA', '5'),
('05642', 'SALGAR', '5'),
('05647', 'SAN ANDRÉS DE CUERQUÍA', '5'),
('05649', 'SAN CARLOS', '5'),
('05652', 'SAN FRANCISCO', '5'),
('05656', 'SAN JERÓNIMO', '5'),
('05658', 'SAN JOSÉ DE LA MONTAÑA', '5'),
('05659', 'SAN JUAN DE URABÁ', '5'),
('05660', 'SAN LUIS', '5'),
('05664', 'SAN PEDRO', '5'),
('05665', 'SAN PEDRO DE URABÁ', '5'),
('05667', 'SAN RAFAEL', '5'),
('05670', 'SAN ROQUE', '5'),
('05674', 'SAN VICENTE', '5'),
('05679', 'SANTA BÁRBARA', '5'),
('05686', 'SANTA ROSA DE OSOS', '5'),
('05690', 'SANTO DOMINGO', '5'),
('05697', 'EL SANTUARIO', '5'),
('05736', 'SEGOVIA', '5'),
('05756', 'SONSON', '5'),
('05761', 'SOPETRÁN', '5'),
('05789', 'TÁMESIS', '5'),
('05790', 'TARAZÁ', '5'),
('05792', 'TARSO', '5'),
('05809', 'TITIRIBÍ', '5'),
('05819', 'TOLEDO', '5'),
('05837', 'TURBO', '5'),
('05842', 'URAMITA', '5'),
('05847', 'URRAO', '5'),
('05854', 'VALDIVIA', '5'),
('05856', 'VALPARAÍSO', '5'),
('05858', 'VEGACHÍ', '5'),
('05861', 'VENECIA', '5'),
('05873', 'VIGÍA DEL FUERTE', '5'),
('05885', 'YALÍ', '5'),
('05887', 'YARUMAL', '5'),
('05890', 'YOLOMBÓ', '5'),
('05893', 'YONDÓ', '5'),
('05895', 'ZARAGOZA', '5'),
('08001', 'BARRANQUILLA', '8'),
('08078', 'BARANOA', '8'),
('08137', 'CAMPO DE LA CRUZ', '8'),
('08141', 'CANDELARIA', '8'),
('08296', 'GALAPA', '8'),
('08372', 'JUAN DE ACOSTA', '8'),
('08421', 'LURUACO', '8'),
('08433', 'MALAMBO', '8'),
('08436', 'MANATÍ', '8'),
('08520', 'PALMAR DE VARELA', '8'),
('11001', 'BOGOTÁ, D.C.', '11'),
('13001', 'CARTAGENA', '13'),
('13006', 'ACHÍ', '13'),
('13030', 'ALTOS DEL ROSARIO', '13'),
('13042', 'ARENAL', '13'),
('13052', 'ARJONA', '13'),
('13062', 'ARROYOHONDO', '13'),
('13074', 'BARRANCO DE LOBA', '13'),
('13140', 'CALAMAR', '13'),
('13160', 'CANTAGALLO', '13'),
('13188', 'CICUCO', '13'),
('15001', 'TUNJA', '15'),
('15022', 'ALMEIDA', '15'),
('15047', 'AQUITANIA', '15'),
('15051', 'ARCABUCO', '15'),
('15087', 'BELÉN', '15'),
('15090', 'BERBEO', '15'),
('15092', 'BETÉITIVA', '15'),
('15097', 'BOAVITA', '15'),
('15104', 'BOYACÁ', '15'),
('15106', 'BRICEÑO', '15'),
('17001', 'MANIZALES', '17'),
('17013', 'AGUADAS', '17'),
('17042', 'ANSERMA', '17'),
('17050', 'ARANZAZU', '17'),
('17088', 'BELALCÁZAR', '17'),
('17174', 'CHINCHINÁ', '17'),
('17272', 'FILADELFIA', '17'),
('17380', 'LA DORADA', '17'),
('17388', 'LA MERCED', '17'),
('17433', 'MANZANARES', '17'),
('19001', 'POPAYÁN', '19'),
('19022', 'ALMAGUER', '19'),
('19050', 'ARGELIA', '19'),
('19075', 'BALBOA', '19'),
('19100', 'BOLÍVAR', '19'),
('19110', 'BUENOS AIRES', '19'),
('19130', 'CAJIBÍO', '19'),
('19137', 'CALDONO', '19'),
('19142', 'CALOTO', '19'),
('19212', 'CORINTO', '19'),
('20001', 'VALLEDUPAR', '20'),
('20011', 'AGUACHICA', '20'),
('20013', 'AGUSTÍN CODAZZI', '20'),
('20032', 'ASTREA', '20'),
('20045', 'BECERRIL', '20'),
('20060', 'BOSCONIA', '20'),
('20175', 'CHIMICHAGUA', '20'),
('20178', 'CHIRIGUANÁ', '20'),
('20228', 'CURUMANÍ', '20'),
('20238', 'EL COPEY', '20'),
('23001', 'MONTERÍA', '23'),
('23068', 'AYAPEL', '23'),
('23079', 'BUENAVISTA', '23'),
('23090', 'CANALETE', '23'),
('23162', 'CERETÉ', '23'),
('23168', 'CHIMÁ', '23'),
('23182', 'CHINÚ', '23'),
('23189', 'CIÉNAGA DE ORO', '23'),
('23300', 'COTORRA', '23'),
('23350', 'LA APARTADA', '23'),
('25001', 'AGUA DE DIOS', '25'),
('25019', 'ALBÁN', '25'),
('25035', 'ANAPOIMA', '25'),
('25040', 'ANOLAIMA', '25'),
('25053', 'ARBELÁEZ', '25'),
('25086', 'BELTRÁN', '25'),
('25095', 'BITUIMA', '25'),
('25099', 'BOJACÁ', '25'),
('25120', 'CABRERA', '25'),
('25123', 'CACHIPAY', '25'),
('27001', 'QUIBDÓ', '27'),
('27006', 'ACANDÍ', '27'),
('27025', 'ALTO BAUDO', '27'),
('27050', 'ATRATO', '27'),
('27073', 'BAGADÓ', '27'),
('27075', 'BAHÍA SOLANO', '27'),
('27077', 'BAJO BAUDÓ', '27'),
('27086', 'BELÉN DE BAJIRÁ', '27'),
('27099', 'BOJAYÁ', '27'),
('27135', 'EL CANTÓN DEL SAN PABLO', '27'),
('41001', 'NEIVA', '41'),
('41006', 'ACEVEDO', '41'),
('41013', 'AGRADO', '41'),
('41016', 'AIPE', '41'),
('41020', 'ALGECIRAS', '41'),
('41026', 'ALTAMIRA', '41'),
('41078', 'BARAYA', '41'),
('41132', 'CAMPOALEGRE', '41'),
('41206', 'COLOMBIA', '41'),
('41244', 'ELÍAS', '41'),
('44001', 'RIOHACHA', '44'),
('44005', 'ALBANIA', '44'),
('44078', 'BARRANCAS', '44'),
('44110', 'DIBULLA', '44'),
('44170', 'EL MOLINO', '44'),
('44213', 'HATONUEVO', '44'),
('44220', 'LA JAGUA DEL PILAR', '44'),
('44223', 'LA GUAJIRA', '44'),
('44240', 'MANAURE', '44'),
('44378', 'SAN JUAN DEL CESAR', '44'),
('47001', 'SANTA MARTA', '47'),
('47002', 'ALGARROBO', '47'),
('47003', 'BARRANQUILLA', '47'),
('47004', 'BONGA', '47'),
('47005', 'CERVANTES', '47'),
('47006', 'CHIVO', '47'),
('47007', 'CIÉNAGA', '47'),
('47008', 'EL BANCO', '47'),
('47009', 'EL DIFÍCIL', '47'),
('47010', 'EL RETIRO', '47'),
('50001', 'VILLAVICENCIO', '50'),
('50006', 'ACACÍAS', '50'),
('50012', 'BARRANQUILLA', '50'),
('50014', 'CABIEN', '50'),
('50021', 'CUIDAD BOLÍVAR', '50'),
('50030', 'EL CASTILLO', '50'),
('50035', 'EL LLANO', '50'),
('50043', 'FUERTE SANDIEGO', '50'),
('50044', 'GRANDE', '50'),
('50050', 'GUAYABAL', '50'),
('52001', 'PASTO', '52'),
('52019', 'ALBANIA', '52'),
('52036', 'ANCUYA', '52'),
('52040', 'ARBOLEDA', '52'),
('52056', 'BOLÍVAR', '52'),
('52066', 'BUESACO', '52'),
('52080', 'CATORCE', '52'),
('52099', 'COLON', '52'),
('52110', 'EL ENCANTO', '52'),
('52120', 'EL PEÑON', '52'),
('54001', 'CÚCUTA', '54'),
('54006', 'ÁBREGO', '54'),
('54013', 'BOCHALEMBE', '54'),
('54020', 'BUCARAMANGA', '54'),
('54023', 'CÁCERES', '54'),
('54025', 'CÁCERO', '54'),
('54050', 'CAMPAMENTO', '54'),
('54073', 'CARACOLÍ', '54'),
('54086', 'CATAÑO', '54'),
('54110', 'Cerro de San Pedro', '54'),
('63001', 'ARMENIA', '63'),
('63002', 'CALARCÁ', '63'),
('63006', 'CIRCASIA', '63'),
('63011', 'FILANDIA', '63'),
('63020', 'GENOVA', '63'),
('63032', 'LA TEBAIDA', '63'),
('63047', 'MONTENEGRO', '63'),
('63052', 'PEREIRA', '63'),
('63061', 'QUINDÍO', '63'),
('63070', 'SALENTO', '63'),
('66001', 'PEREIRA', '66'),
('66006', 'AGUADAS', '66'),
('66008', 'ANZÁ', '66'),
('66020', 'BELLO', '66'),
('66022', 'BOLÍVAR', '66'),
('66024', 'CAICEDO', '66'),
('66026', 'CALDAS', '66'),
('66030', 'CARACOLÍ', '66'),
('66032', 'COPACABANA', '66'),
('66034', 'EL CARMEN DE VIBORAL', '66'),
('68001', 'BUCARAMANGA', '68'),
('68013', 'BARBOSA', '68'),
('68020', 'BETULIA', '68'),
('68022', 'CANO', '68'),
('68025', 'CERRITO', '68'),
('68047', 'CHARAMILLO', '68'),
('68051', 'COLÓN', '68'),
('68057', 'FLORIDABLANCA', '68'),
('68062', 'GALÁN', '68'),
('68070', 'GUADALUPE', '68'),
('70001', 'SINCELEJO', '70'),
('70003', 'ALTA GRACIA', '70'),
('70005', 'BOLÍVAR', '70'),
('70006', 'CAIMITO', '70'),
('70007', 'COROZAL', '70'),
('70008', 'EL ROBLE', '70'),
('70009', 'LA UNIÓN', '70'),
('70010', 'MORROA', '70'),
('70011', 'PUERTO TEJADA', '70'),
('70012', 'SUCRE', '70'),
('73001', 'IBAGUÉ', '73'),
('73020', 'ALPUJARRA', '73'),
('73023', 'ALVARADO', '73'),
('73024', 'AMBALÁ', '73'),
('73026', 'ANZOÁTEGUI', '73'),
('73030', 'CARMEN DE APICALÁ', '73'),
('73043', 'EL ESPINAL', '73'),
('73047', 'FRESNO', '73'),
('73050', 'GUAMO', '73'),
('73054', 'HONDOS', '73'),
('76001', 'CALI', '76'),
('76013', 'ANDALUCÍA', '76'),
('76015', 'BOLÍVAR', '76'),
('76020', 'BUENAVISTA', '76'),
('76023', 'CALIMA', '76'),
('76027', 'CARTAGO', '76'),
('76030', 'LA CUMBRE', '76'),
('76033', 'LA VICTORIA', '76'),
('76041', 'MAGDALENA', '76'),
('76043', 'RIVERA', '76'),
('81001', 'ARAUCA', '81'),
('81065', 'ARAUQUITA', '81'),
('81220', 'CRAVO NORTE', '81'),
('81300', 'FORTUL', '81'),
('81591', 'PUERTO RONDÓN', '81'),
('81736', 'SARAVENA', '81'),
('81794', 'TAME', '81'),
('85001', 'YOPAL', '85'),
('85010', 'AGUAZUL', '85'),
('85015', 'CHÁMEZA', '85'),
('85125', 'HATO COROZAL', '85'),
('85136', 'LA SALINA', '85'),
('85139', 'MANÍ', '85'),
('85162', 'MONTERREY', '85'),
('85225', 'NUNCHÍA', '85'),
('85230', 'OROCUÉ', '85'),
('85250', 'PAZ DE ARIPORO', '85'),
('86001', 'MOCOA', '86'),
('86219', 'COLÓN', '86'),
('86320', 'ORITO', '86'),
('86568', 'PUERTO ASÍS', '86'),
('86569', 'PUERTO CAICEDO', '86'),
('86571', 'PUERTO GUZMÁN', '86'),
('86573', 'PUERTO LEGUÍZAMO', '86'),
('86749', 'SIBUNDOY', '86'),
('86755', 'SAN FRANCISCO', '86'),
('86757', 'SAN MIGUEL', '86'),
('88001', 'SAN ANDRÉS', '88'),
('88564', 'PROVIDENCIA', '88'),
('91001', 'LETICIA', '91'),
('91263', 'EL ENCANTO', '91'),
('91405', 'LA CHORRERA', '91'),
('91407', 'LA PEDRERA', '91'),
('91430', 'LA VICTORIA', '91'),
('91460', 'MIRITI - PARANÁ', '91'),
('91530', 'PUERTO ALEGRÍA', '91'),
('91536', 'PUERTO ARICA', '91'),
('91540', 'PUERTO NARIÑO', '91'),
('91669', 'TARAPACÁ', '91'),
('94001', 'INÍRIDA', '94'),
('94343', 'BARRANCO MINAS', '94'),
('94663', 'MAPIRIPANA', '94'),
('94883', 'SAN FELIPE', '94'),
('94884', 'PUERTO COLOMBIA', '94'),
('94885', 'LA GUADALUPE', '94'),
('94886', 'CACAHUAL', '94'),
('94887', 'PANA PANA', '94'),
('94888', 'MORICHAL', '94'),
('95001', 'SAN JOSÉ DEL GUAVIARE', '95'),
('95015', 'CALAMAR', '95'),
('95025', 'EL RETORNO', '95'),
('95200', 'MIRAFLORES', '95'),
('97001', 'MITÚ', '97'),
('97006', 'CARURÚ', '97'),
('97011', 'PACOA', '97'),
('97016', 'PAPUNHA', '97'),
('97020', 'TUCURIN', '97'),
('97025', 'YAVARATE', '97'),
('97030', 'YAVARAVIT', '97'),
('99001', 'PUERTO CARREÑO', '99'),
('99006', 'LA PRIMAVERA', '99'),
('99007', 'SANTA ROSA', '99'),
('99008', 'TAMARINDO', '99'),
('99009', 'VICHADA', '99'),
('99010', 'VICHADITA', '99'),
('99011', 'VICHADIN', '99'),
('99012', 'VICHANÚ', '99'),
('99013', 'VICHANOL', '99'),
('99014', 'VICHAGUAS', '99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `codigo` int(2) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `municipio` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tblmunicipio`
--
ALTER TABLE `tblmunicipio`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_tblmunicipio_tbldepartamento` (`departamento`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_tblusuarios_tblmunicipio` (`municipio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `codigo` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblmunicipio`
--
ALTER TABLE `tblmunicipio`
  ADD CONSTRAINT `FK_tblmunicipio_tbldepartamento` FOREIGN KEY (`departamento`) REFERENCES `tbldepartamento` (`codigo`);

--
-- Filtros para la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD CONSTRAINT `FK_tblusuarios_tblmunicipio` FOREIGN KEY (`municipio`) REFERENCES `tblmunicipio` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
