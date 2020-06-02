-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2020 at 10:49 AM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geodata`
--
CREATE DATABASE IF NOT EXISTS `geodata` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `geodata`;

-- --------------------------------------------------------

--
-- Table structure for table `iso2`
--

CREATE TABLE `iso2` (
  `iso-2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iso2`
--

INSERT INTO `iso2` (`iso-2`, `year`, `value`) VALUES
('KE', 1960, 38.19),
('KE', 1961, 36.82),
('KE', 1962, 40.6),
('KE', 1963, 41.54),
('KE', 1964, 39.8),
('KE', 1965, 35.28),
('KE', 1966, 37.88),
('KE', 1967, 36.51),
('KE', 1968, 34.6),
('KE', 1969, 33.79),
('KE', 1970, 33.29),
('KE', 1971, 31.38),
('KE', 1972, 35.19),
('KE', 1973, 35.46),
('KE', 1974, 35.36),
('KE', 1975, 34.15),
('KE', 1976, 37.9),
('KE', 1977, 41.95),
('KE', 1978, 36.92),
('KE', 1979, 34.6),
('KE', 1980, 32.59),
('KE', 1981, 32.5),
('KE', 1982, 33.36),
('KE', 1983, 34.22),
('KE', 1984, 33.97),
('KE', 1985, 32.59),
('KE', 1986, 33.04),
('KE', 1987, 31.55),
('KE', 1988, 29.89),
('KE', 1989, 30.19),
('KE', 1990, 29.52),
('KE', 1991, 28.14),
('KE', 1992, 28.74),
('KE', 1993, 31.52),
('KE', 1994, 33.32),
('KE', 1995, 31.13),
('KE', 1996, 30.74),
('KE', 1997, 30.91),
('KE', 1998, 31.23),
('KE', 1999, 32.38),
('KE', 2000, 32.36),
('KE', 2001, 31.33),
('KE', 2002, 29.13),
('KE', 2003, 29.03),
('KE', 2004, 28.04),
('KE', 2005, 27.2),
('KE', 2006, 23.16),
('KE', 2007, 23.27),
('KE', 2008, 24.92),
('KE', 2009, 26.14),
('KE', 2010, 27.83),
('KE', 2011, 29.27),
('KE', 2012, 29.21),
('KE', 2013, 29.51);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
