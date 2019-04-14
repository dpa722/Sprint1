-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.5-10.1.30-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para sprint1
CREATE DATABASE IF NOT EXISTS `sprint1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sprint1`;


-- Volcando estructura para tabla sprint1.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `nrocurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecurso` varchar(50) NOT NULL,
  `visible` int(11) NOT NULL,
  PRIMARY KEY (`nrocurso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sprint1.cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`nrocurso`, `nombrecurso`, `visible`) VALUES
	(1, 'sisinf2', 1);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;


-- Volcando estructura para tabla sprint1.documentos
CREATE TABLE IF NOT EXISTS `documentos` (
  `coddocumento` int(11) NOT NULL AUTO_INCREMENT,
  `nombredocumento` varchar(60) DEFAULT NULL,
  `documento` mediumblob,
  PRIMARY KEY (`coddocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sprint1.documentos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;


-- Volcando estructura para tabla sprint1.login
CREATE TABLE IF NOT EXISTS `login` (
  `nroingreso` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  PRIMARY KEY (`nroingreso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sprint1.login: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`nroingreso`, `usuario`, `contraseña`) VALUES
	(1, 'daniel', 'daniel');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `auxiliar`
--

CREATE TABLE IF NOT EXISTS `auxiliar` (
  `idAux` int(11) NOT NULL,
  `nombreAux` varchar(50) NOT NULL,
  `apellidoAux` varchar(50) NOT NULL,
  `ciAux` int(11) NOT NULL,
  `usuarioAux` varchar(50) NOT NULL,
  `contraseniaAux` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auxiliar`
--

INSERT INTO `auxiliar` (`idAux`, `nombreAux`, `apellidoAux`, `ciAux`, `usuarioAux`, `contraseniaAux`) VALUES
(1, 'Danilo', 'Jimenez Mamani', 1234, 'danilo', '1234');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
  `idDoc` int(11) NOT NULL,
  `nombreDoc` varchar(50) NOT NULL,
  `apellidoDoc` varchar(50) NOT NULL,
  `ciDoc` int(11) NOT NULL,
  `usuarioDoc` varchar(50) NOT NULL,
  `contraseniaDoc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`idDoc`, `nombreDoc`, `apellidoDoc`, `ciDoc`, `usuarioDoc`, `contraseniaDoc`) VALUES
(1, 'Emanuel', 'Sanchez Vargas', 1111, 'emanuel', '1234');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `idEst` int(11) NOT NULL,
  `nombreEst` varchar(50) NOT NULL,
  `apellidoEst` varchar(50) NOT NULL,
  `ciEst` int(11) NOT NULL,
  `usuarioEst` varchar(50) NOT NULL,
  `contraseniaEst` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idEst`, `nombreEst`, `apellidoEst`, `ciEst`, `usuarioEst`, `contraseniaEst`) VALUES
(1, 'Micaela', 'Salvatierra Guzman', 1212, 'micaela', '1234');

-- --------------------------------------------------------