/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP DATABASE IF EXISTS `ilp20192tn`;
CREATE DATABASE IF NOT EXISTS `ilp20192tn` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ilp20192tn`;

DROP TABLE IF EXISTS `agencias`;
CREATE TABLE IF NOT EXISTS `agencias` (
  `fkbanco` char(3) NOT NULL COMMENT 'Parte da PK (composta), FK indicando o banco da agência bancária.',
  `pkagencia` char(4) NOT NULL COMMENT 'Número da conta, forma com fkbanco a PK (composta) da tabela.',
  `txnomeagencia` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome da agência (reconhecido no âmbito do banco).',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK indicando o logradouro da cidade onde se localiza a agência bancária.',
  `txcomplemento` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos).',
  `nucep` char(8) DEFAULT NULL COMMENT 'Número do CEP',
  `dtcriacao` date DEFAULT NULL COMMENT 'Data de inauguração da sede da agência bancária.',
  `dtcadagencia` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`fkbanco`,`pkagencia`),
  KEY `ifkbanco` (`fkbanco`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `bancoagencia` FOREIGN KEY (`fkbanco`) REFERENCES `bancos` (`pkbanco`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `logradourosagencias` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `agencias` DISABLE KEYS */;
INSERT INTO `agencias` (`fkbanco`, `pkagencia`, `txnomeagencia`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcriacao`, `dtcadagencia`) VALUES
	('001', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('002', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('003', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('004', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('007', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('021', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('023', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('025', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('033', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('037', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('041', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('046', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('047', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('070', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('075', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('077', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('082', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('102', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('104', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('107', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('121', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('184', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('208', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('212', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('218', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('224', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('237', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('260', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('263', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('265', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('318', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('320', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('341', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('389', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('422', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('473', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('479', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('505', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('604', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('611', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('612', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('623', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('637', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('643', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('653', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('654', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('655', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('707', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('719', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('721', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('735', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('738', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('741', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('745', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('746', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('748', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('756', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06'),
	('M09', '0001', 'SEDE', 50, '100', '12345678', '2018-02-06', '2018-02-06');
/*!40000 ALTER TABLE `agencias` ENABLE KEYS */;

DROP TABLE IF EXISTS `agenciastels`;
CREATE TABLE IF NOT EXISTS `agenciastels` (
  `pkagenciatel` smallint(5) unsigned NOT NULL,
  `fkbanco` char(3) NOT NULL,
  `fkagencia` char(4) NOT NULL,
  `fktipotelefone` smallint(5) unsigned DEFAULT NULL,
  `nutelefone` char(15) NOT NULL,
  `dtcadagenciatel` date NOT NULL,
  PRIMARY KEY (`pkagenciatel`),
  KEY `fkbanco_fkagencia` (`fkbanco`,`fkagencia`),
  KEY `fktipotelefone` (`fktipotelefone`),
  CONSTRAINT `fkagenciaagenciatelsq` FOREIGN KEY (`fkbanco`, `fkagencia`) REFERENCES `agencias` (`fkbanco`, `pkagencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fktipotelagenciatel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `agenciastels` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenciastels` ENABLE KEYS */;

DROP TABLE IF EXISTS `aplicacoesdascontas`;
CREATE TABLE IF NOT EXISTS `aplicacoesdascontas` (
  `pkaplicacaodaconta` smallint(5) unsigned NOT NULL,
  `fkbanco` char(3) NOT NULL COMMENT 'Parte da FK composta indicando para contas.',
  `fkagencia` char(4) NOT NULL COMMENT 'Parte da FK composta indicando para contas.',
  `nuconta` char(7) NOT NULL COMMENT 'Parte da FK composta indicando para contas.',
  `fkaplicacaofinanceira` smallint(5) unsigned DEFAULT NULL COMMENT 'FK da tabela aplicacoesfinanceiras.',
  `vlsaldo` decimal(12,2) unsigned NOT NULL COMMENT 'Valor do Saldo da Aplicação fincnaceira da Conta.',
  `dtcadapliccontas` date NOT NULL COMMENT 'Data de Geração do Registro.',
  PRIMARY KEY (`pkaplicacaodaconta`),
  KEY `ifkconta` (`fkbanco`,`fkagencia`,`nuconta`),
  KEY `ifkaplicacaofinanceira` (`fkaplicacaofinanceira`),
  CONSTRAINT `agenciaapliccontas` FOREIGN KEY (`fkbanco`, `fkagencia`, `nuconta`) REFERENCES `contas` (`fkbanco`, `fkagencia`, `nuconta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aplicfinapliccontas` FOREIGN KEY (`fkaplicacaofinanceira`) REFERENCES `aplicacoesfinanceiras` (`pkaplicacaofinanceira`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `aplicacoesdascontas` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplicacoesdascontas` ENABLE KEYS */;

DROP TABLE IF EXISTS `aplicacoesfinanceiras`;
CREATE TABLE IF NOT EXISTS `aplicacoesfinanceiras` (
  `pkaplicacaofinanceira` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela',
  `txnomeaplicacao` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome completo (descritivo) da aplicação financeira.',
  `txregrasdaaplicacao` varchar(2500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Descrição detalhada e completa das regras de uso da aplicação financeira.',
  `dtcadaplicacao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkaplicacaofinanceira`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `aplicacoesfinanceiras` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplicacoesfinanceiras` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestudo`;
CREATE TABLE IF NOT EXISTS `areaestudo` (
  `pkareaestudo` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomearea` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome da area de conhecimento',
  `txdescricaoarea` text COLLATE utf8_bin NOT NULL COMMENT 'Descrição detalhada e completa de uma Área de Estudo.',
  `dtcadareaestudo` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkareaestudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='arestudo';

/*!40000 ALTER TABLE `areaestudo` DISABLE KEYS */;
INSERT INTO `areaestudo` (`pkareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(1, 'Exatas', 'Agrega todo conhecimento de ciências exatas', '2018-01-30'),
	(2, 'Humanas', 'Agrega todo conhecimento de ciências humanas', '2018-01-30'),
	(3, 'Biológicas', 'Agrega todo conhecimento de ciências biológicas', '2018-01-30'),
	(4, 'Naturais', 'Agrega todo conhecimento de ciências Naturais', '2018-01-30'),
	(5, 'Astronômicas', 'Agrega todo conhecimento de ciências Astronômicas', '2018-01-30'),
	(6, 'Planetárias', 'Agrega todo conhecimento de ciências Planetárias', '2018-01-30'),
	(7, 'Filosóficas', 'Agrega todo conhecimento de ciências Filosóficas', '2018-01-30'),
	(8, 'Matemáticas', 'Agrega todo conhecimento de ciências Matemáticas', '2018-01-30');
/*!40000 ALTER TABLE `areaestudo` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestudocursos`;
CREATE TABLE IF NOT EXISTS `areaestudocursos` (
  `pkareaestcurso` int(10) unsigned NOT NULL DEFAULT 0,
  `fkcurso` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do Curso',
  `fkareaestudo` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código da Área de Estudo',
  `dtcadareaestcurso` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkareaestcurso`),
  KEY `ifkcurso` (`fkcurso`),
  KEY `ifkareaestudo` (`fkareaestudo`),
  CONSTRAINT `areaestudoareacurso` FOREIGN KEY (`fkareaestudo`) REFERENCES `areaestudo` (`pkareaestudo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cursosareacurso` FOREIGN KEY (`fkcurso`) REFERENCES `cursos` (`pkcurso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='arestcur';

/*!40000 ALTER TABLE `areaestudocursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `areaestudocursos` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestudodisciplinas`;
CREATE TABLE IF NOT EXISTS `areaestudodisciplinas` (
  `pkareaestdisciplina` int(10) unsigned NOT NULL DEFAULT 0,
  `fkdisciplina` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código da Disciplina.',
  `fkareaestudo` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o cód. Área de Estudo.',
  `dtcadareaestdisciplina` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkareaestdisciplina`),
  KEY `ifkdisciplina` (`fkdisciplina`),
  KEY `ifkareaestudo` (`fkareaestudo`),
  CONSTRAINT `areaestareaestudodiscipl` FOREIGN KEY (`fkareaestudo`) REFERENCES `areaestudo` (`pkareaestudo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disciplinaareaestudo` FOREIGN KEY (`fkdisciplina`) REFERENCES `disciplinas` (`pkdisciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `areaestudodisciplinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areaestudodisciplinas` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestudolivros`;
CREATE TABLE IF NOT EXISTS `areaestudolivros` (
  `pkareaestlivro` int(10) unsigned NOT NULL DEFAULT 0,
  `fklivro` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do livro',
  `fkareaestudo` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código da Área de Estudo',
  `nugrauinfluencia` smallint(6) unsigned NOT NULL COMMENT 'Percentagem de cobertura da Área de Estudo no livro (num. inteiro)',
  `dtcadareaestlivro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkareaestlivro`),
  KEY `ifklivro` (`fklivro`),
  KEY `ifkareaestudo` (`fkareaestudo`),
  CONSTRAINT `areaestudareaestudlivro` FOREIGN KEY (`fkareaestudo`) REFERENCES `areaestudo` (`pkareaestudo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `livroareaestudlivro` FOREIGN KEY (`fklivro`) REFERENCES `livros` (`pklivro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='arestliv';

/*!40000 ALTER TABLE `areaestudolivros` DISABLE KEYS */;
/*!40000 ALTER TABLE `areaestudolivros` ENABLE KEYS */;

DROP TABLE IF EXISTS `armazens`;
CREATE TABLE IF NOT EXISTS `armazens` (
  `pkarmazem` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomearmazem` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'Nome curto ou usual.',
  `txdescricaogeral` text COLLATE utf8_bin DEFAULT NULL COMMENT 'Texto para descrição geral do armazém.',
  `fkcliente` smallint(6) unsigned DEFAULT NULL COMMENT 'FK indicando o cliente que é dono ou aluga o armazém.',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK indicando o logradouro onde se localiza o armazém.',
  `txcomplemento` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'CEP do endereço (sem traço)',
  `nutelefone` char(12) COLLATE utf8_bin DEFAULT NULL COMMENT 'Numero de telefone no formato OP-DD-TTTT-RRRR, sem o ZERO no inicio',
  `qtarea` decimal(15,2) unsigned NOT NULL COMMENT 'Número inteiro indicando a área total.',
  `dtcadarmazem` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkarmazem`),
  KEY `ifkcliente` (`fkcliente`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `clientearmazem` FOREIGN KEY (`fkcliente`) REFERENCES `clientes` (`pkcliente`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `logradouroarmazem` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='armazens';

/*!40000 ALTER TABLE `armazens` DISABLE KEYS */;
INSERT INTO `armazens` (`pkarmazem`, `txnomearmazem`, `txdescricaogeral`, `fkcliente`, `fklogradouro`, `txcomplemento`, `nucep`, `nutelefone`, `qtarea`, `dtcadarmazem`) VALUES
	(2, 'Sao Sebastiao', '', 10, 10, '1492', '87654321', '', 50000.00, '1980-01-01'),
	(3, 'Rio de Janeiro - 01', 'Galpão Único com pé direito de 15Metros', 40, 10, '234', '12345678', '2174857485', 20000.00, '1980-01-01'),
	(5, 'Dois Irmaos', '', 25, 10, '234', '', '', 15000.00, '1980-01-01'),
	(15, 'Big Warehouse Bahia', 'Galpão Único com pé direito de 15Metros', 10, 50, '456', '12313212', '123', 35000.00, '2010-10-10'),
	(20, 'Americanas V', 'Galpão Único com pé direito de 15Metros', 10, 10, 'Km 30', '12345678', '1145124512', 150000.00, '2015-12-07');
/*!40000 ALTER TABLE `armazens` ENABLE KEYS */;

DROP TABLE IF EXISTS `atividades`;
CREATE TABLE IF NOT EXISTS `atividades` (
  `pkatividade` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeatividade` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Nome curto ou usual.',
  `txdescricao` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'Descrição detalhada e completa de uma atividade profissional.',
  `dtcadatividade` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkatividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='atividad';

/*!40000 ALTER TABLE `atividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `atividades` ENABLE KEYS */;

DROP TABLE IF EXISTS `atribuicoes`;
CREATE TABLE IF NOT EXISTS `atribuicoes` (
  `pkatribuicao` int(10) unsigned NOT NULL DEFAULT 0,
  `fkprofessor` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do professor',
  `fkdisciplina` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código da disciplina',
  `qthorasatribuidas` smallint(6) unsigned NOT NULL COMMENT 'Quantidade de horas de uma disciplina atribuídas ao professor.',
  `dtatribuicao` date DEFAULT NULL COMMENT 'Data de atribuição da disciplina ao professor',
  `dtcadatribuicao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkatribuicao`),
  KEY `ifkprofessor` (`fkprofessor`),
  KEY `ifkdisciplina` (`fkdisciplina`),
  CONSTRAINT `disicpatribuicao` FOREIGN KEY (`fkdisciplina`) REFERENCES `disciplinas` (`pkdisciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profatribuicao` FOREIGN KEY (`fkprofessor`) REFERENCES `professores` (`pkprofessor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='atribuic';

/*!40000 ALTER TABLE `atribuicoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `atribuicoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `atuacoes`;
CREATE TABLE IF NOT EXISTS `atuacoes` (
  `pkatuacao` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'FK indicando o código de funcionário que trabalha em tarefas de projetos',
  `fktarefprojeto` smallint(5) unsigned NOT NULL COMMENT 'FK indicando o código de Tarefa-Projeto',
  `dtinicio` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Data de início de atuação do Funcionário no projeto',
  `dttermino` date DEFAULT NULL COMMENT 'Data de término de atuação do funcionário no projeto',
  `qttempoduracao` decimal(5,2) unsigned NOT NULL COMMENT 'Quantidade de horas de duração da participação do funcionário no projeto.',
  `dtcadatuacao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkatuacao`),
  KEY `ifktarefprojeto` (`fktarefprojeto`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `funcatuacao` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tarefprofatuacao` FOREIGN KEY (`fktarefprojeto`) REFERENCES `tarefasprojetos` (`pktarefprojeto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das atuações em tarefas de projetos por parte dos funcionários.';

/*!40000 ALTER TABLE `atuacoes` DISABLE KEYS */;
INSERT INTO `atuacoes` (`pkatuacao`, `fkfuncionario`, `fktarefprojeto`, `dtinicio`, `dttermino`, `qttempoduracao`, `dtcadatuacao`) VALUES
	(1, 1, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(2, 1, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(3, 1, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(4, 1, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(5, 1, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(6, 1, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(7, 1, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(8, 1, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(9, 1, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(10, 1, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(11, 1, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(12, 1, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(13, 1, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(14, 1, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(15, 1, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(16, 1, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(17, 1, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(18, 1, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(19, 1, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(20, 1, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(21, 1, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(22, 1, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(23, 1, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(24, 1, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(25, 1, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(26, 1, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(27, 1, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(28, 1, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(29, 1, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(30, 1, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(31, 1, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(32, 1, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(33, 1, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(34, 1, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(35, 1, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(36, 1, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(37, 1, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(38, 1, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(39, 1, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(40, 1, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(41, 1, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(42, 1, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(43, 1, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(44, 1, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(45, 1, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(46, 1, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(47, 1, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(48, 1, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(49, 1, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(50, 1, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(51, 1, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(52, 1, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(53, 1, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(54, 1, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(55, 1, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(56, 1, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(57, 2, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(58, 2, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(59, 2, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(60, 2, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(61, 2, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(62, 2, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(63, 2, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(64, 2, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(65, 2, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(66, 2, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(67, 2, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(68, 2, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(69, 2, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(70, 2, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(71, 2, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(72, 2, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(73, 2, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(74, 2, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(75, 2, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(76, 2, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(77, 2, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(78, 2, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(79, 2, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(80, 2, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(81, 2, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(82, 2, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(83, 2, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(84, 2, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(85, 2, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(86, 2, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(87, 2, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(88, 2, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(89, 2, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(90, 2, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(91, 2, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(92, 2, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(93, 2, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(94, 2, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(95, 2, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(96, 2, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(97, 2, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(98, 2, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(99, 2, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(100, 2, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(101, 2, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(102, 2, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(103, 2, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(104, 2, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(105, 2, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(106, 3, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(107, 3, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(108, 3, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(109, 3, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(110, 3, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(111, 3, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(112, 3, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(113, 3, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(114, 3, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(115, 3, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(116, 3, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(117, 3, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(118, 3, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(119, 3, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(120, 3, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(121, 3, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(122, 3, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(123, 3, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(124, 3, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(125, 3, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(126, 3, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(127, 3, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(128, 3, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(129, 3, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(130, 3, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(131, 3, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(132, 3, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(133, 3, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(134, 3, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(135, 3, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(136, 3, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(137, 3, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(138, 3, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(139, 3, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(140, 3, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(141, 3, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(142, 3, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(143, 3, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(144, 3, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(145, 3, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(146, 3, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(147, 3, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(148, 3, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(149, 3, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(150, 4, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(151, 4, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(152, 4, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(153, 4, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(154, 4, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(155, 4, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(156, 4, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(157, 4, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(158, 4, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(159, 4, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(160, 4, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(161, 4, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(162, 4, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(163, 4, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(164, 4, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(165, 4, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(166, 4, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(167, 4, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(168, 4, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(169, 4, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(170, 4, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(171, 4, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(172, 5, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(173, 5, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(174, 5, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(175, 5, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(176, 5, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(177, 5, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(178, 5, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(179, 5, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(180, 5, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(181, 5, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(182, 5, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(183, 5, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(184, 5, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(185, 5, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(186, 5, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(187, 5, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(188, 5, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(189, 5, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(190, 5, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(191, 5, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(192, 5, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(193, 5, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(194, 5, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(195, 5, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(196, 5, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(197, 5, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(198, 5, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(199, 5, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(200, 5, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(201, 5, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(202, 5, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(203, 5, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(204, 5, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(205, 5, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(206, 5, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(207, 5, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(208, 5, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(209, 5, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(210, 5, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(211, 5, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(212, 5, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(213, 5, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(214, 5, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(215, 5, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(216, 5, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(217, 5, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(218, 5, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(219, 5, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(220, 5, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(221, 5, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(222, 5, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(223, 5, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(224, 5, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(225, 5, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(226, 5, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(227, 5, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(228, 7, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(229, 7, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(230, 7, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(231, 7, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(232, 7, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(233, 7, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(234, 7, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(235, 7, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(236, 7, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(237, 7, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(238, 7, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(239, 7, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(240, 7, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(241, 7, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(242, 7, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(243, 7, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(244, 7, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(245, 7, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(246, 7, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(247, 7, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(248, 7, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(249, 7, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(250, 7, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(251, 7, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(252, 7, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(253, 7, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(254, 7, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(255, 7, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(256, 7, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(257, 7, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(258, 7, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(259, 7, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(260, 7, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(261, 7, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(262, 7, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(263, 7, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(264, 7, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(265, 7, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(266, 7, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(267, 7, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(268, 7, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(269, 7, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(270, 7, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(271, 8, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(272, 8, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(273, 8, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(274, 8, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(275, 8, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(276, 8, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(277, 8, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(278, 8, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(279, 8, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(280, 8, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(281, 8, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(282, 8, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(283, 8, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(284, 8, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(285, 8, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(286, 8, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(287, 8, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(288, 8, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(289, 8, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(290, 8, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(291, 8, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(292, 8, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(293, 8, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(294, 8, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(295, 8, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(296, 8, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(297, 8, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(298, 8, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(299, 8, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(300, 8, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(301, 8, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(302, 8, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(303, 8, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(304, 8, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(305, 8, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(306, 8, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(307, 9, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(308, 9, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(309, 9, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(310, 9, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(311, 9, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(312, 9, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(313, 9, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(314, 9, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(315, 9, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(316, 9, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(317, 9, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(318, 9, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(319, 9, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(320, 9, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(321, 10, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(322, 10, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(323, 10, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(324, 10, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(325, 10, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(326, 10, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(327, 10, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(328, 10, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(329, 10, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(330, 10, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(331, 10, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(332, 10, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(333, 10, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(334, 10, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(335, 10, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(336, 10, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(337, 10, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(338, 10, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(339, 10, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(340, 10, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(341, 10, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(342, 10, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(343, 10, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(344, 10, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(345, 10, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(346, 10, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(347, 10, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(348, 10, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(349, 10, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(350, 10, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(351, 10, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(352, 10, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(353, 10, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(354, 10, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(355, 10, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(356, 10, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(357, 10, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(358, 10, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(359, 10, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(360, 10, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(361, 10, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(362, 10, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(363, 10, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(364, 10, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(365, 10, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(366, 10, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(367, 10, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(368, 10, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(369, 10, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(370, 10, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(371, 10, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(372, 10, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(373, 10, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(374, 10, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(375, 10, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(376, 10, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(377, 11, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(378, 11, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(379, 11, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(380, 11, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(381, 11, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(382, 11, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(383, 11, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(384, 11, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(385, 11, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(386, 11, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(387, 11, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(388, 11, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(389, 11, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(390, 11, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(391, 11, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(392, 11, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(393, 11, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(394, 11, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(395, 11, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(396, 11, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(397, 12, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(398, 12, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(399, 12, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(400, 12, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(401, 13, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(402, 13, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(403, 13, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(404, 13, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(405, 13, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(406, 13, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(407, 13, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(408, 13, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(409, 13, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(410, 13, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(411, 13, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(412, 13, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(413, 13, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(414, 13, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(415, 13, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(416, 13, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(417, 13, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(418, 13, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(419, 13, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(420, 13, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(421, 13, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(422, 13, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(423, 13, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(424, 13, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(425, 13, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(426, 13, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(427, 15, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(428, 15, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(429, 15, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(430, 15, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(431, 15, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(432, 15, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(433, 15, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(434, 15, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(435, 15, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(436, 15, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(437, 15, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(438, 15, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(439, 15, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(440, 15, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(441, 15, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(442, 15, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(443, 17, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(444, 17, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(445, 17, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(446, 17, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(447, 17, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(448, 17, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(449, 17, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(450, 17, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(451, 17, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(452, 17, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(453, 17, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(454, 17, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(455, 17, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(456, 17, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(457, 17, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(458, 17, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(459, 17, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(460, 17, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(461, 17, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(462, 17, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(463, 17, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(464, 17, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(465, 17, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(466, 17, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(467, 17, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(468, 17, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(469, 17, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(470, 17, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(471, 17, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(472, 17, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(473, 17, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(474, 17, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(475, 17, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(476, 17, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(477, 17, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(478, 17, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(479, 17, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(480, 17, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(481, 17, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(482, 17, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(483, 17, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(484, 17, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(485, 17, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(486, 19, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(487, 19, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(488, 19, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(489, 19, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(490, 19, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(491, 19, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(492, 19, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(493, 19, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(494, 19, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(495, 19, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(496, 19, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(497, 19, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(498, 19, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(499, 19, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(500, 19, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(501, 19, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(502, 19, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(503, 19, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(504, 19, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(505, 19, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(506, 19, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(507, 19, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(508, 19, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(509, 19, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(510, 19, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(511, 19, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(512, 19, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(513, 19, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(514, 19, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(515, 19, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(516, 19, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(517, 19, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(518, 19, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(519, 19, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(520, 19, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(521, 19, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(522, 19, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(523, 19, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(524, 20, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(525, 20, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(526, 20, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(527, 20, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(528, 20, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(529, 20, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(530, 20, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(531, 20, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(532, 20, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(533, 20, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(534, 20, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(535, 20, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(536, 20, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(537, 20, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(538, 20, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(539, 20, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(540, 20, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(541, 20, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(542, 20, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(543, 20, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(544, 20, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(545, 20, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(546, 20, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(547, 20, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(548, 20, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(549, 20, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(550, 20, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(551, 20, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(552, 20, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(553, 20, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(554, 20, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(555, 20, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(556, 20, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(557, 20, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(558, 20, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(559, 20, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(560, 20, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(561, 20, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(562, 20, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(563, 20, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(564, 21, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(565, 21, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(566, 21, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(567, 21, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(568, 21, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(569, 21, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(570, 21, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(571, 21, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(572, 21, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(573, 21, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(574, 21, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(575, 21, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(576, 21, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(577, 21, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(578, 21, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(579, 21, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(580, 21, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(581, 21, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(582, 21, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(583, 22, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(584, 22, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(585, 22, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(586, 22, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(587, 22, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(588, 22, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(589, 22, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(590, 22, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(591, 22, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(592, 22, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(593, 22, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(594, 22, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(595, 22, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(596, 22, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(597, 22, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(598, 22, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(599, 22, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(600, 22, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(601, 22, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(602, 22, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(603, 22, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(604, 23, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(605, 23, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(606, 23, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(607, 23, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(608, 23, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(609, 23, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(610, 23, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(611, 23, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(612, 23, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(613, 23, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(614, 23, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(615, 23, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(616, 23, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(617, 23, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(618, 23, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(619, 23, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(620, 23, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(621, 23, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(622, 23, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(623, 23, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(624, 23, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(625, 23, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(626, 23, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(627, 23, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(628, 23, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(629, 23, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(630, 23, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(631, 23, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(632, 24, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(633, 24, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(634, 24, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(635, 24, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(636, 24, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(637, 24, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(638, 24, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(639, 24, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(640, 24, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(641, 24, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(642, 24, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(643, 24, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(644, 24, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(645, 24, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(646, 24, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(647, 24, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(648, 24, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(649, 24, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(650, 25, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(651, 25, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(652, 25, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(653, 25, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(654, 25, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(655, 25, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(656, 25, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(657, 25, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(658, 25, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(659, 25, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(660, 25, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(661, 25, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(662, 25, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(663, 25, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(664, 25, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(665, 25, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(666, 25, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(667, 25, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(668, 25, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(669, 25, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(670, 25, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(671, 25, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(672, 25, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(673, 25, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(674, 25, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(675, 25, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(676, 25, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(677, 25, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(678, 25, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(679, 25, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(680, 25, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(681, 25, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(682, 25, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(683, 25, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(684, 25, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(685, 26, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(686, 26, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(687, 26, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(688, 26, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(689, 26, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(690, 26, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(691, 26, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(692, 26, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(693, 26, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(694, 26, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(695, 26, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(696, 26, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(697, 26, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(698, 26, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(699, 26, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(700, 26, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(701, 26, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(702, 26, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(703, 26, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(704, 26, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(705, 26, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(706, 26, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(707, 26, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(708, 27, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(709, 27, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(710, 27, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(711, 27, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(712, 27, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(713, 27, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(714, 27, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(715, 27, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(716, 27, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(717, 27, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(718, 27, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(719, 27, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(720, 27, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(721, 27, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(722, 27, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(723, 27, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(724, 27, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(725, 27, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(726, 27, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(727, 27, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(728, 27, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(729, 27, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(730, 27, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(731, 28, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(732, 28, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(733, 28, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(734, 28, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(735, 28, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(736, 28, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(737, 28, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(738, 28, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(739, 28, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(740, 28, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(741, 28, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(742, 28, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(743, 28, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(744, 28, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(745, 28, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(746, 28, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(747, 29, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(748, 29, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(749, 29, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(750, 29, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(751, 29, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(752, 29, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(753, 29, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(754, 29, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(755, 29, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(756, 29, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(757, 29, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(758, 29, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(759, 29, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(760, 29, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(761, 29, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(762, 29, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(763, 29, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(764, 29, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(765, 29, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(766, 29, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(767, 29, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(768, 29, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(769, 30, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(770, 30, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(771, 30, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(772, 30, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(773, 30, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(774, 30, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(775, 30, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(776, 30, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(777, 30, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(778, 30, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(779, 30, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(780, 30, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(781, 30, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(782, 30, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(783, 30, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(784, 30, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(785, 30, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(786, 30, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(787, 30, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(788, 30, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(789, 30, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(790, 30, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(791, 30, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(792, 30, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(793, 30, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(794, 30, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(795, 30, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(796, 30, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(797, 30, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(798, 30, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(799, 30, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(800, 30, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(801, 30, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(802, 30, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(803, 30, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(804, 30, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(805, 30, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(806, 30, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(807, 30, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(808, 30, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(809, 30, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(810, 30, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(811, 30, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(812, 30, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(813, 30, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(814, 30, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(815, 30, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(816, 30, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(817, 30, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(818, 30, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(819, 30, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(820, 30, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(821, 30, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(822, 30, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(823, 30, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(824, 30, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(825, 31, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(826, 31, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(827, 31, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(828, 31, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(829, 31, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(830, 31, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(831, 31, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(832, 31, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(833, 31, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(834, 31, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(835, 31, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(836, 31, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(837, 31, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(838, 31, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(839, 31, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(840, 31, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(841, 31, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(842, 31, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(843, 31, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(844, 31, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(845, 31, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(846, 31, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(847, 31, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(848, 31, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(849, 31, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(850, 32, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(851, 32, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(852, 32, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(853, 32, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(854, 32, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(855, 32, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(856, 32, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(857, 32, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(858, 32, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(859, 32, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(860, 32, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(861, 32, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(862, 32, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(863, 32, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(864, 32, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(865, 32, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(866, 32, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(867, 32, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(868, 32, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(869, 32, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(870, 32, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(871, 32, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(872, 32, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(873, 32, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(874, 32, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(875, 32, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(876, 32, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(877, 32, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(878, 32, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(879, 32, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(880, 32, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(881, 32, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(882, 32, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(883, 32, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(884, 32, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(885, 32, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(886, 32, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(887, 32, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(888, 33, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(889, 33, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(890, 33, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(891, 33, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(892, 33, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(893, 33, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(894, 33, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(895, 33, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(896, 33, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(897, 33, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(898, 33, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(899, 33, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(900, 33, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(901, 33, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(902, 33, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(903, 33, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(904, 33, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(905, 33, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(906, 33, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(907, 33, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(908, 33, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(909, 33, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(910, 33, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(911, 34, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(912, 34, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(913, 34, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(914, 34, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(915, 34, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(916, 34, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(917, 34, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(918, 34, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(919, 34, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(920, 34, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(921, 34, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(922, 34, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(923, 34, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(924, 34, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(925, 34, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(926, 34, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(927, 34, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(928, 34, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(929, 34, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(930, 34, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(931, 34, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(932, 34, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(933, 34, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(934, 34, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(935, 34, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(936, 34, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(937, 34, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(938, 34, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(939, 34, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(940, 34, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(941, 34, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(942, 34, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(943, 34, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(944, 34, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(945, 34, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(946, 34, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(947, 34, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(948, 34, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(949, 34, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(950, 34, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(951, 34, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(952, 34, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(953, 34, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(954, 34, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(955, 34, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(956, 34, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(957, 34, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(958, 34, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(959, 34, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(960, 35, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(961, 35, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(962, 35, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(963, 35, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(964, 35, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(965, 35, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(966, 35, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(967, 35, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(968, 35, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(969, 35, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(970, 35, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(971, 35, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(972, 35, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(973, 35, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(974, 35, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(975, 35, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(976, 35, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(977, 35, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(978, 35, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(979, 35, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(980, 35, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(981, 35, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(982, 35, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(983, 35, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(984, 35, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(985, 35, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(986, 35, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(987, 35, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(988, 35, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(989, 35, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(990, 35, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(991, 36, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(992, 36, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(993, 36, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(994, 36, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(995, 36, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(996, 36, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(997, 36, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(998, 36, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(999, 36, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1000, 36, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1001, 36, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1002, 36, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1003, 36, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1004, 36, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1005, 36, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1006, 36, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1007, 36, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1008, 36, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1009, 36, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1010, 36, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1011, 36, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1012, 36, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1013, 36, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1014, 36, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1015, 37, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1016, 37, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1017, 37, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1018, 37, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1019, 37, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1020, 37, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1021, 37, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1022, 37, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1023, 37, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1024, 37, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1025, 37, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1026, 37, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1027, 37, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1028, 37, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1029, 37, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1030, 37, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1031, 37, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1032, 37, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1033, 37, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1034, 37, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1035, 37, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1036, 37, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1037, 37, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1038, 37, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1039, 37, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1040, 37, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1041, 37, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1042, 37, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1043, 37, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1044, 37, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1045, 37, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1046, 37, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1047, 38, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1048, 38, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1049, 38, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1050, 38, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1051, 38, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1052, 38, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1053, 38, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1054, 38, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1055, 38, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1056, 38, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1057, 38, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1058, 38, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1059, 38, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1060, 38, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1061, 38, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1062, 38, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1063, 38, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1064, 38, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1065, 38, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1066, 38, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1067, 38, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1068, 38, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1069, 38, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1070, 38, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1071, 38, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1072, 38, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1073, 38, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1074, 38, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1075, 38, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1076, 38, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1077, 38, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1078, 38, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1079, 38, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1080, 38, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1081, 38, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1082, 38, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1083, 39, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1084, 39, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1085, 39, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1086, 39, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1087, 39, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1088, 39, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1089, 39, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1090, 39, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1091, 39, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1092, 39, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1093, 39, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1094, 39, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1095, 39, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1096, 39, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1097, 39, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1098, 39, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1099, 39, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1100, 39, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1101, 39, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1102, 39, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1103, 39, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1104, 39, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1105, 39, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1106, 39, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1107, 39, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1108, 39, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1109, 39, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1110, 39, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1111, 39, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1112, 39, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1113, 39, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1114, 39, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1115, 39, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1116, 39, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1117, 39, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1118, 39, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1119, 39, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1120, 39, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1121, 39, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1122, 39, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1123, 39, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1124, 39, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1125, 39, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1126, 39, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1127, 39, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1128, 39, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1129, 39, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1130, 39, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1131, 39, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1132, 39, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1133, 39, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1134, 39, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1135, 39, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1136, 39, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1137, 39, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1138, 39, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1139, 40, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1140, 40, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1141, 40, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1142, 40, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1143, 40, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1144, 40, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1145, 40, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1146, 40, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1147, 40, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1148, 40, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1149, 40, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1150, 40, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1151, 40, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1152, 40, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1153, 40, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1154, 40, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1155, 40, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1156, 40, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1157, 41, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1158, 41, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1159, 41, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1160, 41, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1161, 41, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1162, 41, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1163, 41, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1164, 41, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1165, 41, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1166, 41, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1167, 41, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1168, 41, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1169, 41, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1170, 41, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1171, 41, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1172, 41, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1173, 41, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1174, 41, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1175, 41, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1176, 41, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1177, 41, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1178, 41, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1179, 41, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1180, 41, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1181, 41, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1182, 41, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1183, 41, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1184, 41, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1185, 41, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1186, 41, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1187, 41, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1188, 41, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1189, 41, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1190, 41, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1191, 42, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1192, 42, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1193, 42, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1194, 42, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1195, 42, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1196, 42, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1197, 42, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1198, 42, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1199, 42, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1200, 42, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1201, 42, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1202, 42, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1203, 42, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1204, 42, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1205, 42, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1206, 42, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1207, 42, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1208, 42, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1209, 42, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1210, 42, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1211, 42, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1212, 42, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1213, 42, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1214, 42, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1215, 42, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1216, 42, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1217, 42, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1218, 42, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1219, 42, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1220, 42, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1221, 42, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1222, 42, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1223, 42, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1224, 43, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1225, 43, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1226, 43, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1227, 43, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1228, 43, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1229, 43, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1230, 43, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1231, 43, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1232, 43, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1233, 43, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1234, 43, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1235, 43, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1236, 43, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1237, 43, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1238, 43, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1239, 43, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1240, 43, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1241, 43, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1242, 43, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1243, 43, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1244, 43, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1245, 43, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1246, 43, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1247, 43, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1248, 43, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1249, 43, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1250, 43, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1251, 43, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1252, 43, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1253, 43, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1254, 43, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1255, 43, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1256, 43, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1257, 43, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1258, 43, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1259, 43, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1260, 43, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1261, 43, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1262, 43, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1263, 43, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1264, 43, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1265, 43, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1266, 44, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1267, 44, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1268, 44, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1269, 44, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1270, 44, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1271, 44, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1272, 44, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1273, 44, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1274, 44, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1275, 44, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1276, 44, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1277, 44, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1278, 44, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1279, 44, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1280, 44, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1281, 44, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1282, 44, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1283, 44, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1284, 44, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1285, 44, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1286, 44, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1287, 44, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1288, 44, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1289, 44, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1290, 44, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1291, 44, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1292, 44, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1293, 44, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1294, 44, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1295, 44, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1296, 44, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1297, 44, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1298, 44, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1299, 44, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1300, 44, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1301, 44, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1302, 44, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1303, 44, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1304, 44, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1305, 44, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1306, 44, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1307, 44, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1308, 44, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1309, 44, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1310, 44, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1311, 44, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1312, 44, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1313, 44, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1314, 44, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1315, 44, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1316, 44, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1317, 44, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1318, 44, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1319, 44, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1320, 44, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1321, 44, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1322, 46, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1323, 46, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1324, 46, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1325, 46, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1326, 46, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1327, 46, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1328, 46, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1329, 46, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1330, 47, 1, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1331, 47, 2, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1332, 47, 3, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1333, 47, 4, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1334, 47, 5, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1335, 47, 6, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1336, 47, 7, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1337, 47, 8, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1338, 47, 9, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1339, 47, 10, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1340, 47, 11, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1341, 47, 12, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1342, 47, 13, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1343, 47, 14, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1344, 47, 15, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1345, 47, 16, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1346, 47, 17, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1347, 47, 18, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1348, 47, 19, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1349, 47, 20, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1350, 47, 21, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1351, 47, 22, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1352, 47, 23, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1353, 47, 24, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1354, 47, 25, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1355, 47, 26, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1356, 47, 27, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1357, 47, 28, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1358, 47, 29, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1359, 47, 30, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1360, 47, 31, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1361, 47, 32, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1362, 47, 33, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1363, 47, 34, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1364, 47, 35, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1365, 47, 36, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1366, 47, 37, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1367, 47, 38, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1368, 47, 39, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1369, 47, 40, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1370, 47, 41, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1371, 47, 42, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1372, 47, 43, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1373, 47, 44, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1374, 47, 45, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1375, 47, 46, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1376, 47, 47, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1377, 47, 48, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1378, 47, 49, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1379, 47, 50, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1380, 47, 51, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1381, 47, 52, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1382, 47, 53, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1383, 47, 54, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1384, 47, 55, '2017-10-05', '2017-10-30', 100.00, '2017-11-05'),
	(1385, 47, 56, '2017-10-05', '2017-10-30', 100.00, '2017-11-05');
/*!40000 ALTER TABLE `atuacoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `autores`;
CREATE TABLE IF NOT EXISTS `autores` (
  `pkautor` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeautor` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome complete (sem abrevições) do autor.',
  `fklogradouro` int(11) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro de moradia do autor.',
  `txcomplemento` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) DEFAULT NULL COMMENT 'CEP do endereço (sem traço)',
  `dtnascimento` date DEFAULT NULL COMMENT 'Data de nascimento do autor',
  `dtcadautor` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkautor`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradautor` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos autores de livros usados nas bibliografias das disciplinas e que devem ser disponibilizadas nas bibliotecas.';

/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` (`pkautor`, `txnomeautor`, `fklogradouro`, `txcomplemento`, `nucep`, `dtnascimento`, `dtcadautor`) VALUES
	(5, 'Carlos Drummond de Andrade', 600, ' 985', '12345678', '1902-10-31', '2013-03-20'),
	(10, 'Liev Tolstoi', 460, ' 1254', '15452145', '1828-09-09', '2010-10-10'),
	(15, 'Cecília Benevides de Carvalho Meireles da silva', 590, ' Km 289', '02342345', '1901-11-07', '2009-10-10'),
	(20, 'Ignácio de Loyola Brandão', 160, ' 54', '12341234', '1936-07-31', '2010-10-10'),
	(25, 'José do Patrocínio', 20, '45', '19906160', '1984-05-20', '2010-10-10'),
	(30, 'Clarice Lispector', 20, '45', '19906160', '1920-12-10', '2010-10-10'),
	(35, 'Mário Raul Morais de Andrade', 200, '450', '19906160', '1893-10-09', '2010-10-10'),
	(40, 'José Oswald de Sousa de Andrade', 210, '450', '19906160', '1890-01-11', '2010-10-10');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;

DROP TABLE IF EXISTS `autorestels`;
CREATE TABLE IF NOT EXISTS `autorestels` (
  `pkautortel` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkautor` smallint(6) unsigned NOT NULL COMMENT 'FK para a tabela autores',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadautortel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkautortel`),
  KEY `ifkautor` (`fkautor`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `autorautortel` FOREIGN KEY (`fkautor`) REFERENCES `autores` (`pkautor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipoautortel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='autortls';

/*!40000 ALTER TABLE `autorestels` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorestels` ENABLE KEYS */;

DROP TABLE IF EXISTS `autorias`;
CREATE TABLE IF NOT EXISTS `autorias` (
  `pkautoria` int(11) unsigned NOT NULL,
  `fklivro` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do livro',
  `fkautor` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do autor',
  `dtcadautoria` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkautoria`),
  KEY `fklivro` (`fklivro`),
  KEY `fkautor` (`fkautor`),
  CONSTRAINT `autoautoria` FOREIGN KEY (`fkautor`) REFERENCES `autores` (`pkautor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `livroautoria` FOREIGN KEY (`fklivro`) REFERENCES `livros` (`pklivro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='autorias';

/*!40000 ALTER TABLE `autorias` DISABLE KEYS */;
INSERT INTO `autorias` (`pkautoria`, `fklivro`, `fkautor`, `dtcadautoria`) VALUES
	(0, 1, 10, '2010-10-10');
/*!40000 ALTER TABLE `autorias` ENABLE KEYS */;

DROP TABLE IF EXISTS `bairros`;
CREATE TABLE IF NOT EXISTS `bairros` (
  `pkbairro` smallint(6) unsigned NOT NULL COMMENT 'PK da tabela.',
  `txnomebairro` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'Nome do bairro.',
  `fkcidade` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código da cidade.',
  `dtcadbairro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkbairro`),
  KEY `fkcidade` (`fkcidade`),
  CONSTRAINT `cidadebairro` FOREIGN KEY (`fkcidade`) REFERENCES `cidades` (`pkcidade`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='bairrosx';

/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
INSERT INTO `bairros` (`pkbairro`, `txnomebairro`, `fkcidade`, `dtcadbairro`) VALUES
	(1, 'Centro', 1, '2014-03-29'),
	(2, 'Centro', 2, '2014-03-29'),
	(3, 'Centro', 3, '2014-03-29'),
	(4, 'Centro', 4, '2014-03-29'),
	(5, 'Centro', 5, '2014-03-29'),
	(6, 'Centro', 6, '2014-03-29'),
	(7, 'Centro', 7, '2014-03-29'),
	(8, 'Centro', 8, '2014-03-29'),
	(9, 'Centro', 9, '2014-03-29'),
	(10, 'Centro', 10, '2014-03-29'),
	(11, 'Centro', 11, '2014-03-29'),
	(12, 'Centro', 12, '2014-03-29'),
	(13, 'Centro', 13, '2014-03-29'),
	(14, 'Penha', 1, '2014-03-29'),
	(15, 'Lapa', 1, '2014-03-29'),
	(16, 'Bela Vista', 1, '2014-03-29'),
	(17, 'Bexiga', 1, '2014-03-29'),
	(18, 'Liberdade', 1, '2014-03-29'),
	(19, 'Vila Musa', 2, '2014-03-29'),
	(20, 'Vila Matilde', 2, '2014-03-29'),
	(21, 'Cidade Patriarca', 1, '2014-03-29'),
	(22, 'Vila Esperança', 1, '2014-03-29'),
	(23, 'Vila Granada', 1, '2014-03-29'),
	(24, 'Arthur Alvin', 1, '2014-03-29'),
	(25, 'Cidade A.E. Carvalho', 1, '2014-03-29');
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;

DROP TABLE IF EXISTS `bairroslogradouros`;
CREATE TABLE IF NOT EXISTS `bairroslogradouros` (
  `pkbairrologr` int(10) unsigned NOT NULL DEFAULT 0,
  `fkbairro` smallint(6) unsigned NOT NULL COMMENT 'PK (composta com fklogradouro) da tabela. FK para tabela bairros.',
  `fklogradouro` int(10) unsigned NOT NULL COMMENT 'PK (composta com fkbairro) da tabela. FK para tabela logradouros.',
  `dtcadbairrologradouro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkbairrologr`),
  KEY `fkbairro` (`fkbairro`),
  KEY `fklogradouro` (`fklogradouro`),
  CONSTRAINT `bairrologradourofk1` FOREIGN KEY (`fkbairro`) REFERENCES `bairros` (`pkbairro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bairrologradourofk2` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tabela de desmembramento do relacionamento entre bairros e logradouros';

/*!40000 ALTER TABLE `bairroslogradouros` DISABLE KEYS */;
INSERT INTO `bairroslogradouros` (`pkbairrologr`, `fkbairro`, `fklogradouro`, `dtcadbairrologradouro`) VALUES
	(1, 1, 20, '2019-08-28'),
	(2, 1, 70, '2019-08-28'),
	(3, 1, 110, '2019-08-28'),
	(4, 1, 120, '2019-08-28'),
	(5, 1, 140, '2019-08-28'),
	(6, 1, 200, '2019-08-28'),
	(7, 1, 210, '2019-08-28'),
	(8, 1, 290, '2019-08-28'),
	(9, 1, 300, '2019-08-28'),
	(10, 1, 330, '2019-08-28'),
	(11, 1, 340, '2019-08-28'),
	(12, 1, 360, '2019-08-28'),
	(13, 1, 390, '2019-08-28'),
	(14, 1, 420, '2019-08-28'),
	(15, 1, 450, '2019-08-28'),
	(16, 1, 480, '2019-08-28'),
	(17, 1, 500, '2019-08-28'),
	(18, 1, 520, '2019-08-28'),
	(19, 1, 530, '2019-08-28'),
	(20, 1, 560, '2019-08-28'),
	(21, 1, 570, '2019-08-28'),
	(22, 1, 590, '2019-08-28'),
	(23, 1, 600, '2019-08-28'),
	(24, 1, 610, '2019-08-28'),
	(25, 2, 10, '2019-08-28'),
	(26, 2, 60, '2019-08-28'),
	(27, 2, 230, '2019-08-28'),
	(28, 2, 240, '2019-08-28'),
	(29, 2, 320, '2019-08-28'),
	(30, 2, 350, '2019-08-28'),
	(31, 2, 380, '2019-08-28'),
	(32, 2, 470, '2019-08-28'),
	(33, 2, 490, '2019-08-28'),
	(34, 2, 550, '2019-08-28'),
	(35, 2, 580, '2019-08-28'),
	(36, 3, 130, '2019-08-28'),
	(37, 3, 150, '2019-08-28'),
	(38, 3, 220, '2019-08-28'),
	(39, 3, 250, '2019-08-28'),
	(40, 3, 260, '2019-08-28'),
	(41, 3, 280, '2019-08-28'),
	(42, 3, 430, '2019-08-28'),
	(43, 3, 540, '2019-08-28'),
	(44, 4, 50, '2019-08-28'),
	(45, 4, 90, '2019-08-28'),
	(46, 4, 160, '2019-08-28'),
	(47, 4, 170, '2019-08-28'),
	(48, 4, 400, '2019-08-28'),
	(49, 4, 440, '2019-08-28'),
	(50, 5, 40, '2019-08-28'),
	(51, 5, 80, '2019-08-28'),
	(52, 5, 100, '2019-08-28'),
	(53, 5, 310, '2019-08-28'),
	(54, 5, 510, '2019-08-28'),
	(55, 5, 611, '2019-08-28'),
	(56, 6, 180, '2019-08-28'),
	(57, 6, 190, '2019-08-28'),
	(58, 6, 270, '2019-08-28'),
	(59, 6, 370, '2019-08-28'),
	(60, 6, 410, '2019-08-28'),
	(61, 7, 460, '2019-08-28');
/*!40000 ALTER TABLE `bairroslogradouros` ENABLE KEYS */;

DROP TABLE IF EXISTS `bancos`;
CREATE TABLE IF NOT EXISTS `bancos` (
  `pkbanco` char(3) NOT NULL COMMENT 'Código do Banco na Federação Brasileira de Bancos.',
  `txnomebanco` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Texto com nome completo do banco (razão social sem abreviações).',
  `dtfundacao` date NOT NULL COMMENT 'Data de fundação do banco.',
  `aocompetencia` char(1) NOT NULL COMMENT '(F)ederal, (E)stadual, (I)nterestadual, (D)istrital, (P)rivado, (C)ooperativo',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro da sede do banco',
  `txcomplemento` varchar(80) DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos).',
  `nucep` char(8) DEFAULT NULL COMMENT 'Número do CEP',
  `dtcadbanco` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkbanco`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradbanco` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos Bancos onde funcionarios podem ter contas.';

/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` (`pkbanco`, `txnomebanco`, `dtfundacao`, `aocompetencia`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcadbanco`) VALUES
	('001', 'Banco do Brasil', '1940-05-02', 'F', 10, '', '12345678', '2018-02-02'),
	('002', 'Banco Central do Brasil', '1940-05-02', 'F', 10, '', '12345678', '2018-02-02'),
	('003', 'Banco da Amazônia', '1940-05-02', 'F', 10, '', '12345678', '2018-02-02'),
	('004', 'Banco do Nordeste do Brasil', '1940-05-02', 'F', 10, '', '12345678', '2018-02-02'),
	('007', 'Banco Nacional de Desenvolvimento Econômico e Social', '1940-05-02', 'F', 10, '', '12345678', '2018-02-02'),
	('021', 'Banco do Estado do Espírito Santo', '1940-05-02', 'E', 10, '', '12345678', '2018-02-02'),
	('023', 'Banco de Desenvolvimento de Minas Gerais', '1940-05-02', 'E', 10, '', '12345678', '2018-02-02'),
	('025', 'Banco Alfa', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('033', 'Banco Santander', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('037', 'Banco do Estado do Pará', '1940-05-02', 'E', 10, '', '12345678', '2018-02-02'),
	('041', 'Banco do Estado do Rio Grande do Sul', '1940-05-02', 'E', 10, '', '12345678', '2018-02-02'),
	('046', 'Banco Regional de Desenvolvimento do Extremo Sul', '1940-05-02', 'I', 10, '', '12345678', '2018-02-02'),
	('047', 'Banco do Estado de Sergipe', '1940-05-02', 'E', 10, '', '12345678', '2018-02-02'),
	('070', 'Banco de Brasília', '1940-05-02', 'E', 10, '', '12345678', '2018-02-02'),
	('075', 'Banco ABN Amro S.A.', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('077', 'Banco Inter', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('082', 'Banco Topázio', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('102', 'XP Investimentos Corretora de Câmbio Títulos e Valores Mobiliários S.A', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('104', 'Caixa Econômica Federal', '1940-05-02', 'F', 10, '', '12345678', '2018-02-02'),
	('107', 'Banco BBM', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('121', 'Agibank', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('184', 'Banco Itaú BBA', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('208', 'Banco BTG Pactual', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('212', 'Banco Original', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('218', 'Banco Bonsucesso', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('224', 'Banco Fibra', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('237', 'Bradesco', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('260', 'Nu Pagamentos S.A', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('263', 'Banco Cacique', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('265', 'Banco Fator', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('318', 'Banco BMG', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('320', 'Banco Industrial e Comercial', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('341', 'Itaú Unibanco', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('389', 'Banco Mercantil do Brasil', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('422', 'Banco Safra', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('473', 'Banco Caixa Geral', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('479', 'Banco ItaúBank', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('505', 'Banco Credit Suisse', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('604', 'Banco Industrial do Brasil', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('611', 'Banco Paulista', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('612', 'Banco Guanabara', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('623', 'Banco Pan', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('637', 'Banco Sofisa', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('643', 'Banco Pine', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('653', 'Banco Indusval', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('654', 'Banco Renner', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('655', 'Banco Votorantim', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('707', 'Góis Monteiro & Co', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('719', 'Banco Banif', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('721', 'Banco Credibel', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('735', 'Banco Neon', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('738', 'Banco Morada', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('741', 'Banco Ribeirão Preto', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('745', 'Banco Citibank', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('746', 'Banco Modal', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02'),
	('748', 'Banco Cooperativo Sicredi - BANSICREDI', '1940-05-02', 'C', 10, '', '12345678', '2018-02-02'),
	('756', 'Banco Cooperativo do Brasil - BANCOOB', '1940-05-02', 'C', 10, '', '12345678', '2018-02-02'),
	('M09', 'Banco Itaucred Financiamentos', '1940-05-02', 'P', 10, '', '12345678', '2018-02-02');
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;

DROP TABLE IF EXISTS `bibliografia`;
CREATE TABLE IF NOT EXISTS `bibliografia` (
  `pkbibliografia` smallint(6) unsigned NOT NULL,
  `fkdisciplina` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código da disciplina',
  `fklivro` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do livro',
  `aotipo` char(1) COLLATE utf8_bin NOT NULL COMMENT 'Letra indicando o tipo de bibliografia Básico ou Complementar',
  `dtadocaodolivro` date NOT NULL COMMENT 'Data de adoção do livro na bibliografia da disciplina',
  `dtcadbibliografia` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkbibliografia`),
  KEY `fkdisciplina` (`fkdisciplina`),
  KEY `fklivro` (`fklivro`),
  CONSTRAINT `discipbibliografia` FOREIGN KEY (`fkdisciplina`) REFERENCES `disciplinas` (`pkdisciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `livrobibliografia` FOREIGN KEY (`fklivro`) REFERENCES `livros` (`pklivro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='bibliogr';

/*!40000 ALTER TABLE `bibliografia` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliografia` ENABLE KEYS */;

DROP TABLE IF EXISTS `capacitacoes`;
CREATE TABLE IF NOT EXISTS `capacitacoes` (
  `pkcapacitacao` smallint(5) unsigned NOT NULL,
  `fkcurso` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do curso',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do funcionário.',
  `dtcapacitacao` date NOT NULL COMMENT 'Parte da PK é a data de capacitação do funcionário (quando terminou o curso)',
  `dtregistro` date NOT NULL COMMENT 'Data de registro do diploma do funcionário (em órgão público competente)',
  `dtcadastro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkcapacitacao`),
  KEY `fkfuncionario` (`fkfuncionario`),
  KEY `fkcurso` (`fkcurso`),
  CONSTRAINT `cursocapacita` FOREIGN KEY (`fkcurso`) REFERENCES `cursos` (`pkcurso`) ON UPDATE CASCADE,
  CONSTRAINT `funccapacita` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='cadastro dos cursos que são concluídos pelos funcionários.';

/*!40000 ALTER TABLE `capacitacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `capacitacoes` ENABLE KEYS */;

DROP VIEW IF EXISTS `carros`;
CREATE TABLE `carros` (
	`pkcarro` INT(10) UNSIGNED NOT NULL COMMENT 'PK da Tabela',
	`ukplaca` CHAR(7) NOT NULL COMMENT 'Placa do carro (somente letras e números)' COLLATE 'utf8_bin',
	`fkfuncionario` SMALLINT(5) UNSIGNED NULL COMMENT 'FK indicando o código do funcionário.',
	`fkcor` SMALLINT(5) UNSIGNED NULL COMMENT 'FK indicando o código da cor.',
	`aostatus` CHAR(1) NULL COMMENT 'Indica o status do veículo do Funcionário (P=Principal e S=Secundário).' COLLATE 'utf8_bin',
	`dtcadcarro` DATE NOT NULL COMMENT 'Data de geração do registro'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE IF NOT EXISTS `cidades` (
  `pkcidade` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomecidade` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo da cidade',
  `txformaacesso` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT 'Descrição das formas de acesso à cidade (hidrovias, rodovias, ferrovias, etc)',
  `fkestadouniao` char(2) COLLATE utf8_bin NOT NULL,
  `qtpopulacao` decimal(10,2) unsigned NOT NULL COMMENT 'População estimada',
  `qtarea` decimal(10,0) unsigned NOT NULL COMMENT 'Área total municipal',
  `dtfundacao` date DEFAULT NULL COMMENT 'Data de fundação da cidade',
  `dtcadcidade` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkcidade`),
  KEY `ifkestadouniao` (`fkestadouniao`),
  CONSTRAINT `estaduniaocidade` FOREIGN KEY (`fkestadouniao`) REFERENCES `estadosdauniao` (`pkestadouniao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das cidades dos estados da união federativa do Brasil';

/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` (`pkcidade`, `txnomecidade`, `txformaacesso`, `fkestadouniao`, `qtpopulacao`, `qtarea`, `dtfundacao`, `dtcadcidade`) VALUES
	(1, 'Sao Paulo', 'aeroporto, rodovia, ferrovia e hidrovia', 'SP', 12000000.00, 780, '2018-01-31', '2018-01-31'),
	(2, 'Osasco', 'rodovia e ferrovia', 'SP', 0.00, 0, '2018-01-31', '2018-01-31'),
	(3, 'Barueri', 'rodovia e ferrovia', 'SP', 0.00, 0, '2018-01-31', '2018-01-31'),
	(4, 'Sao Bernardo', 'rodovia e ferrovia', 'SP', 0.00, 0, '2018-01-31', '2018-01-31'),
	(5, 'Sao Caetano', 'rodovia e ferrovia', 'SP', 0.00, 0, '2018-01-31', '2018-01-31'),
	(6, 'Diadema', 'rodovia e ferrovia', 'SP', 0.00, 0, '2018-01-31', '2018-01-31'),
	(7, 'Guarulhos', 'aeroporto, rodovia e ferrovia', 'SP', 0.00, 0, '2018-01-31', '2018-01-31'),
	(8, 'Ourinhos', 'rodovia e ferrovia', 'SP', 105000.00, 280, '2018-01-31', '2018-01-31'),
	(9, 'Cambará', 'rodovia e ferrovia', 'PR', 105000.00, 280, '2018-01-31', '2018-01-31'),
	(10, 'Andirá', 'rodovia e ferrovia', 'PR', 105000.00, 280, '2018-01-31', '2018-01-31'),
	(11, 'Santa Mariana', 'rodovia e ferrovia', 'PR', 105000.00, 280, '2018-01-31', '2018-01-31'),
	(12, 'Jacarezinho', 'rodovia e ferrovia', 'PR', 105000.00, 280, '2018-01-31', '2018-01-31'),
	(13, 'Santo Antonio da Platina', 'rodovia e ferrovia', 'PR', 105000.00, 280, '2018-01-31', '2018-01-31');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `pkcliente` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomecliente` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações) do cliente',
  `txrazaosocial` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Razão social completa do Cliente',
  `fklogradouro` int(11) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro de residência do cliente',
  `txcomplemento` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin NOT NULL COMMENT 'Número do CEP',
  `aosituacao` char(1) COLLATE utf8_bin DEFAULT NULL,
  `vllimitecompra` decimal(15,2) NOT NULL COMMENT 'Valor limite de compra para o cliente',
  `dtcadcliente` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkcliente`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradourocliente` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Clientes.';

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`pkcliente`, `txnomecliente`, `txrazaosocial`, `fklogradouro`, `txcomplemento`, `nucep`, `aosituacao`, `vllimitecompra`, `dtcadcliente`) VALUES
	(5, 'Vem que tem', 'Bijuterias e adereços Vem que Tem S/C Ltda.', 390, ' 150', '43453456', 'A', 1000.00, '2011-10-24'),
	(10, 'Tratoria do Sargento', 'Ristoranti Il Tratoria do Sargento', 600, ' 985', '65787678', 'A', 25000.00, '2007-02-02'),
	(15, 'Restaurante Bom Vivan', 'Restaurante "O Bom Vivan" S/C Ltda.', 550, ' 567', '56784567', 'B', 5000.00, '2009-12-10'),
	(20, 'Tratoria do Sargento', 'Restaurante da Tratoria do Sargento S/C Ltda.', 460, ' 1254', '04152415', 'A', 12000.00, '2011-06-01'),
	(25, 'Tratoria do Pirata', 'Ristoranti tre fratelli S.A.', 220, ' 1492', '12345678', 'A', 30000.00, '2007-01-20'),
	(30, 'Mc Donalds', 'Rest Com S/A ', 610, ' 6500', '14785214', 'B', 100000.00, '2008-01-20'),
	(35, 'La Traviatta Ripante', 'Rest Com S/A ', 380, ' 125 - 15And Ap 156', '45685236', 'A', 100000.00, '2008-01-20'),
	(40, 'Bistro Ratatui', 'Restaurante e Bisro Ratatui S/C Ltda.', 520, ' 1245', '19584756', 'D', 3456.00, '2011-10-22'),
	(45, 'teste de ALTERAÇÃO', 'teste sem razão', 180, '1452', '01455236', 'D', 15000.00, '2012-10-10'),
	(50, 'teste de inclusão', 'teste sem razão', 350, '1234', '01455236', 'B', 15000.00, '2012-10-10'),
	(55, 'Alterando o Registro com código 55', 'teste sem razão', 350, '1234', '01455236', 'B', 15000.00, '2012-10-10');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

DROP TABLE IF EXISTS `clientestels`;
CREATE TABLE IF NOT EXISTS `clientestels` (
  `pkclientetel` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkcliente` smallint(6) unsigned NOT NULL COMMENT 'FK para a tabela clientes',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela telefonestipos',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadclientetel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkclientetel`),
  KEY `fkcliente` (`fkcliente`),
  KEY `fktipotelefone` (`fktipotelefone`),
  CONSTRAINT `clienteclientetel` FOREIGN KEY (`fkcliente`) REFERENCES `clientes` (`pkcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltiposclientetel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='clientls';

/*!40000 ALTER TABLE `clientestels` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientestels` ENABLE KEYS */;

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas` (
  `pkconsulta` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkmedico` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código do médico.',
  `dthoraconsulta` datetime NOT NULL COMMENT 'Data e hora da consulta (programada).',
  `fkfuncionario` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código do funcionário.',
  `dthorarealizada` datetime DEFAULT NULL COMMENT 'Data de hora de realização da consulta.',
  `fkplanodesaude` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do plano de saúde.',
  `aosituacaoconsulta` char(1) NOT NULL COMMENT 'Atributo Operacional indicando: (D)isponível, (A)gendada, (R)ealizada ou (C)ancelada',
  `dtcadconsulta` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkconsulta`),
  KEY `ifkmedico` (`fkmedico`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  KEY `ifkplanodesaude` (`fkplanodesaude`),
  CONSTRAINT `funcconsulta` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `mediconsulta` FOREIGN KEY (`fkmedico`) REFERENCES `medicos` (`pkmedico`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `plsaudeconsulta` FOREIGN KEY (`fkplanodesaude`) REFERENCES `planosdesaude` (`pkplanodesaude`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das consultas médicas';

/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` (`pkconsulta`, `fkmedico`, `dthoraconsulta`, `fkfuncionario`, `dthorarealizada`, `fkplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(1, 5, '2018-04-25 07:00:00', 1, '2018-04-28 07:01:00', 5, 'R', '2018-04-20'),
	(2, 5, '2018-04-25 07:20:00', 2, '2018-04-28 07:20:00', 5, 'R', '2018-04-20'),
	(3, 5, '2018-04-25 07:40:00', 9, '2018-04-28 07:42:00', 5, 'R', '2018-04-20'),
	(4, 5, '2018-04-25 08:00:00', 4, '2018-04-28 08:00:00', 5, 'R', '2018-04-20'),
	(5, 5, '2018-04-25 08:20:00', 3, '2018-04-28 08:22:00', 5, 'R', '2018-04-20'),
	(6, 5, '2018-04-25 08:40:00', 5, '2018-04-28 08:40:00', 5, 'R', '2018-04-20'),
	(7, 5, '2018-04-25 09:00:00', 9, '2018-04-28 09:00:00', 5, 'R', '2018-04-20'),
	(8, 5, '2018-04-25 09:20:00', 6, '2018-04-28 09:22:00', 5, 'R', '2018-04-20'),
	(9, 5, '2018-04-25 09:40:00', 7, '2018-04-28 09:40:00', 5, 'R', '2018-04-20'),
	(10, 5, '2018-04-25 10:00:00', 10, '2018-04-28 10:00:00', 5, 'R', '2018-04-20'),
	(11, 5, '2018-04-25 10:20:00', 12, '2018-04-28 10:22:00', 5, 'R', '2018-04-20'),
	(12, 5, '2018-04-25 10:40:00', 13, '2018-04-28 10:40:00', 5, 'R', '2018-04-20'),
	(13, 5, '2018-04-25 11:00:00', 22, '2018-04-28 11:00:00', 5, 'R', '2018-04-20'),
	(14, 5, '2018-04-25 11:20:00', 15, '2018-04-28 11:22:00', 5, 'R', '2018-04-20'),
	(15, 5, '2018-04-25 11:40:00', 19, '2018-04-28 11:40:00', 5, 'R', '2018-04-20'),
	(16, 5, '2018-04-25 14:00:00', 18, '2018-04-28 14:00:00', 5, 'R', '2018-04-20'),
	(17, 5, '2018-04-25 14:20:00', 21, '2018-04-28 14:22:00', 5, 'R', '2018-04-20'),
	(18, 5, '2018-04-25 14:40:00', 24, '2018-04-28 14:40:00', 5, 'R', '2018-04-20'),
	(19, 5, '2018-04-25 15:00:00', 25, '2018-04-28 15:00:00', 5, 'R', '2018-04-20'),
	(20, 5, '2018-04-25 15:20:00', 17, '2018-04-28 15:22:00', 5, 'R', '2018-04-20'),
	(21, 5, '2018-04-25 15:40:00', 29, '2018-04-28 15:40:00', 5, 'R', '2018-04-20'),
	(22, 5, '2018-04-25 16:00:00', 31, '2018-04-28 16:00:00', 5, 'R', '2018-04-20'),
	(23, 5, '2018-04-25 16:20:00', 32, '2018-04-28 16:22:00', 5, 'R', '2018-04-20'),
	(24, 5, '2018-04-25 16:40:00', 41, '2018-04-28 16:40:00', 5, 'R', '2018-04-20'),
	(25, 5, '2018-04-25 17:00:00', 35, '2018-04-28 17:00:00', 5, 'R', '2018-04-20'),
	(26, 5, '2018-04-25 17:20:00', 36, '2018-04-28 17:22:00', 5, 'R', '2018-04-20'),
	(27, 5, '2018-04-25 17:40:00', 40, '2018-04-28 17:40:00', 5, 'R', '2018-04-20'),
	(28, 10, '2018-04-25 07:00:00', 8, '2018-04-28 07:00:00', 5, 'R', '2018-04-20'),
	(29, 10, '2018-04-25 07:20:00', 11, '2018-04-28 07:22:00', 5, 'R', '2018-04-20'),
	(30, 10, '2018-04-25 07:40:00', 15, '2018-04-28 07:40:00', 5, 'R', '2018-04-20'),
	(31, 10, '2018-04-25 08:00:00', 16, '2018-04-28 08:00:00', 5, 'R', '2018-04-20'),
	(32, 10, '2018-04-25 08:20:00', 20, '2018-04-28 08:22:00', 5, 'R', '2018-04-20'),
	(33, 10, '2018-04-25 08:40:00', 23, '2018-04-28 08:40:00', 5, 'R', '2018-04-20'),
	(34, 10, '2018-04-25 09:00:00', 30, '2018-04-28 09:00:00', 5, 'R', '2018-04-20'),
	(35, 10, '2018-04-25 09:20:00', 26, '2018-04-28 09:22:00', 5, 'R', '2018-04-20'),
	(36, 10, '2018-04-25 09:40:00', 30, '2018-04-28 09:40:00', 5, 'R', '2018-04-20'),
	(37, 10, '2018-04-25 10:00:00', 10, '2018-04-28 10:00:00', 5, 'R', '2018-04-20'),
	(38, 10, '2018-04-25 10:20:00', 12, '2018-04-28 10:22:00', 5, 'R', '2018-04-20'),
	(39, 10, '2018-04-25 10:40:00', 13, '2018-04-28 10:40:00', 5, 'R', '2018-04-20'),
	(40, 10, '2018-04-25 11:00:00', 22, '2018-04-28 11:00:00', 5, 'R', '2018-04-20'),
	(41, 10, '2018-04-25 11:20:00', 15, '2018-04-28 11:22:00', 5, 'R', '2018-04-20'),
	(42, 10, '2018-04-25 11:40:00', 19, '2018-04-28 11:40:00', 5, 'R', '2018-04-20'),
	(43, 10, '2018-04-25 14:00:00', 18, '2018-04-28 14:00:00', 5, 'R', '2018-04-20'),
	(44, 10, '2018-04-25 14:20:00', 21, '2018-04-28 14:22:00', 5, 'R', '2018-04-20'),
	(45, 10, '2018-04-25 14:40:00', 24, '2018-04-28 14:40:00', 5, 'R', '2018-04-20'),
	(46, 10, '2018-04-25 15:00:00', 25, '2018-04-28 15:00:00', 5, 'R', '2018-04-20'),
	(47, 10, '2018-04-25 15:20:00', 17, '2018-04-28 15:22:00', 5, 'R', '2018-04-20'),
	(48, 10, '2018-04-25 15:40:00', 29, '2018-04-28 15:40:00', 5, 'R', '2018-04-20'),
	(49, 10, '2018-04-25 16:00:00', 31, '2018-04-28 16:00:00', 5, 'R', '2018-04-20'),
	(50, 10, '2018-04-25 16:20:00', 32, '2018-04-28 16:22:00', 5, 'R', '2018-04-20'),
	(51, 10, '2018-04-25 16:40:00', 41, '2018-04-28 16:40:00', 5, 'R', '2018-04-20'),
	(52, 10, '2018-04-25 17:00:00', 35, '2018-04-28 17:00:00', 5, 'R', '2018-04-20'),
	(53, 10, '2018-04-25 17:20:00', 36, '2018-04-28 17:22:00', 5, 'R', '2018-04-20'),
	(54, 10, '2018-04-25 17:40:00', 40, '2018-04-28 17:40:00', 5, 'R', '2018-04-20'),
	(55, NULL, '2018-04-26 07:00:00', 1, '2018-04-28 07:01:00', 5, 'R', '2018-04-20'),
	(56, NULL, '2018-04-26 07:20:00', 2, '2018-04-28 07:20:00', 5, 'R', '2018-04-20'),
	(57, NULL, '2018-04-26 07:40:00', 9, '2018-04-28 07:42:00', 5, 'R', '2018-04-20'),
	(58, NULL, '2018-04-26 08:00:00', 4, '2018-04-28 08:00:00', 5, 'R', '2018-04-20'),
	(59, NULL, '2018-04-26 08:20:00', 3, '2018-04-28 08:22:00', 5, 'R', '2018-04-20'),
	(60, NULL, '2018-04-26 08:40:00', 5, '2018-04-28 08:40:00', 5, 'R', '2018-04-20'),
	(61, NULL, '2018-04-26 09:00:00', 9, '2018-04-28 09:00:00', 5, 'R', '2018-04-20'),
	(62, NULL, '2018-04-26 09:20:00', 6, '2018-04-28 09:22:00', 5, 'R', '2018-04-20'),
	(63, NULL, '2018-04-26 09:40:00', 7, '2018-04-28 09:40:00', 5, 'R', '2018-04-20'),
	(64, NULL, '2018-04-26 10:00:00', 10, '2018-04-28 10:00:00', 5, 'R', '2018-04-20'),
	(65, NULL, '2018-04-26 10:20:00', 12, '2018-04-28 10:22:00', 5, 'R', '2018-04-20'),
	(66, NULL, '2018-04-26 10:40:00', 13, '2018-04-28 10:40:00', 5, 'R', '2018-04-20'),
	(67, NULL, '2018-04-26 11:00:00', 22, '2018-04-28 11:00:00', 5, 'R', '2018-04-20'),
	(68, NULL, '2018-04-26 11:20:00', 15, '2018-04-28 11:22:00', 5, 'R', '2018-04-20'),
	(69, NULL, '2018-04-26 11:40:00', 19, '2018-04-28 11:40:00', 5, 'R', '2018-04-20'),
	(70, NULL, '2018-04-26 14:00:00', 18, '2018-04-28 14:00:00', 5, 'R', '2018-04-20'),
	(71, NULL, '2018-04-26 14:20:00', 21, '2018-04-28 14:22:00', 5, 'R', '2018-04-20'),
	(72, NULL, '2018-04-26 14:40:00', 24, '2018-04-28 14:40:00', 5, 'R', '2018-04-20'),
	(73, NULL, '2018-04-26 15:00:00', 25, '2018-04-28 15:00:00', 5, 'R', '2018-04-20'),
	(74, NULL, '2018-04-26 15:20:00', 17, '2018-04-28 15:22:00', 5, 'R', '2018-04-20'),
	(75, NULL, '2018-04-26 15:40:00', 29, '2018-04-28 15:40:00', 5, 'R', '2018-04-20'),
	(76, NULL, '2018-04-26 16:00:00', 31, '2018-04-28 16:00:00', 5, 'R', '2018-04-20'),
	(77, NULL, '2018-04-26 16:20:00', 32, '2018-04-28 16:22:00', 5, 'R', '2018-04-20'),
	(78, NULL, '2018-04-26 16:40:00', 41, '2018-04-28 16:40:00', 5, 'R', '2018-04-20'),
	(79, NULL, '2018-04-26 17:00:00', 35, '2018-04-28 17:00:00', 5, 'R', '2018-04-20'),
	(80, NULL, '2018-04-26 17:20:00', 36, '2018-04-28 17:22:00', 5, 'R', '2018-04-20'),
	(81, NULL, '2018-04-26 17:40:00', 40, '2018-04-28 17:40:00', 5, 'R', '2018-04-20'),
	(82, NULL, '2018-04-26 07:00:00', 8, '2018-04-28 07:00:00', 5, 'R', '2018-04-20'),
	(83, NULL, '2018-04-26 07:20:00', 11, '2018-04-28 07:22:00', 5, 'R', '2018-04-20'),
	(84, NULL, '2018-04-26 07:40:00', 15, '2018-04-28 07:40:00', 5, 'R', '2018-04-20'),
	(85, NULL, '2018-04-26 08:00:00', 16, '2018-04-28 08:00:00', 5, 'R', '2018-04-20'),
	(86, NULL, '2018-04-26 08:20:00', 20, '2018-04-28 08:22:00', 5, 'R', '2018-04-20'),
	(87, NULL, '2018-04-26 08:40:00', 23, '2018-04-28 08:40:00', 5, 'R', '2018-04-20'),
	(88, NULL, '2018-04-26 09:00:00', 30, '2018-04-28 09:00:00', 5, 'R', '2018-04-20'),
	(89, NULL, '2018-04-26 09:20:00', 26, '2018-04-28 09:22:00', 5, 'R', '2018-04-20'),
	(90, NULL, '2018-04-26 09:40:00', 30, '2018-04-28 09:40:00', 5, 'R', '2018-04-20'),
	(91, NULL, '2018-04-26 10:00:00', 10, '2018-04-28 10:00:00', 5, 'R', '2018-04-20'),
	(92, NULL, '2018-04-26 10:20:00', 12, '2018-04-28 10:22:00', 5, 'R', '2018-04-20'),
	(93, NULL, '2018-04-26 10:40:00', 13, '2018-04-28 10:40:00', 5, 'R', '2018-04-20'),
	(94, NULL, '2018-04-26 11:00:00', 22, '2018-04-28 11:00:00', 5, 'R', '2018-04-20'),
	(95, NULL, '2018-04-26 11:20:00', 15, '2018-04-28 11:22:00', 5, 'R', '2018-04-20'),
	(96, NULL, '2018-04-26 11:40:00', 19, '2018-04-28 11:40:00', 5, 'R', '2018-04-20'),
	(97, NULL, '2018-04-26 14:00:00', 18, '2018-04-28 14:00:00', 5, 'R', '2018-04-20'),
	(98, NULL, '2018-04-26 14:20:00', 21, '2018-04-28 14:22:00', 5, 'R', '2018-04-20'),
	(99, NULL, '2018-04-26 14:40:00', 24, '2018-04-28 14:40:00', 5, 'R', '2018-04-20'),
	(100, NULL, '2018-04-26 15:00:00', 25, '2018-04-28 15:00:00', 5, 'R', '2018-04-20'),
	(101, NULL, '2018-04-26 15:20:00', 17, '2018-04-28 15:22:00', 5, 'R', '2018-04-20'),
	(102, NULL, '2018-04-26 15:40:00', 29, '2018-04-28 15:40:00', 5, 'R', '2018-04-20'),
	(103, NULL, '2018-04-26 16:00:00', 31, '2018-04-28 16:00:00', 5, 'R', '2018-04-20'),
	(104, NULL, '2018-04-26 16:20:00', 32, '2018-04-28 16:22:00', 5, 'R', '2018-04-20'),
	(105, NULL, '2018-04-26 16:40:00', 41, '2018-04-28 16:40:00', 5, 'R', '2018-04-20'),
	(106, NULL, '2018-04-26 17:00:00', 35, '2018-04-28 17:00:00', 5, 'R', '2018-04-20'),
	(107, NULL, '2018-04-26 17:20:00', 36, '2018-04-28 17:22:00', 5, 'R', '2018-04-20'),
	(108, NULL, '2018-04-26 17:40:00', 40, '2018-04-28 17:40:00', 5, 'R', '2018-04-20');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `fkbanco` char(3) NOT NULL COMMENT 'Parta da FK composta indicando para agências.Forma a PK (composta) da tabela.',
  `fkagencia` char(4) NOT NULL COMMENT 'Parta da FK composta indicando para agências. Forma a PK (composta) da tabela.',
  `nuconta` char(7) NOT NULL COMMENT 'Número da conta. Forma a PK (composta) da tabela.',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'FK com o código do funcionário.',
  `fktipoconta` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do tipo de conta bancária.',
  `dtcriacao` date NOT NULL COMMENT 'Data de criação da conta do funcionário na agência bancária.',
  `dtcadconta` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`fkbanco`,`fkagencia`,`nuconta`),
  KEY `ifkagencia` (`fkbanco`,`fkagencia`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  KEY `ifktipoconta` (`fktipoconta`),
  CONSTRAINT `agenciaconta` FOREIGN KEY (`fkbanco`, `fkagencia`) REFERENCES `agencias` (`fkbanco`, `pkagencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcconta` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tipocontaconta` FOREIGN KEY (`fktipoconta`) REFERENCES `contastipos` (`pktipoconta`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das contas bancárias vinculadas aos funcionarios.';

/*!40000 ALTER TABLE `contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `contas` ENABLE KEYS */;

DROP TABLE IF EXISTS `contastipos`;
CREATE TABLE IF NOT EXISTS `contastipos` (
  `pktipoconta` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela.',
  `txnometipoconta` varchar(90) NOT NULL COMMENT 'Descrição do tipo de conta bancária.',
  `dtcadtipoconta` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktipoconta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos tipos de contas bancárias.';

/*!40000 ALTER TABLE `contastipos` DISABLE KEYS */;
INSERT INTO `contastipos` (`pktipoconta`, `txnometipoconta`, `dtcadtipoconta`) VALUES
	(1, 'Conta corrente', '2018-02-01'),
	(2, 'Conta Poupança', '2018-02-01'),
	(3, 'Conta Financiamento Habitacional', '2018-02-01'),
	(4, 'Conta crédito de trabalho', '2018-02-01'),
	(5, 'Conta Especial', '2018-02-01');
/*!40000 ALTER TABLE `contastipos` ENABLE KEYS */;

DROP TABLE IF EXISTS `cores`;
CREATE TABLE IF NOT EXISTS `cores` (
  `pkcor` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomecor` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `nupantone` smallint(6) NOT NULL COMMENT 'Número da cor na tabela Pantone (indicativo de cor)',
  `dtcriacao` date NOT NULL COMMENT 'Data da criação da cor (pantone).',
  `txdescricaocor` varchar(500) COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo nuances da cor e eventual processo de obtenção.',
  `dtcadcor` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkcor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das cores usadas nos carros ou ônibus.';

/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` (`pkcor`, `txnomecor`, `nupantone`, `dtcriacao`, `txdescricaocor`, `dtcadcor`) VALUES
	(1, 'Preto', 1, '1963-05-20', 'Preto sem matiz', '2018-02-01'),
	(2, 'Branco', 2, '1963-05-20', 'Branco sem matiz', '2018-02-01'),
	(3, 'Vermelho', 3, '1963-05-20', 'Vermelho sem matiz', '2018-02-01'),
	(4, 'Azul', 4, '1963-05-20', 'Azul sem matiz', '2018-02-01'),
	(5, 'Verde', 5, '1963-05-20', 'Verde sem matiz', '2018-02-01');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `pkcurso` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomecurso` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `fkinstituicao` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código da instituição de ensino.',
  `fkniveleducacao` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do nível de educação.',
  `qtcargahoraria` smallint(5) unsigned NOT NULL COMMENT 'Quantidade de horas do curso',
  `dtcadcurso` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkcurso`),
  KEY `ifkinstituicao` (`fkinstituicao`),
  KEY `ifkniveleducacao` (`fkniveleducacao`),
  CONSTRAINT `instenscurso` FOREIGN KEY (`fkinstituicao`) REFERENCES `instituicoesensino` (`pkinstituicao`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `niveleduccurso` FOREIGN KEY (`fkinstituicao`) REFERENCES `niveisdeeducacao` (`pkniveleducacao`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='cursosxx';

/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`pkcurso`, `txnomecurso`, `fkinstituicao`, `fkniveleducacao`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(1, 'Matemática', 5, 1, 2200, '2018-07-06');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `pkdepto` char(3) COLLATE utf8_bin NOT NULL COMMENT 'PK da Tabela',
  `txnomedepto` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `fkfuncionariogerente` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do funcionário gerente do departamento.',
  `fkdeptosuperior` char(3) COLLATE utf8_bin DEFAULT NULL COMMENT 'FK indicando a PK na mesma tabela. Código do departamento superior na empresa.',
  `txlocalizacao` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'Descrição da localização do departamento (Bloco, andar, sala,etc)',
  `qtareatotal` smallint(6) DEFAULT NULL COMMENT 'Quantidade da área ocupada pelo departamento',
  `dtcriacaodepto` date DEFAULT NULL COMMENT 'Data da criação do departamento na empresa',
  `dtcaddepartamento` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkdepto`),
  KEY `ifkfuncionariogerente` (`fkfuncionariogerente`),
  KEY `ifkdeptosuperior` (`fkdeptosuperior`),
  CONSTRAINT `departdepartamento` FOREIGN KEY (`fkdeptosuperior`) REFERENCES `departamentos` (`pkdepto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `funcgerentedepartamento` FOREIGN KEY (`fkfuncionariogerente`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos departamentos onde os funcionarios trabalham.';

/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` (`pkdepto`, `txnomedepto`, `fkfuncionariogerente`, `fkdeptosuperior`, `txlocalizacao`, `qtareatotal`, `dtcriacaodepto`, `dtcaddepartamento`) VALUES
	('A01', 'Determinando Serviços Computacionais      ', 12, 'A01', 'R. Direita, 234 - 12Andar - Conj.34         ', 350, '2011-05-20', '2011-05-20'),
	('A11', 'Controle de Custos do Núcleo Norte        ', 4, 'A01', 'Av Rebouças, 3450                           ', 600, '2010-10-12', '2010-10-15'),
	('A12', 'Controle de Custos do Núcleo Sul          ', 9, 'A01', 'R. 15 de Novembro, 340 - 15Andar - Conj 50  ', 400, '2011-05-20', '2010-05-20'),
	('B01', 'Planejamento de Operações                 ', 17, 'B01', 'R. Quintino Bocaiúva, 250 - 15Andar - Cj. 40', 400, '2011-05-10', '2010-05-20'),
	('C01', 'Centro de Informação                      ', 40, 'A01', 'R. Rangel Pestana, 500                      ', 600, '2011-04-20', '2011-04-20'),
	('D01', 'Centro de Desenvolvimento                 ', 20, 'A01', 'R. Bela Vista, 350 - 4 andar - Cj. 30       ', 300, '2011-04-15', '2011-04-16'),
	('D11', 'Achados e Perdidos                        ', 1, 'E01', 'West 56 Street, 234                         ', 1200, '2010-10-10', '2010-10-10'),
	('D91', 'Sistemas de informação para Manufaturas   ', 25, 'D01', 'Av. Europa, 1260                            ', 1200, '2011-02-05', '2011-02-10'),
	('E01', 'Serviços de Suporte                       ', 24, 'E01', 'Av Santo Amaro, 4500                        ', 600, '2010-10-15', '2010-10-16'),
	('E11', 'Operações de Implantação de Sistemas      ', 15, 'E01', 'Av. Ricardo Jafet, 2500                     ', 800, '2010-10-10', '2010-10-10'),
	('E21', 'Suporte aos Sistemas de Software          ', 28, 'E01', 'Av. Vicente Rao, 1560                       ', 450, '2010-10-20', '2010-10-20'),
	('F22', 'Serviços de operacionalização de filias F2', 35, 'A01', 'Paulista Avenue, 2345 - 15 Floor/Set 45     ', 1200, '2010-10-20', '2010-10-20'),
	('G22', 'Serviços de operacionalização de filias G2', 3, 'B01', 'Av. Joao Dias, 123                          ', 450, '2010-10-20', '2010-10-20'),
	('H22', 'Serviços de operacionalização de filias H2', 41, 'C01', 'R. Sonia, 45 - Apto 10                      ', 90, '2010-10-15', '2010-10-15'),
	('I22', 'Serviços de operacionalização de filias I2', 13, 'D01', 'Av. Celso Garcia, 1450                      ', 600, '2010-10-25', '2010-10-25'),
	('J22', 'Serviços de operacionalização de filias J2', 36, 'E01', 'R. Silvio Romero, 700                       ', 700, '2010-10-15', '2010-10-15');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;

DROP TABLE IF EXISTS `departamentostels`;
CREATE TABLE IF NOT EXISTS `departamentostels` (
  `pkdeptotel` smallint(6) NOT NULL COMMENT 'PK da Tabela',
  `fkdepto` char(3) COLLATE utf8_bin DEFAULT NULL COMMENT 'FK para a tabela departamentos',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcaddeptotel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkdeptotel`),
  KEY `ifkdepto` (`fkdepto`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `deptodetotel` FOREIGN KEY (`fkdepto`) REFERENCES `departamentos` (`pkdepto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `teltipodeptotel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos telefones (por tipo) dos departamentos onde os funcionarios trabalham.';

/*!40000 ALTER TABLE `departamentostels` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentostels` ENABLE KEYS */;

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `pkdisciplina` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkcurso` smallint(5) unsigned DEFAULT NULL COMMENT 'FK para a tabela cursos',
  `txnome` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txementa` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Texto com a ementa disciplinar',
  `qthoras` smallint(5) unsigned NOT NULL COMMENT 'Quantidade de horas-aulas (de 60 min.) que ocupa e disciplina',
  `dtcaddisciplina` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkdisciplina`),
  KEY `ifkcurso` (`fkcurso`),
  CONSTRAINT `cursodisciplina` FOREIGN KEY (`fkcurso`) REFERENCES `cursos` (`pkcurso`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das disciplinas oferecidas em cursos frequentados por funcionários.';

/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` (`pkdisciplina`, `fkcurso`, `txnome`, `txementa`, `qthoras`, `dtcaddisciplina`) VALUES
	(1, 1, 'Cálculo I', 'limites e derivadas', 180, '0000-00-00');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;

DROP TABLE IF EXISTS `editoras`;
CREATE TABLE IF NOT EXISTS `editoras` (
  `pkeditora` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeeditora` char(70) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txrazaosocial` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT 'Razão social completa.',
  `fklogradouro` int(11) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro da editora',
  `txcomplemento` varchar(25) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do CEP',
  `dtcadeditora` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkeditora`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradouroeditora` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das editoras de livros.';

/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` (`pkeditora`, `txnomeeditora`, `txrazaosocial`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcadeditora`) VALUES
	(1, 'Abril', 'Abril Editora S/C Ltda.', 450, ' 1234', '12345678', '2010-10-10'),
	(2, 'McGraw-Books', 'Editora McGraw-Books S.A.', 290, ' 234', '1245124', '2005-05-20'),
	(3, 'Nova', 'Nova Editora S.A.', 330, ' 1450', '1452142', '2006-04-20'),
	(4, 'FDT Editores', 'FDT - Editores Associados S/C Ltda.', 460, ' 1254', '98765432', '2010-10-10'),
	(5, 'Erica', 'Editora e produtora Erica S/C Ltda.', 430, ' 234', '14512412', '2010-10-10');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;

DROP TABLE IF EXISTS `editorastels`;
CREATE TABLE IF NOT EXISTS `editorastels` (
  `pkeditoratel` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkeditora` smallint(6) unsigned NOT NULL COMMENT 'FK para a tabela editoras',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadeditoratel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkeditoratel`),
  KEY `ifkeditora` (`fkeditora`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `editeditoratel` FOREIGN KEY (`fkeditora`) REFERENCES `editoras` (`pkeditora`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipoeditoratel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='editotls';

/*!40000 ALTER TABLE `editorastels` DISABLE KEYS */;
/*!40000 ALTER TABLE `editorastels` ENABLE KEYS */;

DROP TABLE IF EXISTS `empresas`;
CREATE TABLE IF NOT EXISTS `empresas` (
  `pkempresa` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeusual` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txrazaosocial` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Razão social completa',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro da empresa',
  `txcomplemento` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) DEFAULT NULL COMMENT 'Número do CEP',
  `fksetoratuacao` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do setor de atuação da empresa.',
  `dtcadempresa` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkempresa`),
  KEY `ifklogradouro` (`fklogradouro`),
  KEY `ifksetoratuacao` (`fksetoratuacao`),
  CONSTRAINT `logrempresa` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `setorempresa` FOREIGN KEY (`fksetoratuacao`) REFERENCES `setoresdeatuacao` (`pksetoratuacao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das empresas que registram a experiência profissional dos funcionarios.';

/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`pkempresa`, `txnomeusual`, `txrazaosocial`, `fklogradouro`, `txcomplemento`, `nucep`, `fksetoratuacao`, `dtcadempresa`) VALUES
	(0, 'teste', 'razão sem teste', 60, '21451', '21211111', 1, '2018-07-06'),
	(1, 'FAME', 'Fabrica Americana de Materiais Elétricos S.A.', 530, ' 1456', '11452145', 1, '2011-06-10'),
	(2, 'Lorenzetti', 'Fabrica de Produtos Elétricos Lorenzetti S/C Ltda.', 420, ' 234', '11452145', 1, '2010-10-10'),
	(3, 'Supermack', 'Equipamentos Frigoríficos  Supermack S/C Ltda.', 560, ' 234', '11451245', 1, '2012-10-10'),
	(4, 'TecMon', 'Tecnica de Montagens e Ajustes de Equip. Domiciliares S/C Ltda', 440, ' 456', '41452145', 1, '2010-10-10');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

DROP TABLE IF EXISTS `empresastels`;
CREATE TABLE IF NOT EXISTS `empresastels` (
  `pkempresatel` smallint(5) unsigned NOT NULL,
  `fkempresa` smallint(5) unsigned NOT NULL,
  `fktipotelefone` smallint(5) unsigned DEFAULT NULL,
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL,
  `dtcadempresatel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkempresatel`),
  KEY `ifkempresa` (`fkempresa`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `emprempresatel` FOREIGN KEY (`fkempresa`) REFERENCES `empresas` (`pkempresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipoempresatel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='empretls';

/*!40000 ALTER TABLE `empresastels` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresastels` ENABLE KEYS */;

DROP TABLE IF EXISTS `especmedicas`;
CREATE TABLE IF NOT EXISTS `especmedicas` (
  `pkespecialidade` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeespecialidade` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `dtcadespecmedica` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkespecialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='espmedic';

/*!40000 ALTER TABLE `especmedicas` DISABLE KEYS */;
INSERT INTO `especmedicas` (`pkespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(1, 'Clínica Geral', '2018-02-01'),
	(2, 'Pediatria', '2018-02-01'),
	(3, 'Otorrinolaringologia', '2018-02-01'),
	(4, 'Oncologia', '2018-02-01'),
	(5, 'Ortopedia', '2018-02-01'),
	(6, 'Geriatria', '2018-02-01'),
	(7, 'Urologia', '2018-02-01'),
	(8, 'Ginecologia', '2018-02-01');
/*!40000 ALTER TABLE `especmedicas` ENABLE KEYS */;

DROP TABLE IF EXISTS `estadosdauniao`;
CREATE TABLE IF NOT EXISTS `estadosdauniao` (
  `pkestadouniao` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'PK da Tabela. É a sigla do Estado da União Federativa.',
  `txnome` varchar(250) NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txcapital` varchar(250) DEFAULT NULL COMMENT 'Nome da Capital do Estado',
  `qtareatotal` decimal(15,2) DEFAULT NULL COMMENT 'Área do estado em Km2 com duas casas decimais de precisão',
  `qtpopulacao` decimal(16,0) DEFAULT NULL COMMENT 'Quantidade de pessoas moradoras do estado da união.',
  `dtcadestadouniao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkestadouniao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro com os estados da união Federativa do Brasil';

/*!40000 ALTER TABLE `estadosdauniao` DISABLE KEYS */;
INSERT INTO `estadosdauniao` (`pkestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('AC', 'Acre', 'Rio Branco', 164123.04, 829619, '2018-02-01'),
	('AL', 'Alagoas', 'Maceió', 27778.50, 3375823, '2018-02-01'),
	('AM', 'Amazonas', 'Manaus', 1559159.15, 4063614, '2018-02-01'),
	('AP', 'Amapá', 'Macapá', 142828.52, 797722, '2018-02-01'),
	('BA', 'Bahia', 'Salvador', 564733.18, 15344447, '2018-02-01'),
	('CE', 'Ceará', 'Fortaleza', 148920.47, 9020460, '2018-02-01'),
	('DF', 'Distrito Federal', 'Brasília', 5779.10, 3039444, '2018-02-01'),
	('ES', 'Espírito Santo', 'Vitória', 46095.58, 4016356, '2018-02-01'),
	('GO', 'Goiás', 'Goiânia', 340111.78, 6778772, '2018-02-01'),
	('MA', 'Maranhão', 'São Luís', 331937.45, 7000229, '2018-02-01'),
	('MG', 'Minas Gerais', 'Belo Horizonte', 586522.12, 21119536, '2018-02-01'),
	('MS', 'Mato Grosso do Sul', 'Campo Grande', 357145.53, 2713147, '2018-02-01'),
	('MT', 'Mato Grosso', 'Cuiabá', 903366.19, 3344544, '2018-02-01'),
	('PA', 'Pará', 'Belém', 1247954.67, 8366628, '2018-02-01'),
	('PB', 'Paraíba', 'João Pessoa', 56585.00, 4025558, '2018-02-01'),
	('PE', 'Pernambuco', 'Recife', 98311.62, 9473266, '2018-02-01'),
	('PI', 'Piauí', 'Teresina', 251577.74, 3219257, '2018-02-01'),
	('PR', 'Paraná', 'Curitiba', 199307.92, 11320892, '2018-02-01'),
	('RJ', 'Rio de Janeiro', 'Rio de Janeiro', 43780.17, 16718956, '2018-02-01'),
	('RN', 'Rio Grande do Norte', 'Natal', 52811.05, 3507003, '2018-02-01'),
	('RO', 'Rondônia', 'Porto Velho', 237590.55, 1805788, '2018-02-01'),
	('RR', 'Roraima', 'Boa Vista', 224300.51, 522636, '2018-02-01'),
	('RS', 'Rio Grande do Sul', 'Porto Alegre', 281730.22, 11322895, '2018-02-01'),
	('SC', 'Santa Catarina', 'Florianópolis', 95736.16, 7001161, '2018-02-01'),
	('SE', 'Sergipe', 'Aracaju', 21915.12, 2288116, '2018-02-01'),
	('SP', 'São Paulo', 'São Paulo', 248222.36, 45094866, '2018-02-01'),
	('TO', 'Tocantins', 'Palmas', 277720.52, 1550194, '2018-02-01');
/*!40000 ALTER TABLE `estadosdauniao` ENABLE KEYS */;

DROP TABLE IF EXISTS `execucoes`;
CREATE TABLE IF NOT EXISTS `execucoes` (
  `pkexecucao` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `fkservico` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do serviço feito no ônibus',
  `fkveiculo` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do veiculo no qual se executa algum serviço de menutenção.',
  `fkoficina` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando a oficina que executa serviços de manutenção.',
  `dtexecucaoservico` date NOT NULL COMMENT 'Data de execução do serviço de manutenção feito pela oficina no veículo.',
  `nudiasprevistos` smallint(6) NOT NULL COMMENT 'Prazo inicialmente previsto para o serviço.',
  `nudiasrealizados` smallint(6) NOT NULL COMMENT 'Prazo realizado na prestação de serviço.',
  `dtrealentrega` date NOT NULL COMMENT 'Data real da entrega do serviço concluído.',
  `txdescricaoproblema` varchar(250) NOT NULL COMMENT 'Descrição sem abreviações do problema percebido depois da uma primeira inspeção.',
  `txdescricaosolucao` varchar(250) NOT NULL COMMENT 'Descrição sem abreviações da solução indicada para o problema.',
  `dtcadexecucao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkexecucao`),
  KEY `ifkservico` (`fkservico`),
  KEY `ifkveiculo` (`fkveiculo`),
  KEY `ifkoficina` (`fkoficina`),
  CONSTRAINT `oficiexecucao` FOREIGN KEY (`fkoficina`) REFERENCES `oficinas` (`pkoficina`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `servicoexecucao` FOREIGN KEY (`fkservico`) REFERENCES `servicos` (`pkservico`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `veiculexecucao` FOREIGN KEY (`fkveiculo`) REFERENCES `veiculos` (`pkveiculo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das execuções de serviços automotivos nos carros dos funcionarios.';

/*!40000 ALTER TABLE `execucoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `execucoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `fabricantes`;
CREATE TABLE IF NOT EXISTS `fabricantes` (
  `pkfabricante` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnome` varchar(250) NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txrazaosocial` varchar(250) NOT NULL COMMENT 'Razão social completa.',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro do fabricante',
  `txcomplemento` varchar(80) DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) DEFAULT NULL COMMENT 'Número do CEP',
  `dtcadfabricante` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfabricante`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradfabricante` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos fabricantes que produzem veículos.';

/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` (`pkfabricante`, `txnome`, `txrazaosocial`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcadfabricante`) VALUES
	(1, 'Volkswagen', 'Fabrica de automóveis volkswagen S/C Ltda.', 530, ' 1456', '11452145', '2011-06-10'),
	(2, 'Fiat', 'Fabrica Italiana de automóveis S/C Ltda.', 420, ' 234', '11452145', '2010-10-10'),
	(3, 'GM', 'General motors do Brasil S/C Ltda.', 560, ' 234', '11451245', '2012-10-10'),
	(4, 'Ford', 'Companhia FORD de automóveis S/C Ltda.', 420, ' 234', '11452145', '2010-10-10'),
	(5, 'Hyaundai', 'Fábrica de automóveis Hyundai S/C Ltda.', 560, ' 234', '11451245', '2012-10-10'),
	(6, 'Honda', 'Companhia HONDA de veículos automotivos S/C Ltda.', 420, ' 234', '11452145', '2010-10-10'),
	(7, 'Toyota', 'Fábrica de veículos automotivos Toyota S/C Ltda.', 560, ' 234', '11451245', '2012-10-10'),
	(8, 'Mitsubishi', 'Industria de veículos Mitsubishi S/C Ltda', 440, ' 456', '41452145', '2010-10-10');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;

DROP TABLE IF EXISTS `fabricantestels`;
CREATE TABLE IF NOT EXISTS `fabricantestels` (
  `pkfabricantetel` smallint(6) NOT NULL,
  `fkfabricante` smallint(6) unsigned NOT NULL,
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL,
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL,
  `dtcadfabricantetel` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfabricantetel`),
  KEY `fkfabricante` (`fkfabricante`),
  KEY `fktipotelefone` (`fktipotelefone`),
  CONSTRAINT `fabricfabrictel` FOREIGN KEY (`fkfabricante`) REFERENCES `fabricantes` (`pkfabricante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipofabrictel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='fabritls';

/*!40000 ALTER TABLE `fabricantestels` DISABLE KEYS */;
/*!40000 ALTER TABLE `fabricantestels` ENABLE KEYS */;

DROP VIEW IF EXISTS `faturas`;
CREATE TABLE `faturas` (
	`pkfatura` SMALLINT(6) UNSIGNED NOT NULL,
	`fknotafiscal` SMALLINT(6) UNSIGNED NULL,
	`dtvencimento` DATE NULL,
	`vlfatura` DECIMAL(10,0) NULL,
	`vldesconto` DECIMAL(10,0) NOT NULL,
	`vlliquido` DECIMAL(10,0) NOT NULL,
	`vlmulta` DECIMAL(10,0) NOT NULL,
	`vljuros` DECIMAL(10,0) NOT NULL,
	`dtcriacaofatura` DATE NOT NULL,
	`dtcadfatura` DATE NOT NULL,
	`aotipo` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `faturascompras`;
CREATE TABLE IF NOT EXISTS `faturascompras` (
  `pkfatura` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fknotafiscal` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela nfvendas ou nfcompras (depende do valor de aotiponota)',
  `dtvencimento` date DEFAULT NULL COMMENT 'Data de vencimento da fatura',
  `vlfatura` decimal(10,0) DEFAULT NULL COMMENT 'Valor bruto da fatura',
  `vldesconto` decimal(10,0) NOT NULL COMMENT 'Valor de desconto',
  `vlliquido` decimal(10,0) NOT NULL COMMENT 'Valor Líquido',
  `vlmulta` decimal(10,0) NOT NULL COMMENT 'Valor da Multa por atraso de pagamento da Duplicata',
  `vljuros` decimal(10,0) NOT NULL COMMENT 'Valor do juro cobrado na data de efetivação do ágamemnto da fatura.',
  `dtcriacaofatura` date NOT NULL COMMENT 'Data de criação da fatura',
  `dtcadfatura` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfatura`),
  KEY `ifknotafiscal` (`fknotafiscal`),
  CONSTRAINT `nfcomprafat` FOREIGN KEY (`fknotafiscal`) REFERENCES `nfcompras` (`pknunfcompra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das faturas emitidas para recebimento de valores emitidos contra notas fiscais de compras';

/*!40000 ALTER TABLE `faturascompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturascompras` ENABLE KEYS */;

DROP TABLE IF EXISTS `faturasvendas`;
CREATE TABLE IF NOT EXISTS `faturasvendas` (
  `pkfatura` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fknotafiscal` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela nfvendas ou nfcompras (depende do valor de aotiponota)',
  `dtvencimento` date DEFAULT NULL COMMENT 'Data de vencimento da fatura',
  `vlfatura` decimal(10,0) DEFAULT NULL COMMENT 'Valor bruto da fatura',
  `vldesconto` decimal(10,0) NOT NULL COMMENT 'Valor de desconto',
  `vlliquido` decimal(10,0) NOT NULL COMMENT 'Valor Líquido',
  `vlmulta` decimal(10,0) NOT NULL COMMENT 'Valor da Multa por atraso de pagamento da Duplicata',
  `vljuros` decimal(10,0) NOT NULL COMMENT 'Valor do juro cobrado na data de efetivação do ágamemnto da fatura.',
  `dtcriacaofatura` date NOT NULL COMMENT 'Data de criação da fatura',
  `dtcadfatura` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfatura`),
  KEY `ifknotafiscal` (`fknotafiscal`),
  CONSTRAINT `nfvendafat` FOREIGN KEY (`fknotafiscal`) REFERENCES `nfvendas` (`pknfvenda`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das faturas emitidas para recebimento de valores emitidos contra notas fiscais de vendas.';

/*!40000 ALTER TABLE `faturasvendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturasvendas` ENABLE KEYS */;

DROP TABLE IF EXISTS `feitospor`;
CREATE TABLE IF NOT EXISTS `feitospor` (
  `pkfeitospor` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela',
  `fkoficina` smallint(5) unsigned NOT NULL COMMENT 'FK indicando a oficina que executa serviços de manutenção.',
  `fkservico` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o serviço que é feito pelas oficinas.',
  `txdescricaocomplementar` varchar(250) DEFAULT NULL COMMENT 'Descrição complementar do serviço prestado no veículo pela oficina (se preciso).',
  `dtcadfeitospor` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfeitospor`),
  KEY `ifkoficina` (`fkoficina`),
  KEY `ifkservico` (`fkservico`),
  CONSTRAINT `oficinafeitospor` FOREIGN KEY (`fkoficina`) REFERENCES `oficinas` (`pkoficina`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `servicofeitospor` FOREIGN KEY (`fkservico`) REFERENCES `servicos` (`pkservico`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro de serviços prestados pela oficinas nos ve';

/*!40000 ALTER TABLE `feitospor` DISABLE KEYS */;
/*!40000 ALTER TABLE `feitospor` ENABLE KEYS */;

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `pkfornecedor` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnome` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txrazaosocial` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT 'Razão social completa.',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro do fornecedor',
  `txcomplemento` varchar(25) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do CEP',
  `vllimitevenda` double(15,2) unsigned NOT NULL COMMENT 'Valor limite de venda do fornecedor',
  `dtcadfornecedor` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfornecedor`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradourofornecedor` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='forneced';

/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` (`pkfornecedor`, `txnome`, `txrazaosocial`, `fklogradouro`, `txcomplemento`, `nucep`, `vllimitevenda`, `dtcadfornecedor`) VALUES
	(1, 'Fazenda Rio Branco', 'Latic', 370, ' Km 350', '1234234', 100000.00, '2008-01-20'),
	(2, 'Leite Mont Blanc', 'Laticinio Mont Blanc S/C Ltda.', 590, ' Km 289', '12345678', 120000.00, '2010-10-10'),
	(3, 'FDT', 'FDT - Editores Associados S/C Ltda.', 460, ' 1254', '14514251', 15000.00, '2010-10-10'),
	(4, 'Hamburgueria Girafa', 'Restaurante Franco-Italiano Girafa S/C Ltda.', 70, ' 4345', '12345678', 5000.00, '1998-10-10');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;

DROP TABLE IF EXISTS `fornecedorestels`;
CREATE TABLE IF NOT EXISTS `fornecedorestels` (
  `pkfornecedortel` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkfornecedor` smallint(6) unsigned NOT NULL COMMENT 'FK para a tabela fornecedores',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadfornecedortel` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfornecedortel`),
  KEY `ifkfornecedor` (`fkfornecedor`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `fornfornecedortel` FOREIGN KEY (`fkfornecedor`) REFERENCES `fornecedores` (`pkfornecedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipoforncedortel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='fornetls';

/*!40000 ALTER TABLE `fornecedorestels` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedorestels` ENABLE KEYS */;

DROP TABLE IF EXISTS `fornecimentos`;
CREATE TABLE IF NOT EXISTS `fornecimentos` (
  `pkfornecimento` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela.',
  `fkproduto` smallint(5) unsigned NOT NULL COMMENT 'FK indicando o código do produto.',
  `fkfornecedor` smallint(5) unsigned NOT NULL COMMENT 'FK indicando o código do fornecedor.',
  `dtultimofornecimento` date NOT NULL COMMENT 'Data do último fornecimento consultado para compra.',
  `vlultimofornecimento` decimal(15,2) NOT NULL COMMENT 'Valor do último fornecimento consultado para compra.',
  `dtcadfornecimento` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfornecimento`),
  KEY `ifkproduto` (`fkproduto`),
  KEY `ifkfornecedor` (`fkfornecedor`),
  CONSTRAINT `fornfornecimento` FOREIGN KEY (`fkfornecedor`) REFERENCES `fornecedores` (`pkfornecedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodfornecimento` FOREIGN KEY (`fkproduto`) REFERENCES `produtos` (`pkproduto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro com as conexões de fornecimentos.';

/*!40000 ALTER TABLE `fornecimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecimentos` ENABLE KEYS */;

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `pkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txprenome` varchar(60) COLLATE utf8_bin NOT NULL COMMENT 'Pre-nomes doa funcionaronários, completo e sem abreviações',
  `txsobrenome` varchar(40) COLLATE utf8_bin NOT NULL COMMENT 'Sobrenome completo (sem abreviações)',
  `fkdepto` char(3) COLLATE utf8_bin NOT NULL COMMENT 'FK com o código do departamento onde trabalha',
  `fkfuncao` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código da função',
  `nuramal` char(4) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do ramal telefônico do funcionario',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro de moradia do Funcionário',
  `txcomplemento` varchar(25) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do CEP',
  `dtcontratacao` date NOT NULL COMMENT 'Data de contratação',
  `fkniveleducacao` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do nível de educação (escolaridade)',
  `aosexo` char(1) COLLATE utf8_bin NOT NULL COMMENT 'Atributo Operacional indicando o Sexo como Masculino e Feminino',
  `dtnascimento` date NOT NULL COMMENT 'Data de nascimento',
  `txresenha` text COLLATE utf8_bin DEFAULT NULL COMMENT 'Texto descrevendo a personalidade e dinâmica profissional do funcionário',
  `vlsalario` decimal(9,2) unsigned NOT NULL COMMENT 'Valor do salário.',
  `vlbonus` decimal(9,2) unsigned NOT NULL COMMENT 'Valor do Bônus de ganho (se não houver deve ser 0-Zero).',
  `vlcomissao` decimal(9,2) unsigned NOT NULL COMMENT 'Valor de Comissão (se não houver deve ser 0-Zero)',
  `dtcadfuncionario` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfuncionario`),
  KEY `ifkfuncao` (`fkfuncao`),
  KEY `ifkniveleducacao` (`fkniveleducacao`),
  KEY `ifkdepto` (`fkdepto`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `deptofuncionario` FOREIGN KEY (`fkdepto`) REFERENCES `departamentos` (`pkdepto`) ON UPDATE CASCADE,
  CONSTRAINT `funcaofuncionario` FOREIGN KEY (`fkfuncao`) REFERENCES `funcoes` (`pkfuncao`) ON DELETE SET NULL,
  CONSTRAINT `logradfuncionario` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `niveleducfuncionario` FOREIGN KEY (`fkniveleducacao`) REFERENCES `niveisdeeducacao` (`pkniveleducacao`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos funcionários de uma empresa.';

/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` (`pkfuncionario`, `txprenome`, `txsobrenome`, `fkdepto`, `fkfuncao`, `nuramal`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcontratacao`, `fkniveleducacao`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `dtcadfuncionario`) VALUES
	(1, 'Cristiane', 'Ines Vlack', 'A01', 1, '3978', 350, ' 1243', '12345678', '1995-01-01', 8, 'F', '1963-08-24', '', 152750.00, 1000.00, 4220.00, '2018-02-04'),
	(2, 'Miguel', 'Lourenço Thompson', 'B01', 3, '3476', 470, ' 1492', '12345678', '2003-10-10', 8, 'M', '1978-02-02', '', 94250.00, 800.00, 3300.00, '2018-02-04'),
	(3, 'Sabrina', 'Alvarenga', 'C01', 2, '4738', 470, ' 234', '12345678', '2005-04-05', 8, 'F', '1971-05-11', '', 98250.00, 800.00, 3060.00, '2018-02-04'),
	(4, 'José', 'Maida Junior', 'E11', 10, '3332', 470, ' 234', '12345678', '1994-09-12', 9, 'F', '1961-04-21', '', 35900.00, 300.00, 1272.00, '2018-02-04'),
	(5, 'João', 'Benedito Geyer', 'E01', 5, '6789', 610, ' 6500', '12345678', '1979-08-17', 6, 'M', '1955-09-15', '', 80175.00, 800.00, 3214.00, '2018-02-04'),
	(6, 'Irving', 'Frederic Stern', 'D11', 4, '6423', 380, ' 125 - 15And Ap 156', '12345678', '2003-09-14', 6, 'M', '1975-07-07', '', 72250.00, 500.00, 2580.00, '2018-02-04'),
	(7, 'Eva', 'Podalski', 'D01', 10, '7831', 360, ' 1400', '12345678', '2005-09-30', 6, 'F', '2003-05-26', '', 96170.00, 700.00, 2893.00, '2018-02-04'),
	(8, 'Ramlal', 'Vencilaus Mehta', 'E21', 10, '9990', 520, ' 1245', '12345678', '1995-07-07', 6, 'M', '1962-08-11', '', 39950.00, 400.00, 1596.00, '2018-02-04'),
	(9, 'Eleanor', 'Wishburn Henderson', 'E11', 10, '5498', 390, ' 150', '12345678', '2000-08-15', 6, 'F', '1971-05-15', '', 89750.00, 600.00, 2380.00, '2018-02-04'),
	(10, 'Theodore', 'Frankling Roosevelt', 'E21', 6, '0972', 600, ' 985', '12345678', '2000-06-19', 4, 'M', '1980-12-18', '', 86150.00, 500.00, 2092.00, '2018-02-04'),
	(11, 'Lucas', 'Nogueira Garcez', 'A01', 7, '3490', 570, ' 25 - Vila Siqueira', '12345678', '1988-05-16', 9, 'M', '1959-11-05', '', 66500.00, 900.00, 3720.00, '2018-02-04'),
	(12, 'José', 'Carlos de Figueiredo Ferraz', 'A01', 8, '2167', 590, ' 35 - Camp', '12345678', '1993-12-05', 4, 'M', '1972-10-18', '', 49250.00, 600.00, 2340.00, '2018-02-04'),
	(13, 'Mario', 'José Quintana', 'C01', 7, '4578', 580, ' 345', '12345678', '2001-07-28', 6, 'F', '1955-09-15', '', 73800.00, 500.00, 1904.00, '2018-02-04'),
	(15, 'Bruce', 'Willian Adamson', 'A01', 7, '4510', 490, ' 452', '12345678', '2002-02-12', 6, 'M', '1977-05-17', '', 55280.00, 500.00, 2022.00, '2018-02-04'),
	(16, 'Elizabete', 'Renilda Tavares', 'D11', 6, '3782', 550, ' 567', '12345678', '2006-10-11', 7, 'F', '1980-04-12', '', 62250.00, 400.00, 1780.00, '2018-02-04'),
	(17, 'Massatoshi', 'Jung Yoshimura', 'D11', 7, '2890', 540, ' 234', '12345678', '1999-09-15', 6, 'M', '1981-01-05', '', 44680.00, 500.00, 1974.00, '2018-02-04'),
	(18, 'Marília', 'Macorin Gomes', 'D11', 7, '1682', 450, ' 1234', '12345678', '2003-07-07', 7, 'F', '1979-02-21', '', 51340.00, 500.00, 1707.00, '2018-02-04'),
	(19, 'Jaime', 'Afonso Pereira', 'D11', 9, '2986', 290, ' 234', '12345678', '2004-07-26', 6, 'M', '1982-06-25', '', 50450.00, 400.00, 1636.00, '2018-02-04'),
	(20, 'David ', 'Luis de Souza', 'D11', 9, '4501', 330, ' 1450', '12345678', '2002-03-03', 6, 'M', '1971-05-29', '', 57740.00, 600.00, 2217.00, '2018-02-04'),
	(21, 'Maria', 'Teresa de Souza', 'D11', 10, '0942', 460, ' 1254', '12345678', '1998-04-11', 7, 'M', '2003-02-23', '', 68270.00, 400.00, 1462.00, '2018-02-04'),
	(22, 'Walter', 'Smith Lutz', 'D11', 10, '0672', 430, ' 234', '12345678', '1998-08-29', 8, 'F', '1978-03-19', '', 49840.00, 600.00, 2387.00, '2018-02-04'),
	(23, 'Jeferson', 'Brito Alvarenga', 'A11', 7, '2094', 530, ' 1456', '12345678', '1996-11-21', 6, 'M', '1980-05-30', '', 42180.00, 400.00, 1774.00, '2018-02-04'),
	(24, 'Silvia', 'Salvatore Marino', 'D01', 10, '3780', 420, ' 234', '12345678', '2004-12-05', 7, 'M', '2002-03-31', '', 48760.00, 600.00, 2301.00, '2018-02-04'),
	(25, 'Daniel', 'Luis da Silva', 'D01', 9, '0961', 560, ' 234', '12345678', '1999-10-30', 5, 'M', '1969-11-12', '', 49180.00, 400.00, 1534.00, '2018-02-04'),
	(26, 'Sibil', 'Louise Johnson', 'D01', 9, '8953', 440, ' 456', '12345678', '2005-09-11', 6, 'F', '1976-10-05', '', 47250.00, 300.00, 1380.00, '2018-02-04'),
	(27, 'Silvio', 'Luis Pereira', 'D01', 10, '9001', 100, ' 34000', '12345678', '2006-09-30', 5, 'F', '2003-05-26', '', 37380.00, 500.00, 2190.00, '2018-02-04'),
	(28, 'Suelen', 'Schneider', 'E11', 10, '8997', 490, ' 452', '12345678', '1997-03-24', 7, 'F', '1981-05-21', '', 36250.00, 500.00, 2100.00, '2018-02-04'),
	(29, 'João', 'Medina Parker', 'E11', 10, '4502', 350, ' 1243', '12345678', '2006-05-30', 9, 'M', '1985-07-09', '', 35340.00, 300.00, 1227.00, '2018-02-04'),
	(30, 'Philip', 'Willians Brown', 'E11', 10, '2095', 550, ' 567', '12345678', '2002-06-19', 6, 'M', '1976-10-27', '', 37750.00, 400.00, 1420.00, '2018-02-04'),
	(31, 'Willian', 'Lee', 'E21', 8, '2103', 600, ' 985', '12345678', '2006-02-23', 7, 'M', '1971-07-18', '', 45370.00, 500.00, 2030.00, '2018-02-04'),
	(32, 'Roberto', 'Gabriel Sales', 'E21', 9, '5698', 590, ' 35 - Camp', '12345678', '1977-05-05', 6, 'M', '1956-05-17', '', 43840.00, 500.00, 1907.00, '2018-02-04'),
	(33, 'Silas', 'Ernest Hemingway', 'A01', 8, '3978', 470, ' 1492', '12345678', '1995-01-01', 8, 'F', '1973-08-14', '', 46500.00, 1000.00, 4220.00, '2018-02-04'),
	(34, 'Ataulfo', 'Gregório Alves', 'A01', 7, '2167', 470, ' 234', '12345678', '2002-05-05', 8, 'M', '1972-10-18', '', 39250.00, 600.00, 2340.00, '2018-02-04'),
	(35, 'Ethan', 'Natan Zurke', 'C01', 8, '1793', 470, ' 234', '12345678', '2006-12-15', 8, 'F', '1976-01-19', '', 68420.00, 600.00, 2274.00, '2018-02-04'),
	(36, 'Hisoshi', 'Yamamoto', 'D11', 7, '2890', 470, ' 234', '12345678', '2005-09-15', 6, 'M', '1981-01-05', '', 64680.00, 500.00, 1974.00, '2018-02-04'),
	(37, 'Roberta', 'Maria Zomer', 'D11', 8, '0672', 610, ' 6500', '12345678', '2005-08-29', 8, 'F', '1978-03-19', '', 69840.00, 600.00, 2387.00, '2018-02-04'),
	(38, 'Ruiz', 'Monteverde', 'D01', 8, '3780', 610, ' 6500', '12345678', '2004-12-05', 7, 'M', '1984-03-31', '', 37760.00, 600.00, 2301.00, '2018-02-04'),
	(39, 'Elijah', 'Schwartz Mendelssohn', 'E11', 9, '8997', 360, ' 1400', '12345678', '1997-03-24', 7, 'F', '1966-03-28', '', 46250.00, 500.00, 2100.00, '2018-02-04'),
	(40, 'Michelle', 'Souza Ramos', 'E11', 9, '3332', 520, ' 1245', '12345678', '1994-09-12', 9, 'F', '1961-04-21', '', 35900.00, 300.00, 1272.00, '2018-02-04'),
	(41, 'Helena', 'Wang Duke', 'E21', 9, '2103', 600, ' 985', '12345678', '2006-02-23', 7, 'F', '1971-07-18', '', 35370.00, 500.00, 2030.00, '2018-02-04'),
	(42, 'Pedro', 'Ramon Alonzo', 'E21', 10, '5698', 590, ' 35 - Camp', '12345678', '1997-07-05', 6, 'M', '1956-05-17', '', 31840.00, 500.00, 1907.00, '2018-02-04'),
	(43, 'Ramon', 'Faria Bueno', 'D01', 9, '2145', 570, ' 25 - Vila Siqueira', '12345678', '2010-05-20', 4, 'M', '1965-08-15', '', 1250.00, 100.00, 500.00, '2018-02-04'),
	(44, 'Theodoro', 'Abreu da Silva', 'A01', 10, '3232', 570, ' 25 - Vila Siqueira', '12345678', '2010-05-10', 4, 'M', '1985-10-20', '', 1600.00, 200.00, 200.00, '2018-02-04'),
	(45, 'Louis', 'Daniel Armstrong', 'A01', 1, '452', 590, ' 35 - Camp', '12345678', '2002-10-20', 8, 'M', '1958-05-15', '', 2500.00, 500.00, 400.00, '2018-02-04'),
	(46, 'Ella', 'Jane Fitzgerald', 'B01', 1, '452', 600, ' 985', '12345678', '2002-10-20', 8, 'F', '1958-05-14', '', 2500.00, 500.00, 400.00, '2018-02-04'),
	(47, 'Leonidas', 'Mecenas Polidoro', 'D11', 5, '666', 600, ' 985', '12345678', '1901-10-10', 7, 'M', '1960-05-05', '', 12000.00, 1000.00, 500.00, '2018-02-04');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;

DROP TABLE IF EXISTS `funcionariosplanos`;
CREATE TABLE IF NOT EXISTS `funcionariosplanos` (
  `pkfuncionarioplano` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela.',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'FK indicando o código do funcionário.',
  `fkplanodesaude` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código do plano de saúde.',
  `dtvinculacao` date DEFAULT NULL COMMENT 'Parte da PK é a Data de vinculação do funcionário ao plano de saúde.',
  `dtdesligamento` date DEFAULT NULL COMMENT 'Data de desligamento do funcionário ao plano de saúde',
  `dtcadfuncionarioplano` datetime NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfuncionarioplano`),
  KEY `ifkplanodesaude` (`fkplanodesaude`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `funcfuncionarioplano` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plansaudfuncionarioplano` FOREIGN KEY (`fkplanodesaude`) REFERENCES `planosdesaude` (`pkplanodesaude`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='funplano';

/*!40000 ALTER TABLE `funcionariosplanos` DISABLE KEYS */;
INSERT INTO `funcionariosplanos` (`pkfuncionarioplano`, `fkfuncionario`, `fkplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncionarioplano`) VALUES
	(1, 15, 2, '2006-10-10', '2007-10-10', '2018-02-12 00:00:00'),
	(2, 15, 4, '2005-10-10', '2006-10-10', '2018-02-12 00:00:00'),
	(3, 1, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(4, 2, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(5, 3, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(6, 4, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(7, 5, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(8, 6, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(9, 7, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(10, 8, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(11, 9, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(12, 10, 2, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(13, 11, 2, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(14, 12, 2, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(15, 13, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(16, 15, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(17, 16, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(18, 17, 2, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(19, 18, 2, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(20, 19, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(21, 20, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(22, 21, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(23, 22, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(24, 23, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(25, 24, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(26, 25, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(27, 26, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(28, 27, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(29, 28, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(30, 29, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(31, 30, 1, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(32, 31, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(33, 32, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(34, 33, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(35, 34, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(36, 35, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(37, 36, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(38, 37, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(39, 38, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(40, 39, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(41, 40, 4, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(42, 41, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(43, 42, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(44, 43, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(45, 44, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(46, 45, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(47, 46, 5, '2015-10-10', NULL, '2017-10-10 00:00:00'),
	(48, 47, 5, '2015-10-10', NULL, '2017-10-10 00:00:00');
/*!40000 ALTER TABLE `funcionariosplanos` ENABLE KEYS */;

DROP TABLE IF EXISTS `funcionariostels`;
CREATE TABLE IF NOT EXISTS `funcionariostels` (
  `pkfuncionariotel` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'FK para a tabela funcionarios',
  `fktipotelefone` smallint(5) unsigned DEFAULT NULL COMMENT 'FK para a tabela telefonestipos',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadfuncionariotel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfuncionariotel`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `funcfuncionariotel` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `telstipofuncionariotel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='funcitls';

/*!40000 ALTER TABLE `funcionariostels` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionariostels` ENABLE KEYS */;

DROP TABLE IF EXISTS `funcoes`;
CREATE TABLE IF NOT EXISTS `funcoes` (
  `pkfuncao` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomefuncao` varchar(60) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações',
  `dtcadfuncao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkfuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='funcoesxx';

/*!40000 ALTER TABLE `funcoes` DISABLE KEYS */;
INSERT INTO `funcoes` (`pkfuncao`, `txnomefuncao`, `dtcadfuncao`) VALUES
	(1, 'Presidente', '2018-02-01'),
	(2, 'Diretor', '2018-02-01'),
	(3, 'Gerente', '2018-02-01'),
	(4, 'Chefe de equipe', '2018-02-01'),
	(5, 'Analista de sistema senior', '2018-02-01'),
	(6, 'Analista de sistema pleno', '2018-02-01'),
	(7, 'Analista de sistema junior', '2018-02-01'),
	(8, 'Programador senior', '2018-02-01'),
	(9, 'Programador pleno', '2018-02-01'),
	(10, 'Programador trainee', '2018-02-01');
/*!40000 ALTER TABLE `funcoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `habilitacoes`;
CREATE TABLE IF NOT EXISTS `habilitacoes` (
  `pkhabilitacao` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkcurso` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do curso.',
  `fkprofessor` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK indicando o código do professor.',
  `dthabilitacao` date NOT NULL COMMENT 'Parte da PK é a Data de habilitação do professor para ministrar a disciplina.',
  `dtcapacitacao` date NOT NULL COMMENT 'Data quando o professor conseguiu a capacitação para ministrar a disciplina.',
  `dtcadhabilitacao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkhabilitacao`),
  UNIQUE KEY `uhabilitacao` (`fkcurso`,`fkprofessor`),
  KEY `ifkcurso` (`fkcurso`),
  KEY `ifkprofessor` (`fkprofessor`),
  CONSTRAINT `cursohabitlitacoes` FOREIGN KEY (`fkcurso`) REFERENCES `cursos` (`pkcurso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `professorhabilitacoes` FOREIGN KEY (`fkprofessor`) REFERENCES `professores` (`pkprofessor`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='habilita';

/*!40000 ALTER TABLE `habilitacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilitacoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `historicoprofissional`;
CREATE TABLE IF NOT EXISTS `historicoprofissional` (
  `pkhistorico` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'FK para tabela funcionários.',
  `fkempresa` smallint(5) unsigned NOT NULL COMMENT 'FK para tabela empresas.',
  `fktarefa` smallint(6) unsigned NOT NULL COMMENT 'FK para tabela tarefas',
  `dtinicio` date NOT NULL COMMENT 'Data de início de atividade do funcionário na empresa (na atividade)',
  `dttermino` date NOT NULL COMMENT 'Data de termino de atividade do funcionário na empresa (na atividade)',
  `dtcadhistorico` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkhistorico`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  KEY `ifkempresa` (`fkempresa`),
  KEY `ifktarefa` (`fktarefa`),
  CONSTRAINT `emprhistprofissonal` FOREIGN KEY (`fkempresa`) REFERENCES `empresas` (`pkempresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funchistprofissonal` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tarefahistprofissional` FOREIGN KEY (`fktarefa`) REFERENCES `tarefas` (`pktarefa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro com as passagens de um funcionário pelas empresas.';

/*!40000 ALTER TABLE `historicoprofissional` DISABLE KEYS */;
/*!40000 ALTER TABLE `historicoprofissional` ENABLE KEYS */;

DROP TABLE IF EXISTS `instensinoniveiseduc`;
CREATE TABLE IF NOT EXISTS `instensinoniveiseduc` (
  `pkinstensinoniveiseduc` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkinstituicao` smallint(5) unsigned NOT NULL COMMENT 'FK para a tabela instituições de ensino',
  `fkniveiseducacao` smallint(5) unsigned NOT NULL COMMENT 'FK para a tabela niveisdeeducacao.',
  `nutelefone` char(15) NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadinstensniveleduc` date NOT NULL COMMENT 'Data de geração do registro na tabela.',
  PRIMARY KEY (`pkinstensinoniveiseduc`),
  KEY `ifkinstituicao` (`fkinstituicao`),
  KEY `ifkniveiseducacao` (`fkniveiseducacao`),
  CONSTRAINT `institinstiteduc` FOREIGN KEY (`fkinstituicao`) REFERENCES `instituicoesensino` (`pkinstituicao`) ON UPDATE CASCADE,
  CONSTRAINT `niveisinstiteduc` FOREIGN KEY (`fkniveiseducacao`) REFERENCES `niveisdeeducacao` (`pkniveleducacao`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos relacionamentos entre instituições de ensino e os níveis de educação.';

/*!40000 ALTER TABLE `instensinoniveiseduc` DISABLE KEYS */;
/*!40000 ALTER TABLE `instensinoniveiseduc` ENABLE KEYS */;

DROP TABLE IF EXISTS `instituicoesensino`;
CREATE TABLE IF NOT EXISTS `instituicoesensino` (
  `pkinstituicao` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeinstituicao` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro da instituição de ensino.',
  `txcomplemento` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do CEP do logradouro da instituição de ensino',
  `dtfundacao` date NOT NULL COMMENT 'Data de fundação da Instituição de Ensino',
  `dtcadinstituicaoensino` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkinstituicao`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradinstensino` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='instensi';

/*!40000 ALTER TABLE `instituicoesensino` DISABLE KEYS */;
INSERT INTO `instituicoesensino` (`pkinstituicao`, `txnomeinstituicao`, `fklogradouro`, `txcomplemento`, `nucep`, `dtfundacao`, `dtcadinstituicaoensino`) VALUES
	(1, 'Faculdade de Belas Artes', 60, ' 1500', '12767890', '1901-01-10', '2001-01-10'),
	(2, 'Faculdade de Arqitetura de Urbanismo de S', 120, ' 500', '', '1901-01-10', '2001-01-10'),
	(3, 'Escola Politecnica da USP', 10, ' 564 - sob a escada', '14514251', '1901-01-10', '2001-10-10'),
	(4, 'Escola de 1 e 2 Grau Amadeu Amaral', 500, ' 1200', '14215125', '1901-01-10', '1996-01-01'),
	(5, 'Escola Superior de Propaganda e Marketing', 470, ' 3456', '15642854', '1901-01-10', '2010-10-10'),
	(6, 'Faculdade de Medicina da USP', 300, '1452', '04512451', '1890-01-20', '2001-07-13');
/*!40000 ALTER TABLE `instituicoesensino` ENABLE KEYS */;

DROP TABLE IF EXISTS `instituicoestels`;
CREATE TABLE IF NOT EXISTS `instituicoestels` (
  `pkinstituicaotel` smallint(6) NOT NULL COMMENT 'PK da Tabela',
  `fkinstituicao` smallint(6) NOT NULL COMMENT 'FK para a tabela instituições de ensino',
  `fktipotelefone` smallint(6) DEFAULT NULL COMMENT 'FK para a tabela telefonestipos',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadinsttel` date NOT NULL COMMENT 'Data de geração do registro na tabela.',
  PRIMARY KEY (`pkinstituicaotel`),
  KEY `fktipotelefone` (`fktipotelefone`),
  KEY `ifkinstituicao` (`fkinstituicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='institls';

/*!40000 ALTER TABLE `instituicoestels` DISABLE KEYS */;
/*!40000 ALTER TABLE `instituicoestels` ENABLE KEYS */;

DROP TABLE IF EXISTS `inventarios`;
CREATE TABLE IF NOT EXISTS `inventarios` (
  `pkinventario` int(10) unsigned NOT NULL,
  `fkproduto` smallint(6) unsigned NOT NULL DEFAULT 0 COMMENT 'Parte da PK e FK indicando o código do produto.',
  `fkfuncionario` smallint(6) unsigned NOT NULL DEFAULT 0 COMMENT 'Parte da PK e FK indicando o código do funcionário.',
  `dtinventario` date NOT NULL COMMENT 'Parte da PK é a Data de realização do inventário de estoque.',
  `qtestoque` decimal(12,2) NOT NULL COMMENT 'Quantidade contabilizada do item de produto.',
  `txlocal` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'Local de realização do Inventário',
  `dtcadinventario` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkinventario`),
  KEY `ifkproduto` (`fkproduto`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `funcionarioinventario` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `produtoinventario` FOREIGN KEY (`fkproduto`) REFERENCES `produtos` (`pkproduto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='inventar';

/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
INSERT INTO `inventarios` (`pkinventario`, `fkproduto`, `fkfuncionario`, `dtinventario`, `qtestoque`, `txlocal`, `dtcadinventario`) VALUES
	(1, 1, 4, '2018-04-10', 2000.00, 'Galpão principal do estoque da fábrica', '2018-04-12'),
	(2, 2, 4, '2018-04-10', 1500.00, 'Galpão principal do estoque da fábrica', '2018-04-12'),
	(3, 2, 19, '2018-04-10', 4000.00, 'Galpão principal do estoque da fábrica', '2018-04-12'),
	(4, 4, 9, '2018-04-10', 1500.00, 'Galpão principal do estoque da fábrica', '2018-04-12'),
	(5, 4, 10, '2018-04-10', 1800.00, 'Galpão principal do estoque da fábrica', '2018-04-12');
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `pklivro` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txtituloacervo` varchar(90) COLLATE utf8_bin NOT NULL COMMENT 'Texto com o título do acervo',
  `fkeditora` smallint(5) unsigned NOT NULL COMMENT 'FK com o código da editora que publicou o livro.',
  `dtpublicacao` date DEFAULT NULL COMMENT 'Data de publicação do Livro',
  `nuanopublicacao` year(4) DEFAULT NULL COMMENT 'Ano de Publicação do Livro',
  `qtexemplaresacervo` smallint(6) unsigned DEFAULT NULL COMMENT 'Quantidade total do livro no acervo, é alterada no movimento de retirada',
  `qtexemplaresconsulta` smallint(6) unsigned DEFAULT NULL COMMENT 'Quantidade mínima (em consulta) para o livro no acervo',
  `dtcadlivro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pklivro`),
  KEY `ifkeditora` (`fkeditora`),
  CONSTRAINT `editoralivro` FOREIGN KEY (`fkeditora`) REFERENCES `editoras` (`pkeditora`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='livrosxx';

/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` (`pklivro`, `txtituloacervo`, `fkeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(1, 'Os cem anos sem anjos', 1, '2018-05-22', '2018', 75, 30, '2018-05-22');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;

DROP TABLE IF EXISTS `logradouros`;
CREATE TABLE IF NOT EXISTS `logradouros` (
  `pklogradouro` int(10) unsigned NOT NULL COMMENT 'PK da tabela.',
  `fkcidade` smallint(6) unsigned NOT NULL DEFAULT 0,
  `txnomelogradouro` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'Texto com o nome do logradouro com o tipo (praça, rua, etc.) indicado.',
  `dtcadlogradouro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pklogradouro`),
  KEY `ifkcidade` (`fkcidade`) USING BTREE,
  CONSTRAINT `logradourosfk1` FOREIGN KEY (`fkcidade`) REFERENCES `cidades` (`pkcidade`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='logradou';

/*!40000 ALTER TABLE `logradouros` DISABLE KEYS */;
INSERT INTO `logradouros` (`pklogradouro`, `fkcidade`, `txnomelogradouro`, `dtcadlogradouro`) VALUES
	(10, 2, 'R. dos alfineiros', '1996-01-01'),
	(20, 1, 'Av. Horacio Soares', '1998-10-10'),
	(40, 5, 'R. Luiz Antonio', '2000-05-29'),
	(50, 4, 'Av. Ricardo Berrini', '2000-06-14'),
	(60, 2, 'Av. Universitária', '2001-01-10'),
	(70, 1, 'R. Brigadeiro Luis Antonio', '2001-01-10'),
	(80, 5, 'R. 12 de Outubro', '2001-05-16'),
	(90, 4, 'R. Troncoso', '2001-05-20'),
	(100, 5, 'Rod. Anchieta', '2001-05-20'),
	(110, 1, 'R. Miguel Faria Lima', '2001-08-21'),
	(120, 1, 'Av. Politécnica', '2001-10-10'),
	(130, 3, 'R. das Laranjeiras', '2002-01-21'),
	(140, 1, 'R. Direita', '2002-05-13'),
	(150, 3, 'R. Roberto Simonsen', '2002-05-16'),
	(160, 4, 'R. dos Alfineiros', '2002-05-28'),
	(170, 4, 'R Quintino Bocaiuva', '2002-10-21'),
	(180, 6, 'Av. João Cabral de Mello Netto', '2003-04-23'),
	(190, 6, 'R. Sta Maria da Conceição', '2003-05-27'),
	(200, 1, 'R. Tavares de Miranda', '2004-02-10'),
	(210, 1, 'R. MMDC', '2004-02-14'),
	(220, 3, 'Av. Celso Garcia', '2005-01-10'),
	(230, 2, 'R. Circular', '2005-02-16'),
	(240, 2, 'Al. das Trombetas', '2005-03-12'),
	(250, 3, 'R. Celso Garcia', '2005-03-25'),
	(260, 3, 'Av. dos Autonomistas', '2005-05-12'),
	(270, 6, 'R. Brigadeiro Faria Lima', '2005-05-14'),
	(280, 3, 'R. Troncoso Perez', '2005-05-20'),
	(290, 1, 'Av. dos Timbiras', '2005-05-20'),
	(300, 1, 'Av. Campos Elíseos', '2005-05-28'),
	(310, 5, 'Av. Filadélfia', '2005-09-18'),
	(320, 2, 'Av. Maranhão', '2005-12-13'),
	(330, 1, 'Av. Liberdade', '2006-04-20'),
	(340, 1, 'R. Almeida Lima Gutemberg', '2006-05-13'),
	(350, 2, 'Al. Pamplona', '2007-01-20'),
	(360, 1, 'R. Augusta', '2007-02-02'),
	(370, 6, 'Estrada Ibitirama', '2008-01-20'),
	(380, 2, 'Praça Pérola Bygton', '2009-10-10'),
	(390, 1, 'R. Paulo Sá', '2009-12-10'),
	(400, 4, 'R. Altino Arantes', '2010-02-12'),
	(410, 6, 'R. Rui Barbosa', '2010-02-12'),
	(420, 1, 'R. dos Alfineiros', '2010-10-10'),
	(430, 3, 'R. São Joaquim', '2010-10-10'),
	(440, 4, 'R. Alba', '2010-10-10'),
	(450, 1, 'Av. Rubens de Almeida Falcão', '2010-10-10'),
	(460, 7, 'Av. Rio Branco', '2010-10-10'),
	(470, 2, 'Av. Ruben Berta', '2010-10-10'),
	(480, 1, 'R. dos Maias', '2010-10-10'),
	(490, 2, 'Av. Arthur Thomas', '2010-10-10'),
	(500, 1, 'R. Bela Cintra', '2010-10-10'),
	(510, 5, 'R. Quintino Bocaiuva', '2010-10-10'),
	(520, 1, 'R. Pamplona', '2011-06-01'),
	(530, 1, 'R. Bresser', '2011-06-10'),
	(540, 3, 'R. Cristóvão Bueno', '2011-10-22'),
	(550, 2, 'R. Gaspar Bueno de Almeida', '2011-10-24'),
	(560, 1, 'R. Paraisópolis', '2012-10-10'),
	(570, 1, 'Rod. Anhaguera', '2012-10-10'),
	(580, 2, 'R. Alvarenga Peixoto', '2013-03-20'),
	(590, 1, 'Rod. Castelo Branco', '2014-01-20'),
	(600, 1, 'R. Pelotas', '2014-03-10'),
	(610, 1, 'Av. Vital Brasil', '2014-03-14'),
	(611, 5, 'Av das Nações Unidas', '2013-10-10');
/*!40000 ALTER TABLE `logradouros` ENABLE KEYS */;

DROP TABLE IF EXISTS `medicos`;
CREATE TABLE IF NOT EXISTS `medicos` (
  `pkmedico` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomemedico` varchar(200) NOT NULL COMMENT 'Nome completo e sem abreviação',
  `nucrm` varchar(200) NOT NULL COMMENT 'Número do registro do médico no Conselho Regional dos médicos.',
  `fkespecialidade` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código da especialidade médica',
  `fkinstituicao` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código da Instituição de Ensino onde o médico se formou.',
  `fklogradouromoradia` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro de moradia do Médico',
  `txcomplementomoradia` varchar(80) NOT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucepmoradia` char(8) NOT NULL COMMENT 'Número do CEP do logradouro da moradia do Médico',
  `fklogradouroclinica` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro da Clínica Principal do Médico',
  `txcomplementoclinica` varchar(80) NOT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucepclinica` char(8) NOT NULL COMMENT 'Número do CEP do logradouro da clínica do médico',
  `aosituacao` char(1) NOT NULL COMMENT 'Atributo Operacional D-Desbloqueado ou B-Bloqueado',
  `dtcadmedico` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkmedico`),
  KEY `ifkespecialidade` (`fkespecialidade`),
  KEY `ifklogradouromoradia` (`fklogradouromoradia`),
  KEY `ifklogradouroclinica` (`fklogradouroclinica`),
  KEY `ifkinstituicao` (`fkinstituicao`),
  CONSTRAINT `especmedico` FOREIGN KEY (`fkespecialidade`) REFERENCES `especmedicas` (`pkespecialidade`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `instensinomedico` FOREIGN KEY (`fkinstituicao`) REFERENCES `instituicoesensino` (`pkinstituicao`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `logradclinicamedico` FOREIGN KEY (`fklogradouroclinica`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `logradmoradiamedico` FOREIGN KEY (`fklogradouromoradia`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos médicos que atendem aos funcionarios em um sistema de agendamento de consultas.';

/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` (`pkmedico`, `txnomemedico`, `nucrm`, `fkespecialidade`, `fkinstituicao`, `fklogradouromoradia`, `txcomplementomoradia`, `nucepmoradia`, `fklogradouroclinica`, `txcomplementoclinica`, `nucepclinica`, `aosituacao`, `dtcadmedico`) VALUES
	(5, 'Marina Emanuela Carolina Bizeo', '14514512', 2, 6, 350, '1452 - Ap145', '14124145', 490, '748', '04312456', 'D', '2018-04-26'),
	(10, 'Ana Maria Souza Lima', '987654321', 1, 6, 360, '1452 - Ap145', '98765432', 490, '748', '12345678', 'D', '2018-04-26'),
	(35, 'Dagoberto de Souza Lima', '41524152', 4, NULL, 320, '123', '42541525', 610, '4542', '14145122', 'D', '2018-04-15'),
	(40, 'Rui de Alcantara Brandão', '123412344', 2, 6, 220, '4560 - ap.545', '12334123', 300, '2500 - 4and - cj45', '12234124', 'D', '2012-10-10'),
	(45, 'Olavo de Almeida Buarque Ramos', '987654321', 5, 1, 610, '4500', '87654321', 450, '145', '77776666', 'A', '2012-10-10'),
	(50, 'Clodoaldo Alves da Silva Jr.', '123456789969759', 4, 6, 330, '1500 - 20And Ap2012', '04514242', 330, '1800 - 3and.', '14151515', 'D', '2012-10-10'),
	(55, 'Daniel Roberto Alves da Silva', '124151421', 1, 6, 350, '1452', '04511452', 350, '1452', '04511452', 'A', '2012-10-10'),
	(60, 'Leonardo Egídio Wolf Rubenstein', '124151421', 1, 6, 350, '1452', '04511452', 350, '1452', '04511452', 'D', '2012-10-10'),
	(65, 'Dalila Emanuelle D\'Agobert Merovingia', '124151421', 1, NULL, 350, '1452', '04511452', 350, '1452', '04511452', 'D', '2012-10-10'),
	(70, 'Albertina Maria Gonçalves de Oliveira', '1234123412', 3, 1, 611, '1452', '19678678', 470, '1500', '04511452', 'A', '2012-10-10');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;

DROP TABLE IF EXISTS `movimentos`;
CREATE TABLE IF NOT EXISTS `movimentos` (
  `pkmovimento` smallint(6) NOT NULL COMMENT 'PK da Tabela',
  `fklivro` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do livro movimentado',
  `fkfuncionario` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do funcionário que faz o movimento',
  `dtmovimento` datetime NOT NULL COMMENT 'Data de realização do movimento',
  `fktipomovimento` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do tipo de movimento',
  `dtprevistadevolucao` date DEFAULT NULL COMMENT 'Data prevista de devolução do livro',
  `dtrealdevolucao` date DEFAULT NULL COMMENT 'Data real da devolução',
  `dtcadmovimento` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkmovimento`),
  KEY `ifklivro` (`fklivro`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  KEY `ifktipomovimento` (`fktipomovimento`),
  CONSTRAINT `funcmovimento` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `livromovimento` FOREIGN KEY (`fklivro`) REFERENCES `livros` (`pklivro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tpmovmovimento` FOREIGN KEY (`fktipomovimento`) REFERENCES `movimentostipos` (`pktipomovimento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='moviment';

/*!40000 ALTER TABLE `movimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimentos` ENABLE KEYS */;

DROP TABLE IF EXISTS `movimentostipos`;
CREATE TABLE IF NOT EXISTS `movimentostipos` (
  `pktipomovimento` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnometipomov` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Nome do tipo de movimento (sem abreviações).',
  `aopermiteretirada` char(1) COLLATE utf8_bin NOT NULL COMMENT 'Assume S ou N para tipo de movimento que permita ou não retirada',
  `dtcadmovtipo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktipomovimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='movimtps';

/*!40000 ALTER TABLE `movimentostipos` DISABLE KEYS */;
INSERT INTO `movimentostipos` (`pktipomovimento`, `txnometipomov`, `aopermiteretirada`, `dtcadmovtipo`) VALUES
	(1, 'Consulta', 'N', '2018-02-01'),
	(2, 'Retirada por aluno', 'S', '2018-02-01'),
	(3, 'Retirada pou funcionário', 'S', '2018-02-01'),
	(4, 'Retirada por professor', 'S', '2018-02-01'),
	(5, 'Emprestimo', 'S', '2018-02-01'),
	(6, 'Tombamento', 'N', '2018-02-01'),
	(7, 'Arquivamento', 'N', '2018-02-01'),
	(8, 'Compra', 'N', '2018-02-01');
/*!40000 ALTER TABLE `movimentostipos` ENABLE KEYS */;

DROP TABLE IF EXISTS `nfcompras`;
CREATE TABLE IF NOT EXISTS `nfcompras` (
  `pknunfcompra` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkfornecedor` smallint(5) unsigned NOT NULL COMMENT 'FK com o código do fornecedor da Nota de Compra.',
  `nunotafiscal` smallint(5) unsigned NOT NULL COMMENT 'Número da NF atribuída pelo fornecedor.',
  `txnaturezaoperacao` varchar(200) NOT NULL COMMENT 'Descreve a natureza da operação (venda, compra, empréstimo, etc.)',
  `nucfop` smallint(5) unsigned NOT NULL COMMENT 'Código da tributação fiscal da nota (quais impostos paga o transito da nota).',
  `dtnfcompra` date NOT NULL COMMENT 'Data de geração da nota fiscal',
  `fkfuncionario` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do funcionário.',
  `vltotalnfcompra` decimal(15,2) NOT NULL COMMENT 'Valor total da Nota de Compra',
  `aosituacao` char(1) NOT NULL COMMENT 'Indicador da situação da Nota como "A" (a pagar) ou "P" (paga).',
  `txcomentarios` varchar(1000) NOT NULL COMMENT 'Comentário geral sobre a Nota de Compra',
  `dtcadnfcompra` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pknunfcompra`),
  KEY `ifkfornecedor` (`fkfornecedor`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `fornnfcompra` FOREIGN KEY (`fkfornecedor`) REFERENCES `fornecedores` (`pkfornecedor`) ON UPDATE CASCADE,
  CONSTRAINT `funcnfcompra` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro com as notas fiscais de compras de produtos.';

/*!40000 ALTER TABLE `nfcompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfcompras` ENABLE KEYS */;

DROP TABLE IF EXISTS `nfcomprasitens`;
CREATE TABLE IF NOT EXISTS `nfcomprasitens` (
  `fknunfcompra` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código da nota fiscal de venda',
  `fkproduto` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código do produto na nota',
  `qtvendida` smallint(5) unsigned NOT NULL COMMENT 'Quantidade de produto vendida',
  `vlunitario` decimal(10,2) unsigned NOT NULL COMMENT 'Valor unitário do produto na Nota de venda (pode ser diferente do valor do estoque)',
  `vldesconto` decimal(10,2) unsigned NOT NULL COMMENT 'Valor total de desconto do item da comora (se não existir deve ser zero)',
  PRIMARY KEY (`fknunfcompra`,`fkproduto`),
  KEY `ifknunfcompra` (`fknunfcompra`),
  KEY `ifkproduto` (`fkproduto`),
  CONSTRAINT `nfcompranfci` FOREIGN KEY (`fknunfcompra`) REFERENCES `nfcompras` (`pknunfcompra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodnfci` FOREIGN KEY (`fkproduto`) REFERENCES `produtos` (`pkproduto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos itens comprados';

/*!40000 ALTER TABLE `nfcomprasitens` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfcomprasitens` ENABLE KEYS */;

DROP TABLE IF EXISTS `nfvendas`;
CREATE TABLE IF NOT EXISTS `nfvendas` (
  `pknfvenda` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela – número da nota fiscal',
  `txnaturezaoperacao` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'Descreve a natureza da operação (venda, compra, empréstimo, etc.)',
  `nucfop` smallint(6) NOT NULL COMMENT 'Código da tributação fiscal da nota (quais impostos paga o transito da nota).',
  `fkcliente` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do Cliente da venda.',
  `fkfuncionario` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do funcionário.',
  `fkarmazem` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do armazém de destino da nota',
  `vltotalnfvenda` double(15,2) DEFAULT NULL COMMENT 'Valor total da nota fiscal de venda',
  `dtvenda` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Data de realização da venda que gera a nota de venda',
  `dtemissao` date NOT NULL COMMENT 'Data de emissão da nota de venda',
  `dtcadnfvenda` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pknfvenda`),
  KEY `ifkarmazem` (`fkarmazem`),
  KEY `ifkcliente` (`fkcliente`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `armazemnfvenda` FOREIGN KEY (`fkarmazem`) REFERENCES `armazens` (`pkarmazem`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `clientnfvenda` FOREIGN KEY (`fkcliente`) REFERENCES `clientes` (`pkcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcnfvenda` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='nfvendas';

/*!40000 ALTER TABLE `nfvendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfvendas` ENABLE KEYS */;

DROP TABLE IF EXISTS `nfvendasitens`;
CREATE TABLE IF NOT EXISTS `nfvendasitens` (
  `fknfvenda` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código da nota fiscal de venda',
  `fkproduto` smallint(6) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código do produto na nota',
  `qtvendida` smallint(6) NOT NULL COMMENT 'Quantidade de produto vendida',
  `vlunitario` double(10,2) NOT NULL COMMENT 'Valor unitário do produto na Nota de venda (pode ser diferente do valor do estoque)',
  PRIMARY KEY (`fknfvenda`,`fkproduto`),
  KEY `ifkproduto` (`fkproduto`),
  KEY `ifknfvenda` (`fknfvenda`),
  CONSTRAINT `nfvendanfvi` FOREIGN KEY (`fknfvenda`) REFERENCES `nfvendas` (`pknfvenda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodnfvi` FOREIGN KEY (`fkproduto`) REFERENCES `produtos` (`pkproduto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `nfvendasitens` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfvendasitens` ENABLE KEYS */;

DROP TABLE IF EXISTS `niveisdeeducacao`;
CREATE TABLE IF NOT EXISTS `niveisdeeducacao` (
  `pkniveleducacao` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomecomum` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Nome do nível de educação (sem abreviações).',
  `qtanosdeestudo` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Quantidade de anos de duração do nível',
  `dtcadniveleducacao` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkniveleducacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='niveduca';

/*!40000 ALTER TABLE `niveisdeeducacao` DISABLE KEYS */;
INSERT INTO `niveisdeeducacao` (`pkniveleducacao`, `txnomecomum`, `qtanosdeestudo`, `dtcadniveleducacao`) VALUES
	(1, 'Maternal', '1', '2018-02-01'),
	(2, 'Pré-Escola', '1', '2018-02-01'),
	(3, 'Ensino Fundamental I', '4', '2018-02-01'),
	(4, 'Ensino Fundamental I', '5', '2018-02-01'),
	(5, 'Ensino Médio', '3', '2018-02-01'),
	(6, 'Superior', '5', '2018-02-01'),
	(7, 'Especialização', '2', '2018-02-01'),
	(8, 'Mestrado', '3', '2018-02-01'),
	(9, 'Doutorado', '5', '2018-02-01');
/*!40000 ALTER TABLE `niveisdeeducacao` ENABLE KEYS */;

DROP TABLE IF EXISTS `ocorrencias`;
CREATE TABLE IF NOT EXISTS `ocorrencias` (
  `pkocorrencia` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `fksinistro` smallint(5) unsigned NOT NULL COMMENT 'FK indicando o código do sinistro',
  `fkcarro` int(10) unsigned NOT NULL COMMENT 'FK indicando o código do veículo que sofreu o sinistro',
  `fknumeroapolice` int(10) unsigned NOT NULL COMMENT 'FK indicando o código do seguro que cobre o sinistro do veículo',
  `fklogradouroprincipal` int(10) unsigned NOT NULL COMMENT 'FK com o código do Logradouro principal da ocorrência do sinistro.',
  `fklogradourosecundario` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro secundário da ocorrência do sinistro',
  `txdescricaodaocorrencia` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo os logradouros e localidade da ocorrência do sinistro.',
  `dtcadocorrencia` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkocorrencia`),
  KEY `ifksinistro` (`fksinistro`),
  KEY `ifkveiculo` (`fkcarro`),
  KEY `ifknumeroapolice` (`fknumeroapolice`),
  KEY `ifklogradouroprincipal` (`fklogradouroprincipal`),
  KEY `ifklogradourosecundario` (`fklogradourosecundario`),
  CONSTRAINT `carroocorrencia` FOREIGN KEY (`fkcarro`) REFERENCES `veiculos` (`pkveiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `logprinocorrencia` FOREIGN KEY (`fklogradouroprincipal`) REFERENCES `logradouros` (`pklogradouro`) ON UPDATE CASCADE,
  CONSTRAINT `logsecunocorrencia` FOREIGN KEY (`fklogradourosecundario`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `seguroocorrencia` FOREIGN KEY (`fknumeroapolice`) REFERENCES `seguros` (`pknumeroapolice`) ON UPDATE CASCADE,
  CONSTRAINT `sinistroocorrencia` FOREIGN KEY (`fksinistro`) REFERENCES `sinistros` (`pksinistro`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `ocorrencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocorrencias` ENABLE KEYS */;

DROP TABLE IF EXISTS `oficinas`;
CREATE TABLE IF NOT EXISTS `oficinas` (
  `pkoficina` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeoficina` varchar(250) NOT NULL COMMENT 'Razão social da Oficina',
  `txapelido` varchar(60) NOT NULL COMMENT 'Nome usual (ou apelido) da oficina',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro da Oficina',
  `txcomplemento` varchar(80) NOT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) NOT NULL COMMENT 'Número do CEP do logradouro da oficina',
  `dtcadoficina` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkoficina`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradoficina` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das oficinas que prestam serviços de reparos em veículos';

/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` (`pkoficina`, `txnomeoficina`, `txapelido`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcadoficina`) VALUES
	(5, 'Oficina Mecânica de Reparos Gerais Luiz Porto S/C Ltda.', 'Luizinho', 520, '100', '12345678', '2010-10-10'),
	(10, 'Oficina de Reparos Gerais "Marreco" S/C Ltda.', 'Marreco', 240, '120', '12316789', '2015-10-10'),
	(15, 'Auto-oficina Mecânica Luiz Paraná S/C Ltda.', 'Luizinho', 520, '145', '01521567', '2010-10-10'),
	(20, 'Oficina de Caminhões e Ônibus "Jamanta" S/C Ltda.', 'Jamanta', 240, '147', '12313678', '2015-10-10'),
	(25, 'Oficinas de Motos Mourisco S/C Ltda.', 'Mourisco', 520, '452', '01456756', '2010-10-10');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;

DROP VIEW IF EXISTS `onibus`;
CREATE TABLE `onibus` (
	`pkonibus` INT(10) UNSIGNED NOT NULL COMMENT 'PK da Tabela',
	`ukplaca` CHAR(7) NOT NULL COMMENT 'Placa do carro (somente letras e números)' COLLATE 'utf8_bin',
	`txapelido` VARCHAR(60) NULL COMMENT 'Nome de apelido do ônibus' COLLATE 'utf8_bin',
	`fkcor` SMALLINT(5) UNSIGNED NULL COMMENT 'FK indicando o código da cor.',
	`fkmodelo` SMALLINT(5) UNSIGNED NULL COMMENT 'FK indicando o código do modelo.',
	`qtcapacidade` TINYINT(3) UNSIGNED NULL COMMENT 'Quantidade de acentos no ônibus',
	`nuanofabricacao` YEAR NOT NULL COMMENT 'Ano de fabricação do carro',
	`dtcadonibus` DATE NOT NULL COMMENT 'Data de geração do registro'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `ordcompras`;
CREATE TABLE IF NOT EXISTS `ordcompras` (
  `pknuordemcompra` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkfornecedor` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do fornecedor',
  `dtordemcompra` date DEFAULT NULL COMMENT 'Data de realização da Compra',
  `fkfuncionario` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do funcionário.',
  `vltotalordemcompra` double(15,2) DEFAULT NULL COMMENT 'Valor total da ordem de compra',
  `aosituacao` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'Atributo Operacional indicando: Aberto, Entregue Pago',
  `txcomentarios` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT 'Texto com comentários complementares da ordem de compra.',
  `dtcadastro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pknuordemcompra`),
  KEY `ifkfornecedor` (`fkfornecedor`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `fornordcompra` FOREIGN KEY (`fkfornecedor`) REFERENCES `fornecedores` (`pkfornecedor`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `funcordcompra` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ordcompr';

/*!40000 ALTER TABLE `ordcompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordcompras` ENABLE KEYS */;

DROP TABLE IF EXISTS `ordcomprasitens`;
CREATE TABLE IF NOT EXISTS `ordcomprasitens` (
  `fknuordemcompra` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código da Ordem de Compra',
  `fkproduto` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código do produto',
  `qtcomprada` smallint(5) unsigned NOT NULL COMMENT 'Quantidade comprada',
  `vlunitario` double(10,2) unsigned NOT NULL COMMENT 'Valor unitário negociado com o fornecedor',
  PRIMARY KEY (`fknuordemcompra`,`fkproduto`),
  KEY `ifkproduto` (`fkproduto`),
  KEY `ifkordemcompra` (`fknuordemcompra`),
  CONSTRAINT `ordcompoci` FOREIGN KEY (`fknuordemcompra`) REFERENCES `ordcompras` (`pknuordemcompra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodoci` FOREIGN KEY (`fkproduto`) REFERENCES `produtos` (`pkproduto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `ordcomprasitens` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordcomprasitens` ENABLE KEYS */;

DROP TABLE IF EXISTS `palavraschaves`;
CREATE TABLE IF NOT EXISTS `palavraschaves` (
  `pkpalavra` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomepalavra` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'Palavra-chave de pesquisa complete e se abreviações',
  `dtcadpalchave` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkpalavra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='palchave';

/*!40000 ALTER TABLE `palavraschaves` DISABLE KEYS */;
INSERT INTO `palavraschaves` (`pkpalavra`, `txnomepalavra`, `dtcadpalchave`) VALUES
	(1, 'Justiça', '2018-02-01'),
	(2, 'Fraternidade', '2018-02-01'),
	(3, 'Amor', '2018-02-01'),
	(4, 'Poder', '2018-02-01'),
	(5, 'Lei', '2018-02-01'),
	(6, 'Segurança', '2018-02-01'),
	(7, 'Paz', '2018-02-01'),
	(8, 'Harmonia', '2018-02-01'),
	(9, 'Trabalho', '2018-02-01'),
	(10, 'Drama', '2018-02-01');
/*!40000 ALTER TABLE `palavraschaves` ENABLE KEYS */;

DROP TABLE IF EXISTS `palavraslivros`;
CREATE TABLE IF NOT EXISTS `palavraslivros` (
  `fkpalavra` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código da Palavra-Chave de Pesquisa',
  `fklivro` smallint(5) unsigned NOT NULL COMMENT 'Parte da PK e FK com o código do livro',
  `dtcadpallivro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`fkpalavra`,`fklivro`),
  KEY `ifklivro` (`fklivro`),
  KEY `ifkpalavra` (`fkpalavra`),
  CONSTRAINT `livropallivro` FOREIGN KEY (`fklivro`) REFERENCES `livros` (`pklivro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `palavrapallivro` FOREIGN KEY (`fkpalavra`) REFERENCES `palavraschaves` (`pkpalavra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='pallivro';

/*!40000 ALTER TABLE `palavraslivros` DISABLE KEYS */;
INSERT INTO `palavraslivros` (`fkpalavra`, `fklivro`, `dtcadpallivro`) VALUES
	(2, 1, '2018-05-22'),
	(3, 1, '2018-05-22');
/*!40000 ALTER TABLE `palavraslivros` ENABLE KEYS */;

DROP TABLE IF EXISTS `passagens`;
CREATE TABLE IF NOT EXISTS `passagens` (
  `pkpassagem` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkviagem` smallint(5) unsigned NOT NULL COMMENT 'FK apontando para a Tabela Viagens',
  `fkfuncionario` smallint(5) unsigned NOT NULL COMMENT 'FK com o código do funcionário que compra a passagem.',
  `nupoltrona` tinyint(3) unsigned NOT NULL COMMENT 'Número da poltrona para a qual se venda a passagem',
  `dtpassagem` date NOT NULL COMMENT 'Data quando acontecerá a viagem com a passagem',
  `dtcadpassagem` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkpassagem`),
  KEY `ifkviagem` (`fkviagem`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  CONSTRAINT `funcpassagem` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `viagempassagem` FOREIGN KEY (`fkviagem`) REFERENCES `viagens` (`pkviagem`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='passagen';

/*!40000 ALTER TABLE `passagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `passagens` ENABLE KEYS */;

DROP TABLE IF EXISTS `planosdesaude`;
CREATE TABLE IF NOT EXISTS `planosdesaude` (
  `pkplanodesaude` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeplano` varchar(200) NOT NULL COMMENT 'Nome completo e usual para o plano de saúde',
  `txrazaosocial` varchar(250) NOT NULL COMMENT 'Razão social completa.',
  `fklogradouro` int(11) unsigned DEFAULT NULL COMMENT 'FK com o código do logradouro do escritório do Plano de Saúde.',
  `txcomplemento` varchar(80) NOT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) NOT NULL COMMENT 'Número do CEP',
  `dtcadplanosaude` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkplanodesaude`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradplsaude` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos Planos de Saúde.';

/*!40000 ALTER TABLE `planosdesaude` DISABLE KEYS */;
INSERT INTO `planosdesaude` (`pkplanodesaude`, `txnomeplano`, `txrazaosocial`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcadplanosaude`) VALUES
	(1, 'Unimed Ourinhos', 'Cooperativa médica de Ourinhos S.A.', 350, ' 1243', '2354235', '2010-10-27'),
	(2, 'SulAmericana Paulistana', 'Cooperativa Sulamerica Paulista S.A.', 470, ' 1492', '14524515', '2010-10-27'),
	(4, 'MedialSaude', 'Associação Médica Medialsaúde S/C Ltda.', 470, ' 1492', '14521452', '2010-10-27'),
	(5, 'Goldencross', 'Associação Médica Goldencross S.A.', 470, ' 234', '12313123', '2010-10-10');
/*!40000 ALTER TABLE `planosdesaude` ENABLE KEYS */;

DROP TABLE IF EXISTS `planostels`;
CREATE TABLE IF NOT EXISTS `planostels` (
  `pkplanostel` smallint(6) NOT NULL COMMENT 'PK da Tabela',
  `fkplanodesaude` smallint(6) unsigned NOT NULL COMMENT 'FK para a tabela planos de saúde',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadplanostel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkplanostel`),
  KEY `ifkplanodesaude` (`fkplanodesaude`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `plsaudeplsaudetel` FOREIGN KEY (`fkplanodesaude`) REFERENCES `planosdesaude` (`pkplanodesaude`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipoplsaudetel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='planotls';

/*!40000 ALTER TABLE `planostels` DISABLE KEYS */;
/*!40000 ALTER TABLE `planostels` ENABLE KEYS */;

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `pkproduto` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnome` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e usual',
  `txdescricaocompleta` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT 'Texto com a descrição complete do produto.',
  `vlunitbase` decimal(12,2) unsigned NOT NULL COMMENT 'Valor unitário base do produto',
  `vlunitminimo` double(13,2) unsigned NOT NULL COMMENT 'Valor unitário mínimo do produto',
  `qtestoque` double(15,2) unsigned NOT NULL COMMENT 'Quantidade do produto em estoque.',
  `vlunitpromocao` decimal(12,2) unsigned NOT NULL COMMENT 'Valor unitário de promoção de venda do produto (não pode ser menor que o mínimo)',
  `qtdiaspromocao` smallint(6) unsigned NOT NULL COMMENT 'Quant. De dias para execução de uma promoção do produto',
  `dtcadproduto` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='produtos';

/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`pkproduto`, `txnome`, `txdescricaocompleta`, `vlunitbase`, `vlunitminimo`, `qtestoque`, `vlunitpromocao`, `qtdiaspromocao`, `dtcadproduto`) VALUES
	(1, 'Caneta bic cristal azul', 'Caneta esferográfica com tampa, corpo de cristal, cor azul BIC', 0.85, 0.65, 190.00, 0.75, 5, '2018-02-01'),
	(2, 'Caneta bic cristal preta', 'Caneta esferográfica com tampa, corpo de cristal, cor preta BIC', 0.85, 0.65, 200.00, 0.75, 5, '2018-02-01'),
	(3, 'Caneta bic click azul', 'Caneta esferográfica com ponta retrátil tipo click, corpo de plático preto, cor azul BIC', 2.85, 2.65, 90.00, 2.75, 5, '2018-02-01'),
	(4, 'Caneta bic rosca azul', 'Caneta esferográfica com ponta retrátil tipo rosca, corpo de plático preto, cor azul BIC', 2.90, 2.70, 90.00, 2.80, 5, '2018-02-01');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `pkprofessor` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeprofessor` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações',
  `fklogradouro` int(11) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro de residência do Professor.',
  `txcomplemento` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do CEP',
  `dtnascimento` date DEFAULT NULL COMMENT 'Data de nascimento',
  `dtcadprofessor` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkprofessor`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradprofessor` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='professo';

/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` (`pkprofessor`, `txnomeprofessor`, `fklogradouro`, `txcomplemento`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(1, 'Ana Maria Verdim', 470, ' 3456', '3436567', '1960-12-19', '2005-05-11'),
	(2, 'Abel Da Silva', 110, ' 234', '1233536', '1964-07-11', '2001-08-21'),
	(3, 'Abrao Abujanra', 240, ' 451', '1342545', '1975-06-12', '2005-03-12'),
	(4, 'Carlos Takeshi Uendo', 340, ' 475', '1865456', '1984-07-19', '2006-05-13'),
	(5, 'David_ Gutemberg', 260, ' 4521', '5680567', '1966-06-16', '2005-05-12'),
	(6, 'Francisco Romeu Da Cruz', 140, ' 75 23and, Cj 23', '5670479', '1974-12-05', '2002-05-13'),
	(7, 'Geraldo Bandeiras Pontes', 170, ' 234', '4656589', '1987-09-06', '2002-10-21'),
	(8, 'Heitor De Troia', 120, ' 7458', '5656745', '1964-10-08', '2003-02-21'),
	(9, 'Hercules Olimpiano', 130, ' 345', '7643587', '1976-07-29', '2002-01-21'),
	(10, 'Irineu Evangelista De Souza', 270, ' 456', '4669908', '1984-11-28', '2005-05-14'),
	(11, 'Joao Heulalio De Bueno Vidigal', 360, ' 2569', '4794477', '1967-08-24', '2005-05-27'),
	(12, 'Jaime De Abreu Pompeu De Lima', 150, ' 75', '6298666', '1975-12-19', '2002-05-16'),
	(13, 'Jose Ramos De Almeida', 160, ' 54', '7489455', '1988-07-29', '2002-05-28'),
	(14, 'Leonidas De Percepolis', 80, ' 345', '8405674', '1964-10-11', '2001-05-16'),
	(15, 'Leopoldo De Couto E Silva', 250, ' 3879', '8486453', '1976-10-10', '2005-03-25'),
	(16, 'Maria Maura Correia Alves Lima', 310, ' 25', '8504467', '1984-12-21', '2005-09-18'),
	(17, 'Marcia De Albuquerque Lima', NULL, ' 25415', '8674645', '1966-09-21', '2000-05-25'),
	(18, 'Mario Quintana Drumond De Andrade', 50, ' 345', '7605555', '1974-06-30', '2000-06-14'),
	(19, 'Nair De Mello Cunha', 180, ' 4521', '6407626', '1987-05-30', '2003-04-23'),
	(20, 'Neire Goncalves De Albuquerque Lins', 230, ' 345', '5567715', '1965-11-29', '2005-02-16'),
	(21, 'Olivia Cruz Do Nascimento', 300, ' 657', '5456600', '1977-11-13', '2005-05-28'),
	(22, 'Oduvaldo Vianna', 460, ' 456', '5235683', '1966-09-24', '2004-05-15'),
	(23, 'Pascoal De Lima Rosa Cruz', 190, ' 190', '5329444', '1987-10-25', '2003-05-27'),
	(24, 'Renato Corte Real', 210, ' 3456', '5444753', '1965-05-06', '2004-02-14'),
	(25, 'Sebastiao Mello Da Silva Cruz', 280, ' 867', '6534756', '1987-12-07', '2005-05-20'),
	(26, 'Tadeu Buarque De Holanda', 320, ' 2145', '5644642', '1965-07-19', '2005-12-13'),
	(27, 'Ulisses Odebrecht', 40, ' 2767', '5744548', '1987-11-17', '2000-05-29'),
	(28, 'Vinicius Humbrto Pinheiro Da Silva', 220, ' 4512', '5844426', '1965-11-05', '2005-01-10'),
	(29, 'Vera Adriana Huang Azevedo', 200, ' 745', '15122222', '1970-02-10', '2010-10-10'),
	(35, 'Euripedes Soares De Almeida', 170, '450', '12345678', '1957-05-10', '1975-10-10');
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;

DROP TABLE IF EXISTS `professorestels`;
CREATE TABLE IF NOT EXISTS `professorestels` (
  `pkprofessortel` smallint(6) NOT NULL COMMENT 'PK da Tabela',
  `fkprofessor` smallint(6) unsigned NOT NULL COMMENT 'FK para a tabela professores',
  `fktipotelefone` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadpprofessortel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkprofessortel`),
  KEY `ifkprofessor` (`fkprofessor`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `profproftel` FOREIGN KEY (`fkprofessor`) REFERENCES `professores` (`pkprofessor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltipoproftel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='profetls';

/*!40000 ALTER TABLE `professorestels` DISABLE KEYS */;
/*!40000 ALTER TABLE `professorestels` ENABLE KEYS */;

DROP TABLE IF EXISTS `projetos`;
CREATE TABLE IF NOT EXISTS `projetos` (
  `pkprojeto` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txsiglaprojeto` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'Sigla do projeto (como deve ser tratado informalmente na organização).',
  `txnomeprojeto` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Nome completo e sem abreviações',
  `fkprojetosuperior` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código de projeto superior.',
  `fkdepto` char(3) COLLATE utf8_bin DEFAULT NULL COMMENT 'FK com o código do departamento que lidera ou coordena o projeto',
  `fkfuncionarioresponsavel` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código do funcionário responsável pelo projeto',
  `vlestimado` double(15,2) DEFAULT NULL COMMENT 'Valor estimado do projeto',
  `dtinicio` date DEFAULT NULL COMMENT 'Data de inicio do projeto (após conclusão de estudos de viabilidade)',
  `dttermino` date DEFAULT NULL COMMENT 'Data de término do projeto (após a conclusão dos testes)',
  `dtcadprojeto` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkprojeto`),
  KEY `ifkdepto` (`fkdepto`),
  KEY `ifkfuncionarioresponsavel` (`fkfuncionarioresponsavel`),
  KEY `ifkprojetosuperior` (`fkprojetosuperior`),
  CONSTRAINT `deptoprojeto` FOREIGN KEY (`fkdepto`) REFERENCES `departamentos` (`pkdepto`) ON UPDATE CASCADE,
  CONSTRAINT `funcrespprojeto` FOREIGN KEY (`fkfuncionarioresponsavel`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `projsupprojeto` FOREIGN KEY (`fkprojetosuperior`) REFERENCES `projetos` (`pkprojeto`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='projetos';

/*!40000 ALTER TABLE `projetos` DISABLE KEYS */;
INSERT INTO `projetos` (`pkprojeto`, `txsiglaprojeto`, `txnomeprojeto`, `fkprojetosuperior`, `fkdepto`, `fkfuncionarioresponsavel`, `vlestimado`, `dtinicio`, `dttermino`, `dtcadprojeto`) VALUES
	(1, 'SICOP', 'Sistema de Coordenação do Projeto', NULL, 'A01', 1, 150000.00, '2017-10-25', '2018-12-10', '2017-10-20'),
	(2, 'SIGERAL', 'Sistema de Gerenciamento Genérico', NULL, 'A01', 9, 150000.00, '2017-10-25', '2018-12-10', '2017-10-20'),
	(3, 'SISTGR1', 'Sistema de Geral 1', NULL, 'A01', 41, 150000.00, '2017-10-25', '2018-12-10', '2017-10-20'),
	(4, 'SISTGR2', 'Sistema de Geral 2', NULL, 'A01', 25, 150000.00, '2017-10-25', '2018-12-10', '2017-10-20');
/*!40000 ALTER TABLE `projetos` ENABLE KEYS */;

DROP TABLE IF EXISTS `rotasviarias`;
CREATE TABLE IF NOT EXISTS `rotasviarias` (
  `pkrota` mediumint(9) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomerota` varchar(60) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações.',
  `txdescrperiodo` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto com a descrição do período de ocorrência de viagens na rota viária',
  `fkcidadeorigem` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código da cidade de origem da rota viária',
  `fkcidadedestino` smallint(6) unsigned DEFAULT NULL COMMENT 'FK com o código da cidade de destino da rota viária',
  `dtcadrotaviaria` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkrota`),
  KEY `ifkcidadedestino` (`fkcidadedestino`),
  KEY `ifkcidadeorigem` (`fkcidadeorigem`),
  CONSTRAINT `ciddestinorota` FOREIGN KEY (`fkcidadedestino`) REFERENCES `cidades` (`pkcidade`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `cidorigemrota` FOREIGN KEY (`fkcidadeorigem`) REFERENCES `cidades` (`pkcidade`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='rotasvia';

/*!40000 ALTER TABLE `rotasviarias` DISABLE KEYS */;
/*!40000 ALTER TABLE `rotasviarias` ENABLE KEYS */;

DROP TABLE IF EXISTS `roteiros`;
CREATE TABLE IF NOT EXISTS `roteiros` (
  `fkrota` mediumint(8) unsigned NOT NULL COMMENT 'FK indicando a rota viária e parte da PK (composta)',
  `fkcidade` smallint(5) unsigned NOT NULL COMMENT 'FK indicando a cidade e parte da PK (composta)',
  `nuordem` smallint(5) unsigned NOT NULL COMMENT 'Número de ordem da cidade no itinerário da rota viária.',
  `dtcadroteiro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`fkrota`,`fkcidade`),
  KEY `ifkrota` (`fkrota`),
  KEY `ifkcidade` (`fkcidade`),
  CONSTRAINT `cidaderoteiro` FOREIGN KEY (`fkcidade`) REFERENCES `cidades` (`pkcidade`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rotaroteiro` FOREIGN KEY (`fkrota`) REFERENCES `rotasviarias` (`pkrota`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos roteiros (cidades em ordem) das rotasviárias.';

/*!40000 ALTER TABLE `roteiros` DISABLE KEYS */;
/*!40000 ALTER TABLE `roteiros` ENABLE KEYS */;

DROP TABLE IF EXISTS `seguradoras`;
CREATE TABLE IF NOT EXISTS `seguradoras` (
  `pkseguradora` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomeseguradora` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações.',
  `fklogradouro` int(10) unsigned DEFAULT NULL COMMENT 'Texto com o endereço de residência.',
  `txcomplemento` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL COMMENT 'Número do CEP',
  `dtcadseguradora` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkseguradora`),
  KEY `ifklogradouro` (`fklogradouro`),
  CONSTRAINT `logradseguradora` FOREIGN KEY (`fklogradouro`) REFERENCES `logradouros` (`pklogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='segurado';

/*!40000 ALTER TABLE `seguradoras` DISABLE KEYS */;
INSERT INTO `seguradoras` (`pkseguradora`, `txnomeseguradora`, `fklogradouro`, `txcomplemento`, `nucep`, `dtcadseguradora`) VALUES
	(1, 'Transamerica', 200, ' 745', '', '2004-02-10'),
	(3, 'Mapfre', 400, ' 2345', '', '2010-02-12'),
	(5, 'Porto Seguro', 510, ' 450', '123132', '2010-10-10'),
	(6, 'Altavista Seguros', 160, '224', '12345678', '2010-10-10');
/*!40000 ALTER TABLE `seguradoras` ENABLE KEYS */;

DROP TABLE IF EXISTS `seguradorastels`;
CREATE TABLE IF NOT EXISTS `seguradorastels` (
  `pkseguradoratel` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkseguradora` smallint(5) unsigned NOT NULL COMMENT 'FK para a tabela seguradoras',
  `fktipotelefone` smallint(5) unsigned DEFAULT NULL COMMENT 'FK para a tabela tipos_telefones',
  `nutelefone` char(15) COLLATE utf8_bin NOT NULL COMMENT 'Número do telefone (somente os números)',
  `dtcadseguradoratel` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkseguradoratel`),
  KEY `ifkseguradora` (`fkseguradora`),
  KEY `ifktipotelefone` (`fktipotelefone`),
  CONSTRAINT `seguradseguradtel` FOREIGN KEY (`fkseguradora`) REFERENCES `seguradoras` (`pkseguradora`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teltiposeguradtel` FOREIGN KEY (`fktipotelefone`) REFERENCES `telefonestipos` (`pktipotelefone`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='segurtls';

/*!40000 ALTER TABLE `seguradorastels` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguradorastels` ENABLE KEYS */;

DROP TABLE IF EXISTS `seguros`;
CREATE TABLE IF NOT EXISTS `seguros` (
  `pknumeroapolice` int(10) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `fkcarro` int(10) unsigned NOT NULL COMMENT 'FK com o código do veículo.',
  `fkseguradora` smallint(5) unsigned NOT NULL COMMENT 'FK com o código da Seguradora',
  `dtcontratacao` date NOT NULL COMMENT 'Data da contratação',
  `dtlimitecobertura` date NOT NULL COMMENT 'Data limite da cobertura do seguro.',
  `vlcobertura` double(15,2) unsigned NOT NULL COMMENT 'Valor da cobertura da apólice de seguro',
  `dtcadseguro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pknumeroapolice`),
  KEY `ifkseguradora` (`fkseguradora`),
  KEY `ifkveiculo` (`fkcarro`),
  CONSTRAINT `carroseguro` FOREIGN KEY (`fkcarro`) REFERENCES `veiculos` (`pkveiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seguradseguro` FOREIGN KEY (`fkseguradora`) REFERENCES `seguradoras` (`pkseguradora`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='segurosx';

/*!40000 ALTER TABLE `seguros` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguros` ENABLE KEYS */;

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `pkservico` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomeservico` varchar(90) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações',
  `txdescricao` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o setor de atuação',
  `dtcadservico` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkservico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos Serviços de Manutenção feitos pelas oficinas nos veículos dos funcionários. ';

/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` (`pkservico`, `txnomeservico`, `txdescricao`, `dtcadservico`) VALUES
	(1, 'Troca de amortecedor', 'Avaliação e troca de amortecedores de veículos', '2018-02-01'),
	(2, 'Troca de Pneus', 'Avaliação e troca dos pneus', '2018-02-01'),
	(3, 'Balanceamento de rodas de carros', 'Balanceamento de rodas de carros ou veículos leves', '2018-02-01'),
	(4, 'Troca de funilaria', 'Troca de peças inteiras da funilaria de veículos', '2018-02-01');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;

DROP TABLE IF EXISTS `setoresdeatuacao`;
CREATE TABLE IF NOT EXISTS `setoresdeatuacao` (
  `pksetoratuacao` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomecurto` varchar(90) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações',
  `txdescricao` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o setor de atuação',
  `dtcadsetoratuacao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pksetoratuacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='setatuac';

/*!40000 ALTER TABLE `setoresdeatuacao` DISABLE KEYS */;
INSERT INTO `setoresdeatuacao` (`pksetoratuacao`, `txnomecurto`, `txdescricao`, `dtcadsetoratuacao`) VALUES
	(1, 'Industria automobilística', 'Produz e distribui veículos automotivos', '2018-02-02'),
	(2, 'Industria de equipamentos agropecuários', 'Produz e distribui tratores e equipamentos de suporte à agroindústria', '2018-02-02'),
	(3, 'Industria de alimentos', 'Produz e distribui itens de bebidas', '2018-02-02'),
	(4, 'Industria de bebidas', 'Produz e distribui itens de bebidas', '2018-02-02'),
	(5, 'Produção de Bens e Serviços', 'Produz e operacionaliza a distribuição de bens e serviços', '2018-02-02');
/*!40000 ALTER TABLE `setoresdeatuacao` ENABLE KEYS */;

DROP TABLE IF EXISTS `sinistros`;
CREATE TABLE IF NOT EXISTS `sinistros` (
  `pksinistro` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomesinistro` varchar(90) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações',
  `txdescricao` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o sinistro que pode ocorrer em um veículo (incêndio, roubo, etc)',
  `dtcadsinistro` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pksinistro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='sinistro';

/*!40000 ALTER TABLE `sinistros` DISABLE KEYS */;
INSERT INTO `sinistros` (`pksinistro`, `txnomesinistro`, `txdescricao`, `dtcadsinistro`) VALUES
	(1, 'Colisão de veículo com bem público ou de terceiro', 'Veículo colide com bens públicos ou de terceiros', '2018-02-02'),
	(2, 'Colisão de veículos sem dano de terceiro', 'Veículo colide com outro veículo somente causando dano ao outro veículo.', '2018-02-02'),
	(3, 'Colisão de veículos com dano de terceiro', 'Veículo colide com outro veículo causando dano ao outro veículo, bem público ou de terceiro.', '2018-02-02'),
	(4, 'Atropelamento sem vítima fatal', 'Atropelamento sem vítimas fatais', '2018-02-02'),
	(5, 'Atropelamento com vítima fatal', 'Atropelamento com vítimas fatais', '2018-02-02');
/*!40000 ALTER TABLE `sinistros` ENABLE KEYS */;

DROP TABLE IF EXISTS `tarefas`;
CREATE TABLE IF NOT EXISTS `tarefas` (
  `pktarefa` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnometarefa` char(70) COLLATE utf8_bin NOT NULL COMMENT 'Nome curto da ação de projeto',
  `txdescricaotarefa` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Descrição completa de uma ação que é usada em projetos.',
  `qthoraspadrao` int(11) DEFAULT NULL COMMENT 'Quantidade de Horas padrão para a ação em qualquer projeto.',
  `dtcadtarefa` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktarefa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tarefasx';

/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` (`pktarefa`, `txnometarefa`, `txdescricaotarefa`, `qthoraspadrao`, `dtcadtarefa`) VALUES
	(1, 'Identificação do objetivo da organização', 'A partir dos contatos com a organização determinar o objetivo da organização de modo mais detalhado possível, porém sem se detalhar metas para alcançar os objetivos.', 8, '2018-02-01'),
	(2, 'Determinação das áreas funcionais da organização', 'Identificado o objetivo responder: Como este objetivo pode ser alcançado e quais são as funções básicas que a organização deve executar para alcançar seus objetivos.', 12, '2018-02-01'),
	(3, 'Identificar os responsáveis para cada AF', 'Reunir com nível estratégico da organização e identificar responsáveis práticos na operação das AFs', 10, '2018-02-01'),
	(4, 'Determinar as ações fundamentais de cada AF', '', 16, '2018-02-01'),
	(5, 'Montar Questionários de Requisitos', 'Elaborar o Questionário para levantamento de requisitos que é aplicadao em cada AF', 48, '2018-02-01'),
	(6, 'Transcrever respostas dos questionários.', 'Transcrever os resultados dos questionamentos na base de dados de suporte ao desenvolvimento do sistema.Transcrever os resultados dos questionamentos na base de dados de suporte ao desenvolvimento do sistema.', 40, '2018-02-01'),
	(7, 'Determinar os requisitos funcionais e não funcionais.', 'Analisar textos transcritos e determinar requisitos funcionais e não funcionais', 24, '2018-02-01'),
	(8, 'Elaborar os modelos', 'Elaborar os modelos: Caso de Uso, Classe (BD), Atividades, Sequencia, Componentes.', 40, '2018-02-01'),
	(9, 'Detalhar oa Caso de Uso', 'Detalhar os Casos de Uso até o nível de algoritmos de programação, identificando variáveis, funções matemáticas necessárias e laços de repetição dos algoritmos.', 80, '2018-02-01'),
	(10, 'Detalhar o Diagrama de Classe', 'Detalhar os atributos das classes e estabelecer o mapeamento do modelo de classe para o modelo relacional', 120, '2018-02-01'),
	(11, 'Determinar o Perfil do Servidor', 'Determinar os requisitos de configuração do servidor onde será instalado o sistema', 40, '2018-02-01'),
	(12, 'Determinar procedimento de instalação do SGBD', 'Determinar procedimentos de instalação do SGBD e porte de dados legados de outros sistemas', 40, '2018-02-01'),
	(13, 'Instalar e executar o porte de dados.', 'Instalar o SGBD e resalizar os procedimentos para coletar e armazenar nos Bancos de Dados os dados legados de outros sistemas que já se usavam na organização.', 40, '2018-02-01'),
	(14, 'Determinar o procedimentos de migração do sistema.', 'Determinar o procedimentos de migração do sistema para os servidores em nuvem ou servidores remotos.', 40, '2018-02-01');
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;

DROP TABLE IF EXISTS `tarefasprojetos`;
CREATE TABLE IF NOT EXISTS `tarefasprojetos` (
  `pktarefprojeto` smallint(5) unsigned NOT NULL COMMENT 'PK da tabela',
  `fkprojeto` smallint(6) unsigned NOT NULL COMMENT 'FK indicando o código do projeto',
  `fktarefa` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código da tarefa de projeto',
  `qthorasenvolvidas` smallint(5) unsigned NOT NULL COMMENT 'Quantidade de horas comprometidas da tarefa no projeto',
  `nuordemtarefa` tinyint(3) unsigned DEFAULT NULL COMMENT 'Número de ordem da tarefa dentro do projeto',
  `dtcadtarefaprojeto` date DEFAULT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktarefprojeto`),
  KEY `ifktarefa` (`fktarefa`),
  KEY `ifkprojeto` (`fkprojeto`),
  CONSTRAINT `projtarefprojeto` FOREIGN KEY (`fkprojeto`) REFERENCES `projetos` (`pkprojeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tarefatarefprojeto` FOREIGN KEY (`fktarefa`) REFERENCES `tarefas` (`pktarefa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tareproj';

/*!40000 ALTER TABLE `tarefasprojetos` DISABLE KEYS */;
INSERT INTO `tarefasprojetos` (`pktarefprojeto`, `fkprojeto`, `fktarefa`, `qthorasenvolvidas`, `nuordemtarefa`, `dtcadtarefaprojeto`) VALUES
	(1, 1, 1, 10, 1, '2018-02-08'),
	(2, 1, 2, 10, 2, '2018-02-08'),
	(3, 1, 3, 10, 3, '2018-02-08'),
	(4, 1, 4, 10, 4, '2018-02-08'),
	(5, 1, 5, 10, 5, '2018-02-08'),
	(6, 1, 6, 10, 6, '2018-02-08'),
	(7, 1, 7, 10, 7, '2018-02-08'),
	(8, 1, 8, 10, 8, '2018-02-08'),
	(9, 1, 9, 10, 9, '2018-02-08'),
	(10, 1, 10, 10, 10, '2018-02-08'),
	(11, 1, 11, 10, 11, '2018-02-08'),
	(12, 1, 12, 10, 12, '2018-02-08'),
	(13, 1, 13, 10, 13, '2018-02-08'),
	(14, 1, 14, 10, 14, '2018-02-08'),
	(15, 2, 1, 10, 1, '2018-02-08'),
	(16, 2, 2, 10, 2, '2018-02-08'),
	(17, 2, 3, 10, 3, '2018-02-08'),
	(18, 2, 4, 10, 4, '2018-02-08'),
	(19, 2, 5, 10, 5, '2018-02-08'),
	(20, 2, 6, 10, 6, '2018-02-08'),
	(21, 2, 7, 10, 7, '2018-02-08'),
	(22, 2, 8, 10, 8, '2018-02-08'),
	(23, 2, 9, 10, 9, '2018-02-08'),
	(24, 2, 10, 10, 10, '2018-02-08'),
	(25, 2, 11, 10, 11, '2018-02-08'),
	(26, 2, 12, 10, 12, '2018-02-08'),
	(27, 2, 13, 10, 13, '2018-02-08'),
	(28, 2, 14, 10, 14, '2018-02-08'),
	(29, 3, 1, 10, 1, '2018-02-08'),
	(30, 3, 2, 10, 2, '2018-02-08'),
	(31, 3, 3, 10, 3, '2018-02-08'),
	(32, 3, 4, 10, 4, '2018-02-08'),
	(33, 3, 5, 10, 5, '2018-02-08'),
	(34, 3, 6, 10, 6, '2018-02-08'),
	(35, 3, 7, 10, 7, '2018-02-08'),
	(36, 3, 8, 10, 8, '2018-02-08'),
	(37, 3, 9, 10, 9, '2018-02-08'),
	(38, 3, 10, 10, 10, '2018-02-08'),
	(39, 3, 11, 10, 11, '2018-02-08'),
	(40, 3, 12, 10, 12, '2018-02-08'),
	(41, 3, 13, 10, 13, '2018-02-08'),
	(42, 3, 14, 10, 14, '2018-02-08'),
	(43, 4, 1, 10, 1, '2018-02-08'),
	(44, 4, 2, 10, 2, '2018-02-08'),
	(45, 4, 3, 10, 3, '2018-02-08'),
	(46, 4, 4, 10, 4, '2018-02-08'),
	(47, 4, 5, 10, 5, '2018-02-08'),
	(48, 4, 6, 10, 6, '2018-02-08'),
	(49, 4, 7, 10, 7, '2018-02-08'),
	(50, 4, 8, 10, 8, '2018-02-08'),
	(51, 4, 9, 10, 9, '2018-02-08'),
	(52, 4, 10, 10, 10, '2018-02-08'),
	(53, 4, 11, 10, 11, '2018-02-08'),
	(54, 4, 12, 10, 12, '2018-02-08'),
	(55, 4, 13, 10, 13, '2018-02-08'),
	(56, 4, 14, 10, 14, '2018-02-08');
/*!40000 ALTER TABLE `tarefasprojetos` ENABLE KEYS */;

DROP TABLE IF EXISTS `telefonestipos`;
CREATE TABLE IF NOT EXISTS `telefonestipos` (
  `pktipotelefone` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txdescricao` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o tipo de telefone',
  `dtcadtelefonetipo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktipotelefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos tipos de telefones.';

/*!40000 ALTER TABLE `telefonestipos` DISABLE KEYS */;
INSERT INTO `telefonestipos` (`pktipotelefone`, `txdescricao`, `dtcadtelefonetipo`) VALUES
	(1, 'Fixo residencial', '2018-02-01'),
	(2, 'Fixo empresarial', '2018-02-01'),
	(3, 'Celular pessoal', '2018-02-01'),
	(4, 'Celular empresarial', '2018-02-01'),
	(5, 'Fixo comunitário', '2018-02-01'),
	(6, 'Celular compartilhado', '2018-02-01');
/*!40000 ALTER TABLE `telefonestipos` ENABLE KEYS */;

DROP TABLE IF EXISTS `titulacoes`;
CREATE TABLE IF NOT EXISTS `titulacoes` (
  `pktitulacao` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkprofessor` smallint(6) unsigned NOT NULL COMMENT 'FK para professores',
  `fktitulo` smallint(6) unsigned DEFAULT NULL COMMENT 'FK para títulos',
  `dtcadtitulacao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktitulacao`),
  KEY `ifkprofessor` (`fkprofessor`),
  KEY `ifktitulo` (`fktitulo`),
  CONSTRAINT `proftitulacao` FOREIGN KEY (`fkprofessor`) REFERENCES `professores` (`pkprofessor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `titulotitulacao` FOREIGN KEY (`fktitulo`) REFERENCES `titulos` (`pktitulo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='titulaco';

/*!40000 ALTER TABLE `titulacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `titulacoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `titulos`;
CREATE TABLE IF NOT EXISTS `titulos` (
  `pktitulo` smallint(6) unsigned NOT NULL COMMENT 'Pk da tabela',
  `txnometitulo` varchar(150) COLLATE utf8_bin NOT NULL COMMENT 'Descrição do Título',
  `dtcadtitulo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktitulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='titulosx';

/*!40000 ALTER TABLE `titulos` DISABLE KEYS */;
INSERT INTO `titulos` (`pktitulo`, `txnometitulo`, `dtcadtitulo`) VALUES
	(1, 'Ensino fundamental I', '2018-02-01'),
	(2, 'Ensino fundamental II', '2018-02-01'),
	(3, 'Ensino médio', '2018-02-01'),
	(4, 'Ensino superior', '2018-02-01'),
	(5, 'Especialista', '2018-02-01'),
	(6, 'Mestre', '2018-02-01'),
	(7, 'Doutor', '2018-02-01');
/*!40000 ALTER TABLE `titulos` ENABLE KEYS */;

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE IF NOT EXISTS `veiculos` (
  `pkveiculo` int(10) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fktipoveiculo` smallint(6) unsigned DEFAULT NULL COMMENT 'FK indicando o código do tipo de veiculo.',
  `fkfuncionario` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código do funcionário.',
  `fkmodelo` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código do modelo.',
  `fkcor` smallint(5) unsigned DEFAULT NULL COMMENT 'FK indicando o código da cor.',
  `ukplaca` char(7) COLLATE utf8_bin NOT NULL COMMENT 'Placa do carro (somente letras e números)',
  `aotipo` char(1) COLLATE utf8_bin NOT NULL COMMENT 'Indica se o veículo é C-Carro, O-ônibus ou N-Outro tipo',
  `txapelido` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT 'Nome de apelido do ônibus',
  `qtcapacidade` tinyint(3) unsigned DEFAULT NULL COMMENT 'Quantidade de acentos no ônibus',
  `aostatus` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'Indica o status do veículo do Funcionário (P=Principal e S=Secundário).',
  `nuanofabricacao` year(4) NOT NULL COMMENT 'Ano de fabricação do carro',
  `dtcadveiculo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkveiculo`),
  UNIQUE KEY `iukplaca` (`ukplaca`),
  KEY `ifktipoveiculo` (`fktipoveiculo`),
  KEY `ifkfuncionario` (`fkfuncionario`),
  KEY `ifkmodelo` (`fkmodelo`),
  KEY `ifkcor` (`fkcor`),
  CONSTRAINT `corveiculo` FOREIGN KEY (`fkcor`) REFERENCES `cores` (`pkcor`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `funcveiculo` FOREIGN KEY (`fkfuncionario`) REFERENCES `funcionarios` (`pkfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `veicmodeloveiculo` FOREIGN KEY (`fkmodelo`) REFERENCES `veiculosmodelos` (`pkmodelo`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `veictipoveiculo` FOREIGN KEY (`fktipoveiculo`) REFERENCES `veiculostipos` (`pktipoveiculo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='veiculos';

/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;

DROP TABLE IF EXISTS `veiculosmarcas`;
CREATE TABLE IF NOT EXISTS `veiculosmarcas` (
  `pkmarca` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomemarca` varchar(90) NOT NULL COMMENT 'Nome completo e sem abreviações',
  `fkfabricante` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código do fabricante da marca.',
  `dtcadmarca` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkmarca`),
  KEY `ifkfabricante` (`fkfabricante`),
  CONSTRAINT `fabricveiculomarca` FOREIGN KEY (`fkfabricante`) REFERENCES `fabricantes` (`pkfabricante`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das Marcas de Veículos criadas pelos fabricantes.';

/*!40000 ALTER TABLE `veiculosmarcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculosmarcas` ENABLE KEYS */;

DROP TABLE IF EXISTS `veiculosmodelos`;
CREATE TABLE IF NOT EXISTS `veiculosmodelos` (
  `pkmodelo` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkmarca` smallint(5) unsigned DEFAULT NULL COMMENT 'FK com o código da marca de veiculos feitos por fabricantes',
  `txdescricaomodelo` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto com a descrição do modelo',
  `aotipocombustivel` char(1) COLLATE utf8_bin NOT NULL COMMENT 'Atributo Operacional: tipo de combustível Álcool, Gasolina, Diesel, GáS ou Flex',
  `dtcadmodelo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkmodelo`),
  KEY `ifkmarca` (`fkmarca`),
  CONSTRAINT `marcaveicmodelo` FOREIGN KEY (`fkmarca`) REFERENCES `veiculosmarcas` (`pkmarca`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='modveicl';

/*!40000 ALTER TABLE `veiculosmodelos` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculosmodelos` ENABLE KEYS */;

DROP TABLE IF EXISTS `veiculostipos`;
CREATE TABLE IF NOT EXISTS `veiculostipos` (
  `pktipoveiculo` smallint(6) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txdescricao` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o tipo de veiculo (carro, caminhonete, motocicleta, etc)',
  `dtcadveiculotipo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pktipoveiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos tipos de veículos.';

/*!40000 ALTER TABLE `veiculostipos` DISABLE KEYS */;
INSERT INTO `veiculostipos` (`pktipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(1, 'Aquático movido à vela', '2018-02-01'),
	(2, 'Aquático movido à motor diesel', '2018-02-01'),
	(3, 'Aquático movido à motor de gasolina', '2018-02-01'),
	(4, 'Aquático movido à motor elétrico', '2018-02-01'),
	(5, 'Terrestre movido à motor diesel', '2018-02-01'),
	(6, 'Terrestre movido à motor de gasolina', '2018-02-01'),
	(7, 'Terrestre movido à motor elétrico', '2018-02-01'),
	(8, 'Aéreo movido à motor diesel', '2018-02-01'),
	(9, 'Aéreo movido à motor de gasolina', '2018-02-01'),
	(10, 'Aéreo movido à jato', '2018-02-01'),
	(11, 'Aéreo movido à motor de querosene', '2018-02-01');
/*!40000 ALTER TABLE `veiculostipos` ENABLE KEYS */;

DROP TABLE IF EXISTS `viagens`;
CREATE TABLE IF NOT EXISTS `viagens` (
  `pkviagem` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `fkonibus` int(10) unsigned DEFAULT NULL COMMENT 'FK com o código do ônibus que realiza a Viagem.',
  `fkrota` mediumint(8) unsigned DEFAULT NULL COMMENT 'FK com o código da rota viária da viagem.',
  `dtviagem` date NOT NULL COMMENT 'Data de realização da viagem',
  `hrsaida` time NOT NULL COMMENT 'Hora de saída da viagem',
  `dtcadviagem` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`pkviagem`),
  KEY `ifkrota` (`fkrota`),
  KEY `ifkonibus` (`fkonibus`),
  CONSTRAINT `onibusviagem` FOREIGN KEY (`fkonibus`) REFERENCES `veiculos` (`pkveiculo`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rotaviagem` FOREIGN KEY (`fkrota`) REFERENCES `rotasviarias` (`pkrota`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='viagensx';

/*!40000 ALTER TABLE `viagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `viagens` ENABLE KEYS */;

DROP VIEW IF EXISTS `carros`;
DROP TABLE IF EXISTS `carros`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carros` AS SELECT pkveiculo as pkcarro,
       ukplaca,
		 fkfuncionario,
		 fkcor,
		 aostatus,
		 dtcadveiculo as dtcadcarro from veiculos where aotipo='C' ;

DROP VIEW IF EXISTS `faturas`;
DROP TABLE IF EXISTS `faturas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faturas` AS SELECT faturascompras.*, "C" as aotipo FROM faturascompras
       UNION
       (SELECT faturasvendas.*, "V" as aotipo FROM faturasvendas) ;

DROP VIEW IF EXISTS `onibus`;
DROP TABLE IF EXISTS `onibus`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `onibus` AS SELECT pkveiculo as pkonibus,
       ukplaca,
       txapelido,
       fkcor,
       fkmodelo,
       qtcapacidade,
       nuanofabricacao,
       dtcadveiculo as dtcadonibus from veiculos where aotipo='O' ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
