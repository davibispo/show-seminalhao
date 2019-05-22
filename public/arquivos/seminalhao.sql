-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Maio-2019 às 16:08
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seminalhao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_03_17_225320_create_perguntas_table', 1),
(16, '2019_03_17_230019_create_respostas_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ativo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `descricao`, `tipo`, `nivel`, `status`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 'Quem foi que recebeu a maior parte das revelações de Doutrina e Convênios?', '1', '1', '0', '1', '2019-04-01 17:29:34', '2019-04-01 17:29:34'),
(2, 'O livro de Doutrina e Convênios é uma das obras-padrão da Igreja, ao lado da...', '1', '1', '0', '1', '2019-04-01 17:34:49', '2019-04-05 13:46:51'),
(3, 'Qual a data de nascimento de Joseph Smith Júnior?', '1', '3', '0', '1', '2019-04-01 17:40:55', '2019-04-01 17:40:55'),
(4, 'Qual foi o ano em que Joseph Smith Jr recebeu a visita de Deus e Jesus Cristo, evento conhecido como A Primeira Visão?', '1', '2', '0', '1', '2019-04-01 17:45:35', '2019-04-01 17:45:35'),
(5, 'Qual escritura inspirou Joseph Smith a ir ao bosque oferecer uma oração a Deus e em consequência disso receber a Primeira Visão?', '1', '2', '0', '1', '2019-04-01 17:50:36', '2019-04-01 18:01:10'),
(6, 'Por que Doutrina e Convênios é uma obra singular?', '1', '2', '0', '1', '2019-04-05 13:49:43', '2019-04-05 13:49:43'),
(7, 'Qual o local de nascimento do profeta Joseph Smith?', '1', '3', '1', '1', '2019-04-05 14:18:44', '2019-04-05 14:18:44'),
(8, 'Com qual idade Joseph Smith recebeu a primeira visão?', '1', '1', '0', '1', '2019-04-05 14:24:45', '2019-04-05 14:24:45'),
(9, 'O que Jesus Cristo disse a Joseph durante a primeira visão?', '1', '2', '0', '1', '2019-04-05 14:27:10', '2019-04-05 14:27:10'),
(10, 'Quem foram os dois primeiros homens ordenados ao Sacerdócio Aarônico, pelas mãos de João Batista, nesta dispensação?', '1', '1', '0', '1', '2019-04-05 14:31:24', '2019-04-05 14:44:35'),
(11, 'Qual foi a época em que Joseph Smith foi ordenado ao Sacerdócio Aarônico pelas mãos de João Batista?', '1', '2', '0', '1', '2019-04-05 15:04:42', '2019-04-05 15:04:42'),
(12, 'Por quem Joseph Smith foi ordenado ao Sacerdócio de Melquisedeque?', '1', '1', '0', '1', '2019-04-05 15:15:29', '2019-04-05 15:15:29'),
(13, 'Qual a data da organização de A Igreja de Jesus Cristo dos Santos dos Últimos Dias?', '1', '2', '0', '1', '2019-04-05 15:20:04', '2019-04-05 15:20:04'),
(14, 'Qual foi o nome dado ao livro que continha muitas das primeiras revelações do Profeta?', '1', '2', '0', '1', '2019-04-05 22:16:21', '2019-04-05 22:16:21'),
(15, 'Qual seção de D&C constitui o prefácio do Senhor às doutrinas, aos convênios e aos mandamentos dados nesta dispensação?', '1', '1', '0', '1', '2019-04-06 12:32:38', '2019-04-06 12:32:38'),
(16, 'Quem forma a Primeira Presidência da Igreja atualmente?', '1', '1', '0', '1', '2019-04-08 03:02:33', '2019-04-08 03:02:33'),
(17, 'Qual nome do brasileiro que é membro do Quórum dos Doze Apóstolos?', '1', '1', '0', '1', '2019-04-08 03:10:09', '2019-04-08 03:18:18'),
(18, 'Qual a seção de D&C foi dada ao pai de Joseph Smith e serve de inspiração para os missionários atualmente?', '1', '1', '0', '1', '2019-04-08 03:28:41', '2019-04-08 03:28:41'),
(19, 'Qual seção de D&C manifesta a vontade do Senhor a Emma Smith, mulher do Profeta?', '1', '3', '0', '1', '2019-04-08 03:32:28', '2019-04-08 03:32:28'),
(20, 'Quem perdeu as páginas do manuscrito traduzido da primeira parte do Livro de Mórmon?', '1', '1', '0', '1', '2019-04-08 03:38:19', '2019-04-08 03:38:19'),
(21, 'Quem foi o principal escrevente da tradução do Livro de Mórmon?', '1', '1', '0', '1', '2019-04-08 03:41:36', '2019-04-08 03:41:36'),
(22, 'Quem desejou receber o dom da tradução e até tentou traduzir o Livro de Mórmon, mas não conseguiu?', '1', '2', '0', '1', '2019-04-08 03:46:50', '2019-04-08 03:46:50'),
(23, 'Quantas páginas do manuscrito da primeira parte do Livro de Mórmon foram perdidas?', '1', '1', '0', '1', '2019-04-08 03:48:48', '2019-04-16 18:05:45'),
(24, 'D&C 20:72-74 descreve qual ordenança?', '1', '2', '0', '1', '2019-04-08 04:25:41', '2019-04-08 04:25:41'),
(25, 'D&C 20:76-79 descreve qual ordenança?', '1', '2', '0', '1', '2019-04-08 04:28:50', '2019-04-08 04:28:50'),
(26, 'Em qual local aconteceu a organização da Igreja de Jesus Cristo dos Santos dos Últimos Dias?', '1', '3', '0', '1', '2019-04-08 04:32:25', '2019-04-08 04:32:25'),
(27, 'Quem foi a primeira presidente da Sociedade de Socorro da Igreja?', '1', '1', '1', '1', '2019-04-08 04:45:48', '2019-04-08 04:45:48'),
(28, 'Como você definiria a palavra DOUTRINA?', '1', '1', '0', '1', '2019-04-09 01:21:21', '2019-04-09 01:21:21'),
(29, 'O que é um CONVÊNIO?', '1', '1', '0', '1', '2019-04-09 01:26:59', '2019-04-09 01:26:59'),
(30, 'Quem foi a primeira pessoa que Joseph Smith conversou depois de ter a primeira visão?', '1', '1', '0', '1', '2019-04-09 14:07:11', '2019-04-09 14:07:11'),
(31, 'Em qual lugar Joseph Smith se ajoelhou para fazer sua primeira oração em voz alta?', '1', '1', '0', '1', '2019-04-09 14:14:12', '2019-04-09 14:14:12'),
(32, 'Quantos anos Joseph Smith tinha quando sua família se mudou para Palmyra?', '1', '2', '0', '1', '2019-04-09 14:25:26', '2019-04-09 14:25:26'),
(33, 'No decorrer do segundo ano após a mudança da família de Joseph para Manchester, que tipo de alvoroço aconteceu?', '1', '1', '0', '1', '2019-04-09 14:28:34', '2019-04-09 14:28:34'),
(34, 'Na época em que Joseph tinha 14 anos, quatro membros de sua família fora convertida à qual tipo de fé?', '1', '2', '0', '1', '2019-04-09 14:38:02', '2019-04-09 14:38:02'),
(35, 'Após a mudança para Manchester, quantos membros tinham na família de Joseph?', '1', '3', '0', '1', '2019-04-09 14:44:21', '2019-04-09 14:44:21'),
(36, 'Qual o nome da mãe de Joseph Smith?', '1', '1', '0', '1', '2019-04-09 14:46:12', '2019-04-09 14:46:12'),
(37, 'Quando Joseph leu Tiago 1:5: \"E, se algum de vós tem falta de sabedoria, peça-a a Deus, que a todos dá liberalmente, e o não lança em rosto, e ser-lhe-á dada.\". Qual era a dúvida dele?', '1', '1', '0', '1', '2019-04-09 15:18:19', '2019-04-09 15:18:19'),
(38, 'Em qual estação do ano aconteceu a primeira visão?', '1', '1', '0', '1', '2019-04-09 15:21:45', '2019-04-09 15:21:45'),
(39, 'O que aconteceu quando Joseph Smith começou a realizar a oração pela primeira vez em voz alta?', '1', '1', '0', '1', '2019-04-09 15:28:31', '2019-04-09 15:28:31'),
(40, 'Quais foram as primeiras palavras que o Pai Celestial falou para Joseph durante a primeira visão?', '1', '1', '0', '1', '2019-04-09 15:40:39', '2019-04-09 15:40:39'),
(41, 'Ao chegar em casa depois da primeira visão, o que Joseph disse que aprendeu?', '1', '2', '0', '1', '2019-04-09 15:45:21', '2019-04-09 15:45:21'),
(42, 'Qual foi a data que Joseph recebeu a visita do mensageiro Morôni pela primeira vez?', '1', '3', '0', '1', '2019-04-09 15:56:14', '2019-04-09 15:56:14'),
(43, 'Qual era a cor da túnica que o mensageiro Morôni usava quando apareceu para Joseph?', '1', '1', '0', '1', '2019-04-09 16:02:27', '2019-04-09 16:02:27'),
(44, 'Qual o nome do monte que estavam enterradas as placas de ouro?', '1', '1', '0', '1', '2019-04-09 16:08:33', '2019-04-09 16:08:33'),
(45, 'Joseph ouviu de Morôni que Deus tinha uma obra a ser executada por ele; e que o nome dele seria...', '1', '2', '0', '1', '2019-04-09 16:26:02', '2019-04-15 16:40:12'),
(46, 'O que eram as \"duas pedras em aros de prata — e essas pedras, presas a um peitoral\" descritas por Morôni?', '1', '1', '0', '1', '2019-04-09 16:49:15', '2019-04-09 16:49:15'),
(47, 'Em qual seção de D&C o Senhor diz: \"o canto dos justos é uma prece a mim e será respondido com uma bênção sobre sua cabeça\" ?', '1', '2', '0', '1', '2019-04-09 18:43:33', '2019-04-09 18:45:03'),
(48, 'Hiram Page foi um membro da Igreja que não entendia a ordem de revelação, ele dizia receber revelações para a Igreja por meio de que?', '1', '1', '0', '1', '2019-04-09 18:53:21', '2019-04-09 18:53:21'),
(49, 'A Trindade constitui-se de três personagens distintos, são eles:', '1', '1', '0', '1', '2019-04-09 21:47:27', '2019-04-09 21:47:27'),
(50, 'Quem é a figura central no plano do Pai Celestial?', '1', '1', '0', '1', '2019-04-09 21:56:58', '2019-04-09 21:56:58'),
(51, 'As escrituras chamam o plano do Pai Celestial de plano de salvação, o grande plano de felicidade, o plano de redenção e o plano de misericórdia. Esse plano inclui:', '1', '2', '0', '1', '2019-04-09 22:02:51', '2019-04-09 22:02:51'),
(52, 'Quais são os três reinos de glória?', '1', '1', '0', '1', '2019-04-09 22:10:19', '2019-04-09 22:37:11'),
(53, 'Quem foi o primeiro homem criado na Terra?', '1', '1', '0', '1', '2019-04-09 22:49:01', '2019-04-09 22:49:01'),
(54, 'Um destes não faz parte dos três princípios que podem nos orientar ao buscarmos conhecer e entender a verdade eterna, responder perguntas ou resolver problemas:', '1', '2', '0', '1', '2019-04-09 22:57:54', '2019-04-09 23:01:30'),
(55, 'De acordo com D&C 29:2, Jesus Cristo nos reunirá quando...', '1', '2', '0', '1', '2019-04-10 22:12:47', '2019-04-10 22:12:47'),
(56, 'De acordo com D&C 29:14-16, quais são os sinais que acontecerão antes da Segunda Vinda de Jesus Cristo?', '1', '3', '0', '1', '2019-04-10 22:23:09', '2019-04-10 22:23:09'),
(57, 'O que significa a Morte Física?', '1', '1', '0', '1', '2019-04-16 14:05:09', '2019-04-16 14:05:09'),
(58, 'O que significa Morte Espiritual?', '1', '1', '0', '1', '2019-04-16 14:10:17', '2019-04-16 14:10:17'),
(59, 'De acordo com D&C 20, o batismo deve ser realizado de que forma:', '1', '1', '0', '1', '2019-04-16 14:19:29', '2019-04-16 14:19:29'),
(60, 'De acordo com Joseph Smith - História 1:52 o que ele viu após abrir a caixa de pedra?', '1', '2', '0', '1', '2019-04-16 14:28:22', '2019-04-16 14:28:22'),
(61, 'De acordo com Joseph Smith - História, qual foi o dia do casamento de Joseph com Emma Hale?', '1', '3', '0', '1', '2019-04-16 14:34:23', '2019-04-16 14:37:21'),
(62, 'Qual a simbologia dos emblemas do sacramento?', '1', '1', '0', '1', '2019-04-16 14:53:32', '2019-04-16 14:53:32'),
(63, 'De acordo com D&C 20:37, \"aqueles que são batizados fazem convênio com Deus de...\"', '1', '1', '0', '1', '2019-04-16 15:00:48', '2019-04-16 15:00:48'),
(64, 'Quais são os primeiros princípios e ordenanças do evangelho?', '1', '1', '0', '1', '2019-04-16 15:54:43', '2019-04-16 15:54:43'),
(65, 'Qual a profissão do Presidente Russell. M. Nelson?', '1', '1', '0', '1', '2019-04-16 16:25:57', '2019-04-16 16:25:57'),
(66, 'O que é Revelação Pessoal?', '1', '2', '1', '1', '2019-04-16 16:46:28', '2019-04-16 16:51:30'),
(67, 'Qual foi o primeiro Templo construído nesta dispensação?', '1', '1', '0', '1', '2019-04-16 18:01:07', '2019-04-16 18:01:07'),
(68, 'Complete a escritura de domínio doutrinário D&C 1:37: \"Examinai estes mandamentos, porque são verdadeiros e fiéis; e as profecias e as promessas neles contidas _____________________.\"', '1', '2', '0', '1', '2019-04-16 18:18:17', '2019-04-16 18:18:17'),
(69, 'A escritura de domínio doutrinário D&C 6:36 está escrito:', '1', '2', '0', '1', '2019-04-16 18:33:21', '2019-04-16 18:33:21'),
(70, 'O livro de Doutrina e Convênios possui quantas Seções?', '1', '1', '0', '1', '2019-04-16 18:38:39', '2019-04-16 18:38:39'),
(72, 'Qual o título e sub-título do Livro de Mórmon?', '2', '1', '0', '1', '2019-04-24 18:23:15', '2019-04-24 18:23:15'),
(73, 'De que forma João Batista foi morto?', '3', '1', '0', '1', '2019-04-24 18:27:47', '2019-04-24 18:29:08'),
(74, 'Qual foi o primeiro milagre realizado por Jesus Cristo?', '3', '1', '0', '1', '2019-04-24 18:31:33', '2019-04-24 18:31:33'),
(75, 'Quantas pessoas se salvaram do dilúvio na Arca de Noé?', '4', '1', '0', '1', '2019-04-24 18:38:38', '2019-04-24 18:38:38'),
(76, 'Quantos títulos da Copa do Mundo possui a Seleção Brasileira de Futebol?', '5', '1', '0', '1', '2019-04-24 18:41:19', '2019-04-24 18:41:19'),
(77, 'O Arrependimento é um princípio essencial para recebermos o perdão por meio da Expiação de Cristo. Qual a ordem descrita dos elementos ou passos do arrependimento?', '1', '2', '0', '1', '2019-04-26 16:14:48', '2019-04-26 16:24:04'),
(78, 'Qual livro será estudado no Seminário no 2º semestre de 2019?', '1', '1', '0', '1', '2019-04-30 17:48:00', '2019-04-30 17:48:00'),
(79, 'Em qual escritura de D&C o Senhor explica que para nos arrependermos, precisamos confessar e abandonar os pecados?', '1', '2', '0', '1', '2019-04-30 17:53:16', '2019-04-30 17:53:16'),
(80, 'Em qual escritura de D&C aprendemos que Senhor está obrigado quando fazemos o que Ele diz?', '1', '2', '0', '1', '2019-04-30 17:58:00', '2019-04-30 17:59:12'),
(81, 'Qual verdade encontramos em D&C 1:30?', '1', '2', '0', '1', '2019-05-02 13:06:13', '2019-05-02 13:06:13'),
(82, 'Qual verdade encontramos em D&C 6:36?', '1', '2', '0', '1', '2019-05-02 13:14:04', '2019-05-02 13:14:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

CREATE TABLE `respostas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resposta1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resposta2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resposta3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resposta4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correta` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pergunta` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `respostas`
--

INSERT INTO `respostas` (`id`, `resposta1`, `resposta2`, `resposta3`, `resposta4`, `correta`, `id_pergunta`, `created_at`, `updated_at`) VALUES
(1, 'Oliver Cowdery', 'Joseph F. Smith', 'Joseph Smith Jr', 'Hiram Page', '3', 1, '2019-04-01 17:32:25', '2019-04-01 17:32:25'),
(2, 'Bíblia, Livro de Mórmon e A Liahona.', 'Bíblia, Livro de Mórmon e Regras de Fé.', 'Bíblia, Livro de Mórmon e GEE.', 'Bíblia, Livro de Mórmon e Pérola de Grande Valor', '4', 2, '2019-04-01 17:39:02', '2019-04-05 13:48:05'),
(3, '23 de dezembro de 1805', '21 de setembro de 1805', '06 de abril de 1804', '11 de julho de 1806', '1', 3, '2019-04-01 17:43:14', '2019-04-01 17:43:14'),
(4, '1805', '1820', '1830', '1995', '2', 4, '2019-04-01 17:46:20', '2019-04-01 17:46:20'),
(5, 'João 3:5', 'I Timóteo 5:1', 'Tiago 1:5', 'Amós 3:7', '3', 5, '2019-04-01 17:53:00', '2019-04-01 17:53:00'),
(6, 'Por ser uma escritura sagrada.', 'Por ter sido escrita por profetas.', 'Por não ser a tradução de um documento antigo, mas ter origem moderna.', 'Por ser uma compilação de revelações.', '3', 6, '2019-04-05 13:54:28', '2019-04-05 13:54:28'),
(7, 'Sharon, Vermont.', 'Manchester, Nova York.', 'Condado de Jackson, Missouri.', 'Salt Lake City, Utah.', '1', 7, '2019-04-05 14:23:43', '2019-04-09 14:18:55'),
(8, '16 anos', '15 anos', '14 anos', '13 anos', '3', 8, '2019-04-05 14:25:10', '2019-04-05 22:07:24'),
(9, 'Que a verdadeira Igreja de Jesus Cristo, que fora estabelecida na época do Velho Testamento e administrara a plenitude do evangelho, já não existia na Terra.', 'Que a verdadeira Igreja de Jesus Cristo, que fora estabelecida na época do Novo Testamento e administrara a plenitude do evangelho, já não existia na Terra.', 'Que a verdadeira Igreja de Jesus Cristo, que fora estabelecida na época do Novo Testamento e administrara a plenitude do evangelho, já existia na Terra.', 'Que a verdadeira Igreja de Jesus Cristo, que fora estabelecida na época do Novo Testamento e administrara a base do evangelho, já não existia na Terra.', '2', 9, '2019-04-05 14:29:22', '2019-04-05 14:29:22'),
(10, 'Joseph Smith e Martin Harris.', 'Joseph Smith e David Whitmer.', 'Joseph Smith e Sidney Rigdon.', 'Joseph Smith e Oliver Cowdery.', '4', 10, '2019-04-05 14:33:51', '2019-04-05 14:33:51'),
(11, 'abril de 1830', 'maio de 1829', 'junho de 1820', 'setembro de 1823', '2', 11, '2019-04-05 15:10:02', '2019-04-05 15:10:02'),
(12, 'Elias, Moisés e Aarão.', 'João Batista', 'Pedro, Tiago e João.', 'Morôni', '3', 12, '2019-04-05 15:17:36', '2019-04-05 15:17:36'),
(13, '06 de abril de 1830', '23 de maio de 1829', '01 de abril de 1990', '07de julho de 1820', '1', 13, '2019-04-05 15:22:05', '2019-04-05 15:22:05'),
(14, 'Um Livro de Doutrinas e Mandamentos', 'Um Livro de Mandamentos da Igreja de Cristo', 'Um Livro de Escrituras Modernas', 'Um Livro de Revelações da Igreja', '2', 14, '2019-04-05 22:20:33', '2019-04-05 22:23:20'),
(15, 'Seção 3', 'Seção 2', 'Seção 1', 'Introdução', '3', 15, '2019-04-06 12:34:02', '2019-04-06 12:34:02'),
(16, 'Russell M. Nelson, Henry B. Eyring e Dieter F. Uchtdorf', 'Russell M. Nelson, Dallin H. Oaks e Jeffrey R. Holland', 'M. Russell Ballard, Dallin H. Oaks e Henry B. Eyring', 'Russell M. Nelson, Dallin H. Oaks e Henry B. Eyring', '4', 16, '2019-04-08 03:08:29', '2019-04-08 03:08:29'),
(17, 'Ulisses Soares', 'Cláudio M. Costa', 'Marcos A. Aidukaitis', 'Carlos A. Godoy', '1', 17, '2019-04-08 03:17:08', '2019-04-08 03:17:08'),
(18, 'Seção 123', 'Seção 89', 'Seção 4', 'Seção 1', '3', 18, '2019-04-08 03:30:51', '2019-04-08 03:30:51'),
(19, 'Seção 5', 'Seção 15', 'Seção 25', 'Seção 45', '3', 19, '2019-04-08 03:33:12', '2019-04-08 03:33:12'),
(20, 'Martin Harris', 'Oliver Cowdery', 'David Whitmer', 'Emma Smith', '1', 20, '2019-04-08 03:39:39', '2019-04-08 03:39:39'),
(21, 'Emma Smith', 'Oliver Cowdery', 'Joseph Smith', 'Brigham Young', '2', 21, '2019-04-08 03:44:06', '2019-04-08 03:44:06'),
(22, 'Samuel H. Smith', 'Martin Harris', 'Oliver Cowdery', 'Hiram Page', '3', 22, '2019-04-08 03:47:40', '2019-04-08 03:47:40'),
(23, '16 páginas', '96 páginas', '106 páginas', '116 páginas', '4', 23, '2019-04-08 03:49:32', '2019-04-08 03:49:32'),
(24, 'Sacramento', 'Batismo', 'Confirmação', 'Selamento', '2', 24, '2019-04-08 04:26:48', '2019-04-08 04:26:48'),
(25, 'Batismo', 'Confirmação', 'Sacramento', 'Selamento', '3', 25, '2019-04-08 04:30:07', '2019-04-08 04:30:07'),
(26, 'Na residência de Martin Harris', 'Na Cadeia de Carthage', 'No Templo de Kirtland', 'Na residência de Peter Whitmer Sênior', '4', 26, '2019-04-08 04:35:54', '2019-04-08 04:35:54'),
(27, 'Emma Smith', 'Lucy Mack Smith', 'Marjorie Hinckley', 'Jean B. Bingham', '1', 27, '2019-04-08 04:50:14', '2019-04-08 04:50:14'),
(28, 'Um acordo sagrado entre Deus e Seus filhos.', 'Uma verdade essencial e eterna do evangelho de Jesus Cristo.', 'A comunicação de Deus com Seus filhos.', 'Um conjunto de regras e mandamentos.', '2', 28, '2019-04-09 01:26:07', '2019-04-09 01:26:07'),
(29, 'É a comunicação de Deus com Seus filhos.', 'É uma verdade essencial e eterna do evangelho de Jesus Cristo.', 'É um acordo sagrado entre Deus e Seus filhos.', 'É a autoridade de Deus dada ao homem na Terra.', '3', 29, '2019-04-09 01:39:59', '2019-04-09 01:39:59'),
(30, 'Seu pai', 'Seu irmão', 'Sua mãe', 'Um pastor evangélico', '3', 30, '2019-04-09 14:08:04', '2019-04-09 14:08:04'),
(31, 'Em seu quarto', 'Numa igreja', 'Numa mata', 'Num bosque', '4', 31, '2019-04-09 14:16:38', '2019-04-09 14:16:38'),
(32, 'Mais ou menos 10 anos', '14 anos', 'Mais ou menos 12 anos', '16 anos', '1', 32, '2019-04-09 14:26:33', '2019-04-09 14:26:33'),
(33, 'um alvoroço de feira artesanal.', 'um alvoroço religioso.', 'um alvoroço sobre a guerra.', 'um alvoroço sobre política.', '2', 33, '2019-04-09 14:30:34', '2019-04-09 14:30:34'),
(34, 'Metodista', 'Batista', 'Presbiteriana', 'Católica', '3', 34, '2019-04-09 14:40:54', '2019-04-09 15:08:33'),
(35, '08 pessoas', '09 pessoas', '10 pessoas', '11 pessoas', '4', 35, '2019-04-09 14:45:11', '2019-04-09 14:45:11'),
(36, 'Lucy', 'Sophronia', 'Emma', 'Mary', '1', 36, '2019-04-09 14:47:30', '2019-04-09 14:47:30'),
(37, 'Com qual idade deveria namorar.', 'Qual das seitas estava certa para se filiar.', 'Se deveria estudar ou trabalhar.', 'Se o Livro de Mórmon era verdadeiro.', '2', 37, '2019-04-09 15:20:31', '2019-04-09 15:43:26'),
(38, 'Verão', 'Outono', 'Primavera', 'Inverno', '3', 38, '2019-04-09 15:25:44', '2019-04-09 15:25:44'),
(39, 'Ele adormeceu.', 'Ele não conseguiu, desistiu e foi embora.', 'Ele foi interrompido e decidiu tentar em outro momento.', 'Uma poderosa força travou a língua dele, mas ele continuou orando.', '4', 39, '2019-04-09 15:34:49', '2019-04-09 15:34:49'),
(40, 'Joseph, Este é Meu Filho Amado. Ouve-O!', 'Joseph, Este é Meu Filho Amado. Vê!', 'Joseph, Este é Meu Filho Amado. Escuta-O!', 'Joseph, Este é Meu Filho. Ouve-O!', '1', 40, '2019-04-09 15:41:58', '2019-04-09 15:41:58'),
(41, 'Aprendi por mim mesmo que o catolicismo é verdadeiro.', 'Aprendi por mim mesmo que o presbiterianismo não é verdadeiro', 'Aprendi por mim mesmo que o catolicismo não é verdadeiro.', 'Aprendi por mim mesmo que Deus é verdadeiro.', '2', 41, '2019-04-09 15:49:30', '2019-04-09 15:49:30'),
(42, '19 de maio de 1829', '20 de julho de 1821', '21 de setembro de 1823', '22 de novembro de 1824', '3', 42, '2019-04-09 15:59:37', '2019-04-09 15:59:37'),
(43, 'Vermelha', 'Marrom', 'Verde', 'Branca', '4', 43, '2019-04-09 16:03:00', '2019-04-09 16:03:00'),
(44, 'Monte Cumora', 'Monte Sinai', 'Monte Moriah', 'Monte das Oliveiras', '1', 44, '2019-04-09 16:09:16', '2019-04-09 16:09:16'),
(45, 'considerado bom entre todas as nações, tribos e línguas, ou que entre todos os povos se falaria bem e mal.', 'considerado bom e mau entre todas as nações, tribos e línguas, ou que entre todos os povos se falaria bem e mal.', 'considerado bom e mau entre todas as nações, tribos e línguas, ou que entre todos os povos só se falaria bem.', 'considerado mau entre todas as nações, tribos e línguas, ou que entre todos os povos só se falaria mal.', '2', 45, '2019-04-09 16:29:26', '2019-04-09 16:29:26'),
(46, 'Um óculos', 'Um escudo', 'Urim e Tumim', 'Uma Bicicleta', '3', 46, '2019-04-09 16:51:07', '2019-04-09 17:02:07'),
(47, 'Seção 25', 'Seção 4', 'Seção 20', 'Seção 89', '1', 47, '2019-04-09 18:44:25', '2019-04-09 18:44:25'),
(48, 'Um espelho', 'Uma pedra', 'Um óculos', 'Um véu', '2', 48, '2019-04-09 18:54:52', '2019-04-09 18:54:52'),
(49, 'Deus, Jesus Cristo e o Profeta.', 'Pedro, Tiago e João.', 'Deus, Jesus Cristo e o Espírito Santo.', 'Profeta, Primeiro Conselheiro e Segundo Conselheiro.', '3', 49, '2019-04-09 21:50:11', '2019-04-09 21:50:11'),
(50, 'Jesus Cristo', 'Espírito Santo', 'Joseph Smith', 'João Batista', '1', 50, '2019-04-09 21:58:36', '2019-04-09 21:58:36'),
(51, 'a Criação, a Queda, a Expiação de Jesus Cristo e o Batismo e Confirmação.', 'a Criação, a Queda, a Expiação de Jesus Cristo e o Casamento Eterno.', 'a Criação, a Queda, a Expiação de Jesus Cristo e o Sacerdócio de Melquisedeque.', 'a Criação, a Queda, a Expiação de Jesus Cristo e todas as leis, ordenanças e doutrina do evangelho.', '4', 51, '2019-04-09 22:08:13', '2019-04-09 22:08:13'),
(52, 'Celestial, Lual e Estrelal', 'Celestial, Terrestrial e Telestial.', 'Celestial, Espiritual e Terrestrial', 'Celestial, Telestial e Tridimensional.', '2', 52, '2019-04-09 22:46:06', '2019-04-09 22:46:06'),
(53, 'Noé', 'Moisés', 'Adão', 'Abel', '3', 53, '2019-04-09 22:51:04', '2019-04-09 22:51:04'),
(54, 'Agir com fé.', 'Examinar conceitos e perguntas com uma perspectiva eterna.', 'Buscar mais entendimento por meio de fontes divinamente atribuídas.', 'Orar e aguardar uma resposta.', '4', 54, '2019-04-09 23:01:21', '2019-04-09 23:01:21'),
(55, 'atendermos Sua voz, humilharmo-nos e O invocarmos em oração.', 'formos selados com nossa família para o tempo e toda eternidade.', 'recebermos todas as ordenanças de salvação.', 'jejuarmos e orarmos fervorosamente.', '2', 55, '2019-04-10 22:17:14', '2019-04-10 22:17:14'),
(56, 'o sol escurecerá, a lua tornar-se-á em sangue, as estrelas cairão do céu, haverá choro e gemidos e um grande redemoinho.', 'o sol escurecerá, a lua tornar-se-á em sangue, as estrelas cairão do céu, haverá choro e gemidos e uma grande chuva de pedras.', 'o sol tornar-se-á em sangue, a lua escurecerá, as estrelas cairão do céu, haverá alegria e regozijo e uma grande chuva de pedras.', 'o sol escurecerá, a lua tornar-se-á em sangue, as estrelas cairão do céu, haverá choro e gemidos e um grande rio de sangue.', '2', 56, '2019-04-10 22:33:01', '2019-04-10 22:33:01'),
(57, 'Um sono profundo.', 'Separação da presença de Deus.', 'Separação entre o espírito e o corpo.', 'Sepultamento do corpo físico.', '3', 57, '2019-04-16 14:09:58', '2019-04-16 14:09:58'),
(58, 'Morte do espírito.', 'Separação entre o espírito e o corpo.', 'Queda', 'Separação da presença de Deus.', '4', 58, '2019-04-16 14:13:04', '2019-04-16 14:13:04'),
(59, 'Aspersão', 'Imersão', 'Afusão', 'Efusão', '2', 59, '2019-04-16 14:21:55', '2019-04-16 14:21:55'),
(60, 'As placas de ouro, o Urim e Tumim e o peitoral.', 'As placas de ouro, o Urim e Tumim e uma espada.', 'As placas de ouro, uma esfera de latão e o peitoral.', 'As placas de ouro, o Urim e Tumim e uma esfera de latão.', '1', 60, '2019-04-16 14:30:40', '2019-04-16 14:30:40'),
(61, '14 de abril de 1823', '18 de janeiro de 1827', '19 de fevereiro de 1829', '15 de maio de 1830', '2', 61, '2019-04-16 14:36:27', '2019-04-16 14:36:27'),
(62, 'O pão é a carne e a água é o vinho.', 'O pão é o corpo de Cristo e a água é a fonte de vida eterna.', 'O pão é o carne do cordeiro e a água é o sangue.', 'O pão é o corpo de Cristo e a água o Seu sangue.', '4', 62, '2019-04-16 14:57:38', '2019-04-16 14:57:38'),
(63, 'tomar sobre si o nome de Jesus Cristo, guardar Seus mandamentos e servi-Lo até o fim.', 'tomar sobre si o nome de Jesus Cristo, guardar Seus mandamentos e realizar o trabalho vicário.', 'tomar sobre si o nome de Jesus Cristo, guardar os  10 mandamentos e servir uma missão.', 'tomar sobre si o nome de Jesus Cristo, guardar Seus mandamentos e casar no Templo.', '1', 63, '2019-04-16 15:05:10', '2019-04-16 15:05:10'),
(64, 'Fé, Perdão, Batismo e Dom do Espirito Santo.', 'Batismo, Arrependimento, Espirito Santo e Fé.', 'Fé, Arrependimento, Batismo por imersão, Imposição para o Dom do Espírito Santo.', 'Fé em Jesus Cristo, Arrependimento, Batismo por imersão, imposição de mãos para o Dom do Espírito Santo.', '4', 64, '2019-04-16 16:16:12', '2019-04-16 16:16:12'),
(65, 'Piloto de Avião', 'Cirurgião', 'Juiz', 'Administrador', '2', 65, '2019-04-16 16:27:55', '2019-04-16 16:27:55'),
(66, 'É quando recebemos orientação de Deus para a Igreja.', 'É quando nos comunicamos com Deus.', 'É quando Deus revela Sua vontade para o povo.', 'É quando recebemos orientação de Deus para nossa vida.', '4', 66, '2019-04-16 16:49:58', '2019-04-16 16:49:58'),
(67, 'Kirtland', 'Nauvoo', 'Salt Lake City', 'Roma', '1', 67, '2019-04-16 18:03:28', '2019-04-16 18:03:28'),
(68, 'estarão todas cumpridas', 'serão todas cumpridas', 'poderão ser todas cumpridas', 'serão a maioria cumprida', '2', 68, '2019-04-16 18:20:57', '2019-04-16 18:20:57'),
(69, 'Buscai-me em seus pensamento; não duvideis, não temais.', 'Buscai-me em cada pensamento; não duvideis, não temeis.', 'Buscai-me em cada pensamento; não duvideis, não temais.', 'Buscai-me nos seus pensamento; não duvideis, não temais.', '3', 69, '2019-04-16 18:35:03', '2019-04-16 18:35:03'),
(70, '148', '118', '128', '138', '4', 70, '2019-04-16 18:39:53', '2019-04-16 18:39:53'),
(71, 'faldfkj', 'akdjflak', 'lkjld lak jdfka', 'lak alkjdflak lkajd lf', '1', 71, '2019-04-22 17:43:24', '2019-04-22 17:43:24'),
(72, 'Livro de Mórmon - Um Outro Testamento de Cristo', 'O Livro de Mórmon - Outro Testemunho de Jesus Cristo', 'Livro de Mórmon - Outro Testamento de Jesus Cristo', 'O Livro de Mórmon - Outro Testamento de Jesus Cristo', '4', 72, '2019-04-24 18:26:15', '2019-04-24 18:26:15'),
(73, 'Decapitado', 'Crucificado', 'Enforcado', 'Queimado', '1', 73, '2019-04-24 18:28:52', '2019-04-24 18:28:52'),
(74, 'Multiplicação dos pães', 'Transformar água em vinho', 'Cura de um cego', 'Transformar pedra em pão', '2', 74, '2019-04-24 18:33:19', '2019-04-24 18:33:19'),
(75, '10 pessoas', '9 pessoas', '8 pessoas', '7 pessoas', '3', 75, '2019-04-24 18:39:32', '2019-04-24 18:39:32'),
(76, '3', '4', '5', '6', '3', 76, '2019-04-24 18:41:46', '2019-04-24 18:41:46'),
(77, 'Reconhecer o pecado, confessar, sentir remorso, abandonar, buscar reparar o mal praticado e viver uma vida de obediência.', 'Reconhecer o pecado, sentir remorso, confessar, abandonar, buscar reparar o mal praticado e viver uma vida de obediência.', 'Reconhecer o pecado, sentir remorso, confessar, buscar reparar o mal praticado, abandonar e viver uma vida de obediência.', 'Sentir remorso, reconhecer o pecado, confessar, abandonar, buscar reparar o mal praticado e viver uma vida de obediência.', '2', 77, '2019-04-26 16:23:00', '2019-04-26 16:23:00'),
(78, 'Doutrina e Convênios', 'Livro de Mórmon', 'Novo Testamento', 'Velho Testamento', '3', 78, '2019-04-30 17:49:11', '2019-04-30 17:49:11'),
(79, 'D&C 19:16-19', 'D&C 58:42–43', 'D&C 6:36', 'D&C 82:10', '2', 79, '2019-04-30 17:55:24', '2019-04-30 17:55:24'),
(80, 'D&C 42:11', 'D&C 13:1', 'D&C 82:10', 'D&C 84:20–22', '3', 80, '2019-04-30 17:59:00', '2019-04-30 17:59:00'),
(81, 'A única igreja verdadeira e viva.', 'O Espírito Santo fala à nossa mente e ao nosso coração', 'O valor das almas é grande', 'Cristo virá novamente com poder e glória.', '1', 81, '2019-05-02 13:07:30', '2019-05-02 13:07:30'),
(82, 'A alegria de trazer almas a Jesus Cristo.', 'Buscar a Cristo em cada pensamento.', 'Os representantes do Senhor devem ser chamados por alguém que tenha autoridade.', 'É-nos exigido que perdoemos a todas as pessoas.', '2', 82, '2019-05-02 13:15:40', '2019-05-02 13:15:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ala` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pergunta_tipo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pontuacao` int(11) DEFAULT '0',
  `pulos` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  `ajudas` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `respostas`
--
ALTER TABLE `respostas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
