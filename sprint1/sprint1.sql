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
