-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 08 juin 2021 à 20:55
-- Version du serveur :  8.0.25-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SilicosDB`
--

-- --------------------------------------------------------

--
-- Structure de la table `BioProcess`
--

CREATE TABLE `BioProcess` (
  `idBioProcess` int NOT NULL,
  `nameBioProcess` varchar(100) NOT NULL,
  `descBioProcess` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `CellComponent`
--

CREATE TABLE `CellComponent` (
  `idCellComponent` int NOT NULL,
  `nameCellComponent` varchar(100) NOT NULL,
  `descCellComponent` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Family`
--

CREATE TABLE `Family` (
  `idFamily` int NOT NULL,
  `nameFamily` varchar(100) NOT NULL,
  `alignmentFamily` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Keyword`
--

CREATE TABLE `Keyword` (
  `idKeyword` int NOT NULL,
  `wordKeyword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `MolFunction`
--

CREATE TABLE `MolFunction` (
  `idMolFunction` int NOT NULL,
  `nameMolFunction` varchar(100) NOT NULL,
  `descMolFunction` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Origin`
--

CREATE TABLE `Origin` (
  `idOrigin` int NOT NULL,
  `nameOrigin` varchar(100) NOT NULL,
  `taxid` int DEFAULT NULL,
  `descOrigin` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Pep3DStructure`
--

CREATE TABLE `Pep3DStructure` (
  `idPepStructure` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkStructure3D` int NOT NULL,
  `descPep3DStructure` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepBioProcess`
--

CREATE TABLE `PepBioProcess` (
  `idPepBioProcess` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkBioProcess` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepCellComponent`
--

CREATE TABLE `PepCellComponent` (
  `idPepCellComponent` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkCellComponent` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepKeyword`
--

CREATE TABLE `PepKeyword` (
  `idPepKeyword` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkKeyword` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepMolFunction`
--

CREATE TABLE `PepMolFunction` (
  `idPepMolFunction` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkMolFunction` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepPhageExpression`
--

CREATE TABLE `PepPhageExpression` (
  `idPepPhageExpression` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkPhageExpression` int NOT NULL,
  `seqPepPhageExpression` varchar(100) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepPlateSynthesis`
--

CREATE TABLE `PepPlateSynthesis` (
  `idPepPlateSynthesi` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkPlateSynthesis` int NOT NULL,
  `positionPepPlateSynthesis` int NOT NULL,
  `seqPepPlateSynthesis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepReference`
--

CREATE TABLE `PepReference` (
  `idPepReference` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkReference` int NOT NULL,
  `descReferene` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PepTarget`
--

CREATE TABLE `PepTarget` (
  `idPepTarget` int NOT NULL,
  `fkPeptide` int NOT NULL,
  `fkTarget` int NOT NULL,
  `activityDescription` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Peptide`
--

CREATE TABLE `Peptide` (
  `idPeptide` int NOT NULL,
  `seqPeptide` varchar(100) NOT NULL,
  `fkFamily` int NOT NULL,
  `pepName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `protName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fkOrigin` int NOT NULL,
  `sizePeptide` int NOT NULL,
  `nbCystPeptide` int NOT NULL,
  `weightPeptide` decimal(10,10) NOT NULL,
  `nbAA` int NOT NULL,
  `chargePeptide` decimal(10,10) NOT NULL,
  `struc2DPeptide` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `small` decimal(10,10) NOT NULL,
  `tiny` decimal(10,10) NOT NULL,
  `hydrophobe` decimal(10,10) NOT NULL,
  `polar` decimal(10,10) NOT NULL,
  `aliphatic` decimal(10,10) NOT NULL,
  `aromatic` decimal(10,10) NOT NULL,
  `charged` decimal(10,10) NOT NULL,
  `positive` decimal(10,10) NOT NULL,
  `negative` decimal(10,10) NOT NULL,
  `hydrophobicity` decimal(10,10) NOT NULL,
  `NN` int NOT NULL,
  `descPeptide` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PhageExpression`
--

CREATE TABLE `PhageExpression` (
  `idPhageExpression` int NOT NULL,
  `datePhageExpression` date NOT NULL,
  `descPhageExpression` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `PlateSynthesis`
--

CREATE TABLE `PlateSynthesis` (
  `idPlateSynthesis` int NOT NULL,
  `datePlateSynthesis` date NOT NULL,
  `descPlateSynthesis` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Reference`
--

CREATE TABLE `Reference` (
  `idReference` int NOT NULL,
  `linkReference` varchar(1000) NOT NULL,
  `descReference` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Structure3D`
--

CREATE TABLE `Structure3D` (
  `idStructure3D` int NOT NULL,
  `idPDB` int NOT NULL,
  `descStructure` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `Target`
--

CREATE TABLE `Target` (
  `idTarget` int NOT NULL,
  `nameTarget` varchar(100) NOT NULL,
  `descTarget` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `BioProcess`
--
ALTER TABLE `BioProcess`
  ADD PRIMARY KEY (`idBioProcess`);

--
-- Index pour la table `CellComponent`
--
ALTER TABLE `CellComponent`
  ADD PRIMARY KEY (`idCellComponent`);

--
-- Index pour la table `Family`
--
ALTER TABLE `Family`
  ADD PRIMARY KEY (`idFamily`);

--
-- Index pour la table `Keyword`
--
ALTER TABLE `Keyword`
  ADD PRIMARY KEY (`idKeyword`);

--
-- Index pour la table `MolFunction`
--
ALTER TABLE `MolFunction`
  ADD PRIMARY KEY (`idMolFunction`);

--
-- Index pour la table `Origin`
--
ALTER TABLE `Origin`
  ADD PRIMARY KEY (`idOrigin`);

--
-- Index pour la table `Pep3DStructure`
--
ALTER TABLE `Pep3DStructure`
  ADD PRIMARY KEY (`idPepStructure`),
  ADD KEY `fkPeptide` (`fkPeptide`),
  ADD KEY `fkStructure3D` (`fkStructure3D`);

--
-- Index pour la table `PepBioProcess`
--
ALTER TABLE `PepBioProcess`
  ADD PRIMARY KEY (`idPepBioProcess`),
  ADD KEY `fkBioProcess` (`fkBioProcess`),
  ADD KEY `fkPeptide` (`fkPeptide`);

--
-- Index pour la table `PepCellComponent`
--
ALTER TABLE `PepCellComponent`
  ADD PRIMARY KEY (`idPepCellComponent`),
  ADD KEY `fkCellComponent` (`fkCellComponent`),
  ADD KEY `fkPeptide` (`fkPeptide`);

--
-- Index pour la table `PepKeyword`
--
ALTER TABLE `PepKeyword`
  ADD PRIMARY KEY (`idPepKeyword`),
  ADD KEY `fkPeptide` (`fkPeptide`),
  ADD KEY `fkKeyword` (`fkKeyword`);

--
-- Index pour la table `PepMolFunction`
--
ALTER TABLE `PepMolFunction`
  ADD PRIMARY KEY (`idPepMolFunction`),
  ADD KEY `fkMolFunction` (`fkMolFunction`),
  ADD KEY `fkPeptide` (`fkPeptide`);

--
-- Index pour la table `PepPhageExpression`
--
ALTER TABLE `PepPhageExpression`
  ADD PRIMARY KEY (`idPepPhageExpression`),
  ADD KEY `fkPeptide` (`fkPeptide`),
  ADD KEY `fkPhageExpression` (`fkPhageExpression`);

--
-- Index pour la table `PepPlateSynthesis`
--
ALTER TABLE `PepPlateSynthesis`
  ADD PRIMARY KEY (`idPepPlateSynthesi`),
  ADD KEY `fkPeptide` (`fkPeptide`),
  ADD KEY `fkPlateSynthesis` (`fkPlateSynthesis`);

--
-- Index pour la table `PepReference`
--
ALTER TABLE `PepReference`
  ADD PRIMARY KEY (`idPepReference`),
  ADD KEY `fkPeptide` (`fkPeptide`),
  ADD KEY `fkReference` (`fkReference`);

--
-- Index pour la table `PepTarget`
--
ALTER TABLE `PepTarget`
  ADD PRIMARY KEY (`idPepTarget`),
  ADD KEY `fkPeptide` (`fkPeptide`),
  ADD KEY `fkTarget` (`fkTarget`);

--
-- Index pour la table `Peptide`
--
ALTER TABLE `Peptide`
  ADD PRIMARY KEY (`idPeptide`),
  ADD KEY `fkFamily` (`fkFamily`),
  ADD KEY `fkOrigin` (`fkOrigin`);

--
-- Index pour la table `PhageExpression`
--
ALTER TABLE `PhageExpression`
  ADD PRIMARY KEY (`idPhageExpression`);

--
-- Index pour la table `PlateSynthesis`
--
ALTER TABLE `PlateSynthesis`
  ADD PRIMARY KEY (`idPlateSynthesis`);

--
-- Index pour la table `Reference`
--
ALTER TABLE `Reference`
  ADD PRIMARY KEY (`idReference`);

--
-- Index pour la table `Structure3D`
--
ALTER TABLE `Structure3D`
  ADD PRIMARY KEY (`idStructure3D`);

--
-- Index pour la table `Target`
--
ALTER TABLE `Target`
  ADD PRIMARY KEY (`idTarget`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `BioProcess`
--
ALTER TABLE `BioProcess`
  MODIFY `idBioProcess` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `CellComponent`
--
ALTER TABLE `CellComponent`
  MODIFY `idCellComponent` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Family`
--
ALTER TABLE `Family`
  MODIFY `idFamily` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Keyword`
--
ALTER TABLE `Keyword`
  MODIFY `idKeyword` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `MolFunction`
--
ALTER TABLE `MolFunction`
  MODIFY `idMolFunction` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Origin`
--
ALTER TABLE `Origin`
  MODIFY `idOrigin` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Pep3DStructure`
--
ALTER TABLE `Pep3DStructure`
  MODIFY `idPepStructure` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepBioProcess`
--
ALTER TABLE `PepBioProcess`
  MODIFY `idPepBioProcess` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepCellComponent`
--
ALTER TABLE `PepCellComponent`
  MODIFY `idPepCellComponent` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepKeyword`
--
ALTER TABLE `PepKeyword`
  MODIFY `idPepKeyword` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepMolFunction`
--
ALTER TABLE `PepMolFunction`
  MODIFY `idPepMolFunction` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepPhageExpression`
--
ALTER TABLE `PepPhageExpression`
  MODIFY `idPepPhageExpression` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepPlateSynthesis`
--
ALTER TABLE `PepPlateSynthesis`
  MODIFY `idPepPlateSynthesi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepReference`
--
ALTER TABLE `PepReference`
  MODIFY `idPepReference` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PepTarget`
--
ALTER TABLE `PepTarget`
  MODIFY `idPepTarget` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Peptide`
--
ALTER TABLE `Peptide`
  MODIFY `idPeptide` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PhageExpression`
--
ALTER TABLE `PhageExpression`
  MODIFY `idPhageExpression` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PlateSynthesis`
--
ALTER TABLE `PlateSynthesis`
  MODIFY `idPlateSynthesis` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Reference`
--
ALTER TABLE `Reference`
  MODIFY `idReference` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Structure3D`
--
ALTER TABLE `Structure3D`
  MODIFY `idStructure3D` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Target`
--
ALTER TABLE `Target`
  MODIFY `idTarget` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Pep3DStructure`
--
ALTER TABLE `Pep3DStructure`
  ADD CONSTRAINT `Pep3DStructure_ibfk_1` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Pep3DStructure_ibfk_2` FOREIGN KEY (`fkStructure3D`) REFERENCES `Structure3D` (`idStructure3D`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepBioProcess`
--
ALTER TABLE `PepBioProcess`
  ADD CONSTRAINT `PepBioProcess_ibfk_1` FOREIGN KEY (`fkBioProcess`) REFERENCES `BioProcess` (`idBioProcess`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepBioProcess_ibfk_2` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepCellComponent`
--
ALTER TABLE `PepCellComponent`
  ADD CONSTRAINT `PepCellComponent_ibfk_1` FOREIGN KEY (`fkCellComponent`) REFERENCES `CellComponent` (`idCellComponent`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepCellComponent_ibfk_2` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepKeyword`
--
ALTER TABLE `PepKeyword`
  ADD CONSTRAINT `PepKeyword_ibfk_1` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepKeyword_ibfk_2` FOREIGN KEY (`fkKeyword`) REFERENCES `Keyword` (`idKeyword`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepMolFunction`
--
ALTER TABLE `PepMolFunction`
  ADD CONSTRAINT `PepMolFunction_ibfk_1` FOREIGN KEY (`fkMolFunction`) REFERENCES `MolFunction` (`idMolFunction`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepMolFunction_ibfk_2` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepPhageExpression`
--
ALTER TABLE `PepPhageExpression`
  ADD CONSTRAINT `PepPhageExpression_ibfk_1` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepPhageExpression_ibfk_2` FOREIGN KEY (`fkPhageExpression`) REFERENCES `PhageExpression` (`idPhageExpression`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepPlateSynthesis`
--
ALTER TABLE `PepPlateSynthesis`
  ADD CONSTRAINT `PepPlateSynthesis_ibfk_1` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepPlateSynthesis_ibfk_2` FOREIGN KEY (`fkPlateSynthesis`) REFERENCES `PlateSynthesis` (`idPlateSynthesis`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepReference`
--
ALTER TABLE `PepReference`
  ADD CONSTRAINT `PepReference_ibfk_1` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PepReference_ibfk_2` FOREIGN KEY (`fkReference`) REFERENCES `Reference` (`idReference`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PepTarget`
--
ALTER TABLE `PepTarget`
  ADD CONSTRAINT `PepTarget_ibfk_1` FOREIGN KEY (`fkPeptide`) REFERENCES `Peptide` (`idPeptide`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PepTarget_ibfk_2` FOREIGN KEY (`fkTarget`) REFERENCES `Target` (`idTarget`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `Peptide`
--
ALTER TABLE `Peptide`
  ADD CONSTRAINT `Peptide_ibfk_1` FOREIGN KEY (`fkFamily`) REFERENCES `Family` (`idFamily`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Peptide_ibfk_2` FOREIGN KEY (`fkOrigin`) REFERENCES `Origin` (`idOrigin`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
