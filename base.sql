-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 20, 2019 at 02:44 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dev_expert_exercice`
--

-- --------------------------------------------------------

--
-- Table structure for table `collaborateur`
--

CREATE TABLE `collaborateur` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_departementTechnique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contrat`
--

CREATE TABLE `contrat` (
  `id` int(11) NOT NULL,
  `name_client` varchar(255) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `date_demande` datetime NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin_estimee` datetime NOT NULL,
  `budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departementTechnique`
--

CREATE TABLE `departementTechnique` (
  `id` int(11) NOT NULL,
  `departement_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qualificationTechniques`
--

CREATE TABLE `qualificationTechniques` (
  `id` int(11) NOT NULL,
  `qualif_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collaborateur`
--
ALTER TABLE `collaborateur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contrat`
--
ALTER TABLE `contrat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departementTechnique`
--
ALTER TABLE `departementTechnique`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualificationTechniques`
--
ALTER TABLE `qualificationTechniques`
  ADD PRIMARY KEY (`id`);
