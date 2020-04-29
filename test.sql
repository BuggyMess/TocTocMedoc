-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2020 at 04:45 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `fait_partie_de`
--

DROP TABLE IF EXISTS `fait_partie_de`;
CREATE TABLE IF NOT EXISTS `fait_partie_de` (
  `id_syndrome` int(50) NOT NULL,
  `id_symptome` int(50) NOT NULL,
  PRIMARY KEY (`id_syndrome`,`id_symptome`),
  KEY `nom_syndrome` (`id_syndrome`,`id_symptome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fait_partie_de`
--

INSERT INTO `fait_partie_de` (`id_syndrome`, `id_symptome`) VALUES
(13, 5),
(31, 1),
(31, 9),
(32, 2),
(32, 4),
(34, 6),
(35, 8),
(36, 8),
(36, 13),
(36, 15);

-- --------------------------------------------------------

--
-- Table structure for table `remedes`
--

DROP TABLE IF EXISTS `remedes`;
CREATE TABLE IF NOT EXISTS `remedes` (
  `id_remede` int(50) NOT NULL,
  `nom_remede` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_remede` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `classe_remede` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_remede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remedes`
--

INSERT INTO `remedes` (`id_remede`, `nom_remede`, `description_remede`, `classe_remede`) VALUES
(21, 'Un gargarisme d eau salée', 'En cas de début de picotement dans la gorge, utiliser une eau saline en gargarisme en prévention des infections : 1 demi-cuillère de sel dans un verre deau tiède, remuer et se gargariser, ne pas avaler.', 'A31'),
(22, 'Miel et jus de citron', 'Quand l angine est bien installée : ajouter le jus d un demi citron + 1 petite cuillère à café de miel dans de l eau tiède. Une fois le gargarisme fait, il est possible de l avaler. Le miel qui est antibactérien peut être pris en complément de tous les remèdes indiqués en cas d angine pour soulager la douleur et réduire l inflammation. La propolis peut aussi être intéressante pour ses vertus anti-infectieuses.', 'G21'),
(23, 'Prendre une douche bien chaude', 'Il n’existe pas vraiment d’explications scientifiques aux effets bénéfiques de l’eau chaude sur la grippe, mais une chose est bel et bien sûre : prendre une douche brûlante fait partie des meilleurs remèdes naturels contre l’influenza. L’eau chaude contribue notamment à apaiser les douleurs et les frissons. Il y a aussi la vapeur d’eau qui décongestionne efficacement les nez bouchés.', 'E12'),
(24, 'Tisane ou gargarisme de plantes: thym, plantain...', 'Ronce, aigremoine, plantain, thym, guimauve : ces plantes sont anti-inflammatoires et astringentes. Mettre 1 cuillère à soupe des plantes choisies dans 25 cl d eau froide, faire bouillir 5 min, laisser infuser hors du feu 10 min, filtrer et gargarisez-vous 3 fois par jour.', 'F15'),
(25, 'La glace, d’une grande aide pour les céphalées.', 'Insérez des glaçons dans un sac. Celui-ci doit pouvoir se refermer complètement, pour empêcher l’eau de s’écouler.\nEnvelopper ensuite ce sac dans un torchon propre et placez-le sur l’endroit où se situe la douleur.', 'A23'),
(26, 'Miel', 'Le miel est utilisé depuis l antiquité pour soigner toutes sortes d infections,  remède délicieux et efficace.', 'B23'),
(27, ' Le bouillon d’épluchures de pommes de terre', ' Le bouillon d’épluchures de pommes de terre est riche en vitamines et en minéraux.\nCela permettra au corps d’utiliser ses forces pour combattre la fièvre puisqu’il n’aura pas à fournir de grands efforts pour soutenir le processus digestif.', '23C'),
(28, 'Le jus d’avoine', 'Le jus d’avoine aide à lutter contre la fatigue chronique, Les flocons d’avoine contiennent des hydrates de carbone, un nutriment important pour combattre la fatigue. L’avoine apporte de l’énergie au corps.\nNous vous conseillons d’ajouter des fruits dans vos préparations à base d’avoine pour un goût encore plus délicieux.', 'Z34'),
(29, 'Infusion de camomille', 'Selon une étude de l’Université des Sciences médicales de Camagüey, la camomille a des propriétés anti-inflammatoires et antiseptiques qui aident à soulager les symptômes de cette affection. Bien qu’il soit généralement recommandé de boire une infusion de camomille, il est également possible d’en ingérer par la suite.', 'P98'),
(51, ' Les clous de girofle et le thé noir', 'Préparez-vous un thé noir fort et ajoutez-y quelques clous de girofle que vous aurez préalablement écrasés. La théine va diminuer votre pression sanguine tandis que les clous de girofle apporteront leurs vertus anti-inflammatoires, permettant au mal de tête de s’estomper rapidement.', 'JO09'),
(52, 'L ortie ', 'Vous avez le nez qui coule à force d éternuer ? L ortie est le remède idéal que les grands-mères utilisent contre l écoulement nasal. Il vous suffit de verser deux cuillères à café d ortie dans 150 ml d eau chaude et de laisser infuser durant une dizaine de minutes.', 'X65'),
(53, 'Le lait ', 'le lait peut se révéler être bon pour votre estomac. Il vous suffit d’avoir un morceau de pain grillé sous la main. Trempez le pain dans du lait chaud et mangez-le lentement pour soulager les vomissements.', 'F56'),
(54, 'mélanger une cuillère de miel dans une boisson.', 'Et voilà ! Grâce au miel, vous allez retrouver votre appétit en seulement quelques jours de traitement :-)Facile, rapide et efficace.', 'JO09'),
(55, 'huile essentielle de géranum', 'L huile essentielle de géranium est une autre huile essentielle efficace pour nettoyer les poumons et les voies respiratoires supérieures.', 'VF6'),
(56, '. Huile de ricin', 'L huile de ricin est l un des meilleurs remèdes maison contre la perte de l odorat et du goût. Elle a des propriétés anti-microbienne, anti-oxydantes et anti-inflammatoires, qui aident à garder les voies nasales claires.', 'Q09');

-- --------------------------------------------------------

--
-- Table structure for table `soigne`
--

DROP TABLE IF EXISTS `soigne`;
CREATE TABLE IF NOT EXISTS `soigne` (
  `id_symptome` int(50) NOT NULL,
  `id_remede` int(50) NOT NULL,
  `posologie` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_remede`,`id_symptome`),
  KEY `id_symptome` (`id_symptome`,`id_remede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soigne`
--

INSERT INTO `soigne` (`id_symptome`, `id_remede`, `posologie`) VALUES
(1, 21, '1 fois par jour'),
(4, 23, '2 fois par jour'),
(2, 24, '3 fois par jour'),
(5, 25, ' Appliquez par intervalles de 2 minutes, avec 30 secondes de repos, pendant 20 minutes'),
(6, 26, '1 fois par jour, le soir avant de dormir'),
(7, 27, '3 fois par jour, si fièvre et douleur'),
(8, 28, '1 fois par jour, le matin'),
(9, 29, '2 fois par jour, matin et soir '),
(10, 51, '2 fois par jour, matin et soir'),
(11, 52, 'A boire trois fois par jour '),
(12, 53, 'boire un verre de lait, si mal à l estomac'),
(13, 54, '2 fois par jour '),
(14, 55, '2 fois par jour, matin et soir '),
(15, 56, 'A faire, deux fois par jour, le matin et avant d aller au lit.');

-- --------------------------------------------------------

--
-- Table structure for table `symptomes`
--

DROP TABLE IF EXISTS `symptomes`;
CREATE TABLE IF NOT EXISTS `symptomes` (
  `id_symptome` int(50) NOT NULL,
  `nom_commun` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_symptome` varchar(900) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_symptome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptomes`
--

INSERT INTO `symptomes` (`id_symptome`, `nom_commun`, `description_symptome`) VALUES
(1, 'angine', 'L angine est une pathologie infectieuse qui correspond à une inflammation des amygdales situées dans l oropharynx, elle est également appelée amygdalite'),
(2, 'rhume', 'Le rhume se caractérise aussi par un écoulement nasal clair qui conduit à se moucher fréquemment et quelques symptômes généraux variables d’un cas à l’autre et d’une personne à l’autre : fièvre et fatigue habituellement peu élevées, mal à la tête, yeux qui pleurent et parfois une toux. Ces signes disparaissent en quelques jours'),
(3, 'diarrhee', 'La diarrhée est définie comme étant l’émission d’au moins 3 selles molles ou liquides par jour, ou à une fréquence anormale pour la personne concernée. '),
(4, 'grippe', 'La grippe (ou influenza) est une maladie infectieuse fréquente et contagieuse causée par quatre types de virus : le virus de la grippe A, le virus de la grippe B, le virus de la grippe C et le virus de la grippe D2, touchant les oiseaux et certains mammifères dont le porc, le phoque et l être humain.'),
(5, 'céphalée', 'Une céphalée, appelée familièrement mal de tête, est une douleur locale ressentie au niveau de la boîte crânienne ou parfois de la nuque. Cette douleur peut être latérale, souvent unilatérale, ou bien diffuse et généralisée. Elle se manifeste de façon très variée par des sensations d oppression ou de compression, de martèlement, enfoncement, brûlure, picotement, fourmillement, écrasement; ainsi qu une super-sensibilité au bruit et à la lumière..'),
(6, 'toux', 'La toux sèche est un motif très fréquent de consultation médicale. Il ne s’agit pas d’une maladie, mais d’un symptôme, qui est banal en soi mais peut avoir de multiples causes. La toux est un réflexe d’expiration d’air brutale et forcée, qui doit permettre de « nettoyer » les voies respiratoires.'),
(7, 'fièvre', 'Symptôme courant, la fièvre traduit une température corporelle anormalement élevée.'),
(8, 'fatigue', 'L asthénie est un terme médical souvent utilisé pour exprimer une fatigue physique. Il s agit plus précisément d une dégradation de l état général entraînant une faiblesse généralisée de l organisme. Elle se distingue de la fatigue, car c est un état d épuisement survenant sans notion d effort et ne disparaissant pas au repos.'),
(9, ' maux de gorge', 'Le mal de gorge est dû le plus souvent à une infection virale. D’autres causes peuvent expliquer l’irritation (tabagisme, remontées acides…) Le mal de gorge est dû le plus souvent à une infection virale.'),
(10, 'maux de tête ', 'Les maux de tête, en général, ne sont  pas dangereux et ils sont causés par le stress, la tension et les sinus. Toutefois, vous devez savoir lesquels sont graves et dangereux et nécessitent une attention médicale parfois urgente.'),
(11, 'écoulement nasal', 'L’écoulement nasal est le résultat d’une production excessive de mucus nasal, ce qui mène à des sécrétions nasales aqueuses qui s’écoulent par les narines ou la gorge. Si le rhume ou la grippe est souvent le grand coupable, l’écoulement nasal peut aussi être causé par les allergies'),
(12, 'vomissement', 'Le vomissement un phénomène réflexe d expulsion du contenu de l estomac. La cause peut être due à l estomac lui-même (sténose du pylore par exemple) ou bien à son contenu agressif ou ...\nLe centre qui donne l ordre du vomissement est situé dans le cerveau. C est pourquoi des affections proches du cerveau peuvent donner des vomissements (par exemple une méningite ou une migraine).\nCe centre est sensible à ce que contient le sang. Les vomissements sont par exemple l une des conséquences de l acidocétose de la maladie diabétique.'),
(13, 'perte d appétit', 'La perte d appétit est l un des symptômes habituels de la dépression, à côté de la tristesse de l humeur et de la difficulté à agir. Ce symptôme évolue avec la dépression, pouvant : devenir sévère lors d une crise de mélancolie,'),
(14, 'problèmes respiratoires', 'Les difficultés respiratoires décrivent l’inconfort ressenti lors de la respiration et l’impression de ne pas pouvoir respirer complètement. Cela peut se développer graduellement ou se manifester soudainement. Les problèmes respiratoires légers, comme la fatigue après un cours d’aérobie, n’entrent pas dans cette catégorie.'),
(15, 'perte de goût ', 'L agueusie correspond à la perte de goût partielle ou totale. La personne ne parvient plus à déterminer les saveurs de ce qu elle mange. Avec la perte d odorat, c est l un des nouveaux symptômes évoqués par les patients atteints du coronavirus. Quand s inquiéter et quels traitements pour la soigner et la retrouver ? ');

-- --------------------------------------------------------

--
-- Table structure for table `syndromes`
--

DROP TABLE IF EXISTS `syndromes`;
CREATE TABLE IF NOT EXISTS `syndromes` (
  `id_syndrome` int(50) NOT NULL,
  `nom_syndrome` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_syndrome` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `classification` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_syndrome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syndromes`
--

INSERT INTO `syndromes` (`id_syndrome`, `nom_syndrome`, `description_syndrome`, `classification`) VALUES
(31, 'mononucléosique', 'Ce syndrome survient surtout chez l adulte jeune. Il se manifeste habituellement par une fièvre et fatigue, adénopathies, angine et éruptions cutanées, et autres symptômes selon la cause.\'', 'B27'),
(32, 'grippal', 'Un syndrome grippal, ou pseudo-grippal, est un syndrome comportant l ensemble ou la majeure partie des symptômes de la grippe. Un syndrome grippal en période d épidémie de grippe est considéré comme une grippe: provoquée par un virus de la grippe, sauf arguments contraires.', 'J10'),
(33, 'en neurologie_', 'le syndrome est neurologique quand le trouble consiste en une atteinte physique du cerveau ou du cervelet objectivement d&eacute;celable par radiographie, scanner ou IRM, ou lorsqu un accident connu a touch&eacute; mat&eacute;riellement le cerveau ou le cervelet ; le syndrome est psychologique ou psychiatrique quand aucun trouble n est observable par les moyens connus et actuels de la science : il y a trouble, il y a dysfonctionnement, il y a souffrance, mais ceux-ci ne sont pas observables mat&eacute;riellement par les moyens pr&eacute;cit&eacute;s.', 'L23'),
(34, 'néphrotique', 'Le syndrome néphrotique (en anglais nephrotic syndrome), est une maladie rare au cours de laquelle, les reins perdent leur capacité à filtrer le sang, et laissent échapper des quantités importantes de protéines dans les urines.\'', 'vidal'),
(35, 'TRAPS', 'Le syndrome TRAPS est une maladie invalidante qui se manifeste par des crises fébriles récurrentes et des douleurs, à l origine d un retard de croissance, d un absentéisme scolaire et d interruptions répétées de la vie professionnelle', 'p_trap'),
(36, 'encéphalomyélite myalgique', 'L’encéphalomyélite myalgique, appelée couramment syndrome de fatigue chronique, se caractérise, entre autres, par une fatigue persistante et inexpliquée qui dure malgré les efforts de la personne atteinte. Considérée comme une maladie neurologique, elle apparaît souvent de façon soudaine, entraînant une détérioration rapide et importante de la santé. Il s’agit d’un syndrome non contagieux, non transmissible génétiquement.', 'AQDC'),
(37, 'Syndrome prémenstruel', ' Le syndrome prémenstruel est donc l’ensemble des symptômes physiques et psychiques qui surviennent dans la semaine précédant les règles', 'A01 preparation stomatologique'),
(38, 'aigu sévère', 'Le syndrome respiratoire aigu sévère est causé par un membre de la famille des coronavirus. Cette famille est la même que celle qui peut causer le rhume. Lorsqu’une personne atteinte du syndrome respiratoire tousse ou éternue, des gouttelettes, qui contiennent une charge virale, se répandent dans l’air.\', \'1 pas de rales de stase, pas de B3', 'normotendu'),
(39, 'cyclique de vomissement', 'Le syndrome des vomissements cycliques est défini par des accès de vomissements durant de quelques heures à quelques jours et séparés par ses intervalles libres de symptômes. ', 'acide cromoglicique');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
