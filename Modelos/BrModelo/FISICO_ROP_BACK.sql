-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 17/03/2019 às 22:37
-- Versão do servidor: 10.1.37-MariaDB-0+deb9u1
-- Versão do PHP: 7.2.16-1+0~20190307202415.17+stretch~1.gbpa7be82

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marlon24_rop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `AGE_AGENTE`
--

CREATE TABLE `AGE_AGENTE` (
  `AGE_ID` int(11) NOT NULL,
  `CAR_ID` int(3) NOT NULL,
  `AGE_MATRICULA` int(11) NOT NULL,
  `DATA_NASCIMENTO` date DEFAULT NULL,
  `AGE_NOME` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGE_EMAIL` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `AGE_LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGE_SENHA` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `AGE_AGENTE`
--

INSERT INTO `AGE_AGENTE` (`AGE_ID`, `CAR_ID`, `AGE_MATRICULA`, `DATA_NASCIMENTO`, `AGE_NOME`, `AGE_EMAIL`, `AGE_LOGIN`, `AGE_SENHA`) VALUES
(1, 1, 1137204, '1985-11-16', 'Marlon de Lima Castro', 'marloncastro@live.com', 'marlon', '$argon2i$v=19$m=1024,t=2,p=2$RmpRU21tak53Q2QzZnZoUA$Y7tkRmjDYfXCEZv48OYE4ZXWla3jAASMOQU7mdUe7Xk'),
(3, 1, 1096672, '2000-01-03', 'Novo Fulano Cadastrado', 'fulano@gmail.com', 'fulano', '3342949e2e99fc2f304de6fdd626a188');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ALT_ALTURA`
--

CREATE TABLE `ALT_ALTURA` (
  `ALT_ID` int(2) NOT NULL,
  `ALT_DESCRICAO` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ALT_ALTURA`
--

INSERT INTO `ALT_ALTURA` (`ALT_ID`, `ALT_DESCRICAO`) VALUES
(1, 'Até 0.5m'),
(2, '0.6m a 1.0m'),
(3, '1.01m a 1.50m'),
(4, '1.51m a 1.70m'),
(5, '1.71m a 1.80m'),
(6, 'Acima de 1.80m');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CAR_CARGO_GRADUACAO`
--

CREATE TABLE `CAR_CARGO_GRADUACAO` (
  `CAR_ID` int(3) NOT NULL,
  `CAR_DESCRICAO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `CAR_CARGO_GRADUACAO`
--

INSERT INTO `CAR_CARGO_GRADUACAO` (`CAR_ID`, `CAR_DESCRICAO`) VALUES
(1, 'Soldado'),
(2, 'Cabo'),
(5, 'Sargento'),
(6, 'Sub Tenente'),
(7, 'Aspirante '),
(8, 'Tenente'),
(9, 'Capitão'),
(10, 'Major'),
(11, 'Tenente Coronel'),
(12, 'Coronel');

-- --------------------------------------------------------

--
-- Estrutura para tabela `COR_PELE`
--

CREATE TABLE `COR_PELE` (
  `COR_ID` int(3) NOT NULL,
  `COR_DESCRICAO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `COR_PELE`
--

INSERT INTO `COR_PELE` (`COR_ID`, `COR_DESCRICAO`) VALUES
(1, 'Parda'),
(2, 'Branca'),
(3, 'Negra'),
(4, 'Amarela');

-- --------------------------------------------------------

--
-- Estrutura para tabela `DOC_DOCUMENTO`
--

CREATE TABLE `DOC_DOCUMENTO` (
  `DOC_ID` int(5) NOT NULL,
  `DOC_NUM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_DESCRICAO` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ORGAO_EXPEDIDOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_ID` int(11) DEFAULT NULL,
  `TIPO_DOC_ID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `END_ENDERECO`
--

CREATE TABLE `END_ENDERECO` (
  `END_ID` int(11) NOT NULL,
  `END_LOGRADOURO` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `END_CEP` int(8) DEFAULT NULL,
  `END_MUNICIPIO` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `END_UF` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `END_PONTO_REFERENCIA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `END_BAIRRO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `END_COMPLEMENTO` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `END_NUM` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ENV_ENVOLVIDO`
--

CREATE TABLE `ENV_ENVOLVIDO` (
  `ENV_ID` int(11) NOT NULL,
  `ENV_TURISTA` enum('S','N') COLLATE utf8_unicode_ci NOT NULL,
  `ENV_APELIDO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_NOME_RAZAO_SOCIAL` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `ENV_NOME_PAI` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_NOME_MAE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_SEXO` enum('M','F') COLLATE utf8_unicode_ci NOT NULL,
  `ENV_NATURALIDADE` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_DATA_NASCIMENTO` date DEFAULT NULL,
  `ENV_BIGODE` enum('S','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_CABELO_TIPO_COR` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_BARBA` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_TIPO_CICATRIZ` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_TATUAGEM` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_DEFEITO_FISICO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_DENTES` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENV_TIPO` enum('F','J') COLLATE utf8_unicode_ci NOT NULL,
  `ALT_ID` int(2) NOT NULL,
  `COR_ID` int(3) NOT NULL,
  `END_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ENV_ENVOLVIMENTO_AGENTE`
--

CREATE TABLE `ENV_ENVOLVIMENTO_AGENTE` (
  `ENV_ID` int(2) NOT NULL,
  `ENV_DESCRICAO` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ENV_ENVOLVIMENTO_AGENTE`
--

INSERT INTO `ENV_ENVOLVIMENTO_AGENTE` (`ENV_ID`, `ENV_DESCRICAO`) VALUES
(0, 'Testemunha'),
(1, 'Condutor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ESC_ESCOLARIDADE`
--

CREATE TABLE `ESC_ESCOLARIDADE` (
  `ESC_ID` int(2) NOT NULL,
  `ESC_DESCRICAO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ESC_ESCOLARIDADE`
--

INSERT INTO `ESC_ESCOLARIDADE` (`ESC_ID`, `ESC_DESCRICAO`) VALUES
(1, '1º Grau Completo'),
(2, '1º Grau Incompleto'),
(3, '2º Grau Completo'),
(4, '2º Grau Icompleto'),
(5, 'Superior Completo'),
(6, 'Superior Incompleto'),
(7, 'Analfabeto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ESTADO_CIVIL`
--

CREATE TABLE `ESTADO_CIVIL` (
  `EST_ID` int(2) NOT NULL,
  `EST_DESCRICAO` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ESTADO_CIVIL`
--

INSERT INTO `ESTADO_CIVIL` (`EST_ID`, `EST_DESCRICAO`) VALUES
(1, 'Solteiro(a)'),
(2, 'Casado(a)'),
(3, 'Viúvo(a)'),
(4, 'Divorciado(a)'),
(5, 'Amasiado(a)'),
(6, 'Separado(a)'),
(7, 'Não Informado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `IDA_IDADE_APARENTE`
--

CREATE TABLE `IDA_IDADE_APARENTE` (
  `IDA_ID` int(2) NOT NULL,
  `IDA_DESCRICAO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `IDA_IDADE_APARENTE`
--

INSERT INTO `IDA_IDADE_APARENTE` (`IDA_ID`, `IDA_DESCRICAO`) VALUES
(1, 'Recém Rascido / Lactante'),
(2, 'Criança (1-12 Anos)'),
(3, 'Adolescente (13-17 Anos)'),
(4, 'Adulto - Jovem (18-30 Anos)'),
(5, 'Adulto (31-65 Anos)'),
(6, 'Idoso (Acima de 65 Anos)');

-- --------------------------------------------------------

--
-- Estrutura para tabela `MODUS_OPERANDI`
--

CREATE TABLE `MODUS_OPERANDI` (
  `MOD_ID` int(11) NOT NULL,
  `MOD_FORMA_APROXIMACAO` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_FORMA_ACAO_ABORDAGEM` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_LOCAL_ENTRADA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_FORMA_ENTRADA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_ALTERACOES_NO_LOCAL` enum('S','N') COLLATE utf8_unicode_ci NOT NULL,
  `MOD_FORMA_DE_EVASAO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_CRIMES_SEXUAIS` enum('S','N') COLLATE utf8_unicode_ci NOT NULL,
  `MOD_ESTELIONATO` enum('S','N') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `OBJ_OBJETO`
--

CREATE TABLE `OBJ_OBJETO` (
  `OBJ_ID` int(11) NOT NULL,
  `OBJ_TIPO` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OBJ_VALOR` float DEFAULT NULL,
  `OBJ_APREENDIDO` enum('S','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBJ_NUM_SERIE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBJ_MARCA_MODELO` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBJ_MOEDA` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBJ_QUANTIDADE` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `OBJ_ROP_ENVOLVIDO`
--

CREATE TABLE `OBJ_ROP_ENVOLVIDO` (
  `OBJ_ID` int(11) NOT NULL,
  `ENV_ID` int(11) NOT NULL,
  `ROP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ORG_ORGAO`
--

CREATE TABLE `ORG_ORGAO` (
  `ORG_ID` int(5) NOT NULL,
  `ORG_DESCRICAO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ORG_TELEFONE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ORG_CNPJ` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `ORG_ORGAO`
--

INSERT INTO `ORG_ORGAO` (`ORG_ID`, `ORG_DESCRICAO`, `ORG_TELEFONE`, `ORG_CNPJ`) VALUES
(1, 'Policia Militar de Pernambuco', '3181-1780', '11433190000157');

-- --------------------------------------------------------

--
-- Estrutura para tabela `PARTICIPA`
--

CREATE TABLE `PARTICIPA` (
  `ROP_ID` int(11) NOT NULL,
  `AGE_ID` int(11) NOT NULL,
  `ENV_ID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PESO`
--

CREATE TABLE `PESO` (
  `PESO_ID` int(2) NOT NULL,
  `PESO_DESCRICAO` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `PESO`
--

INSERT INTO `PESO` (`PESO_ID`, `PESO_DESCRICAO`) VALUES
(1, 'Até 20Kg'),
(2, '21kg a 40Kg'),
(3, '41Kg a 60Kg'),
(4, '61Kg a 80Kg'),
(5, '81Kg a 100Kg'),
(6, 'Acima de 100Kg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `POSSUI_ESCOLARIDADE`
--

CREATE TABLE `POSSUI_ESCOLARIDADE` (
  `ENV_ID` int(11) NOT NULL,
  `ESC_ID` int(2) NOT NULL,
  `ROP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `POSSUI_EST_CIVIL`
--

CREATE TABLE `POSSUI_EST_CIVIL` (
  `ENV_ID` int(11) NOT NULL,
  `EST_ID` int(2) NOT NULL,
  `ROP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `POSSUI_IDADE_APARENTE`
--

CREATE TABLE `POSSUI_IDADE_APARENTE` (
  `ENV_ID` int(11) NOT NULL,
  `IDA_ID` int(2) NOT NULL,
  `ROP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `POSSUI_PESO`
--

CREATE TABLE `POSSUI_PESO` (
  `ENV_ID` int(11) NOT NULL,
  `PESO_ID` int(2) NOT NULL,
  `ROP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PROF_PROFISSAO_EMPRESA`
--

CREATE TABLE `PROF_PROFISSAO_EMPRESA` (
  `PROF_ID` int(5) NOT NULL,
  `PROF_PROFISSAO` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `PROF_NOME_EMPRESA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `END_ID` int(11) DEFAULT NULL,
  `ENV_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ROP`
--

CREATE TABLE `ROP` (
  `ROP_ID` int(11) NOT NULL,
  `ROP_NUM_OCORRENCIA` int(11) NOT NULL,
  `ROP_UNIDADE_OCORRENCIA` int(11) NOT NULL,
  `ROP_CIRCUNSCRICAO` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ROP_CIRCUNSCRICAO_FATO` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ROP_VIATURA` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ROP_DADOS_COMPLEMENTARES` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ROP_LOCAL_PRINCIPAL_OCORRENCIA` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ROP_CRIME_DOLOSO` enum('S','N') COLLATE utf8_unicode_ci NOT NULL,
  `ROP_FLAGRANTE` enum('S','N') COLLATE utf8_unicode_ci NOT NULL,
  `ROP_AUTORIA` enum('C','D') COLLATE utf8_unicode_ci NOT NULL,
  `ROP_HORA_DO_FATO` time NOT NULL,
  `ROP_HORA_REGISTRO` time NOT NULL,
  `ROP_DATA_DO_FATO` date NOT NULL,
  `ROP_DATA_REGISTRO` date NOT NULL,
  `ROP_DESCRICAO_DA_NATUREZA` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROP_CRIME_CONSUMADO` enum('S','N') COLLATE utf8_unicode_ci NOT NULL,
  `MOD_ID` int(11) DEFAULT NULL,
  `END_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TEL_TELEFONE`
--

CREATE TABLE `TEL_TELEFONE` (
  `TEL_ID` int(11) NOT NULL,
  `TEL_NUMERO` int(11) NOT NULL,
  `ENV_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TIPO_DOCUMENTO`
--

CREATE TABLE `TIPO_DOCUMENTO` (
  `TIPO_DOC_ID` int(2) NOT NULL,
  `TIPO_DOC_DESCRICAO` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `TIPO_DOCUMENTO`
--

INSERT INTO `TIPO_DOCUMENTO` (`TIPO_DOC_ID`, `TIPO_DOC_DESCRICAO`) VALUES
(0, 'RG'),
(1, 'CPF'),
(2, 'CNH'),
(3, 'CNPJ'),
(4, 'OUTROS');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TIPO_ENVOLVIMENTO`
--

CREATE TABLE `TIPO_ENVOLVIMENTO` (
  `TIPO_ENV_ID` int(2) NOT NULL,
  `TIPO_ENV_DESCRICAO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `TIPO_ENVOLVIMENTO`
--

INSERT INTO `TIPO_ENVOLVIMENTO` (`TIPO_ENV_ID`, `TIPO_ENV_DESCRICAO`) VALUES
(0, 'Vitima'),
(1, 'Imputado'),
(2, 'Suspeito'),
(3, 'Testemunha'),
(4, 'Outros');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TIPO_ENVOLV_ROP_ENVOLVIDO`
--

CREATE TABLE `TIPO_ENVOLV_ROP_ENVOLVIDO` (
  `TIPO_ENV_ID` int(2) NOT NULL,
  `ROP_ID` int(11) NOT NULL,
  `ENV_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TOK_TOKEN`
--

CREATE TABLE `TOK_TOKEN` (
  `TOK_ID` int(11) NOT NULL,
  `AGE_ID` int(11) NOT NULL,
  `TOK_TOKEN` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `TOK_REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `TOK_EXPIRED_AT` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `TOK_TOKEN`
--

INSERT INTO `TOK_TOKEN` (`TOK_ID`, `AGE_ID`, `TOK_TOKEN`, `TOK_REFRESH_TOKEN`, `TOK_EXPIRED_AT`) VALUES
(1, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsIm5hbWUiOiJNYXJsb24gZGUgTGltYSBDYXN0cm8iLCJtYXRyaWN1bGEiOjExMzcyMDQsImV4cGlyZWRfYXQiOiIyMDE5LTAzLTIyIDEwLTU5LTI4In0._eyZKj8o5oyT9WZ52SD6V4HMDWJizE5Ab_rBNe3pufM', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsIm5hbWUiOiJNYXJsb24gZGUgTGltYSBDYXN0cm8iLCJlbWFpbCI6Im1hcmxvbmNhc3Ryb0BsaXZlLmNvbSIsImV4cGlyZWRfYXQiOiIyMDE5LTAzLTMwIDEwLTU5LTI4In0.lWEhnA9K-xP7K67w5NNJYSB6CLir5frO-oRgJmi0R9Y', '2019-03-22 10:59:28'),
(2, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsIm5hbWUiOiJNYXJsb24gZGUgTGltYSBDYXN0cm8iLCJtYXRyaWN1bGEiOjExMzcyMDQsImV4cGlyZWRfYXQiOiIyMDE5LTAzLTIyIDExLTA0LTQ4In0.N1mN8aymo_BzFekC9QHjbYHrbb06MDrvPmmU1Km22Lc', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEsIm5hbWUiOiJNYXJsb24gZGUgTGltYSBDYXN0cm8iLCJlbWFpbCI6Im1hcmxvbmNhc3Ryb0BsaXZlLmNvbSIsImV4cGlyZWRfYXQiOiIyMDE5LTAzLTMwIDExLTA0LTQ4In0.feVUgq_sLprB29UgfAHLoxWKEjp1EtUE1ulMkKWCLQ0', '2019-03-22 11:04:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `UNIDADE_AGENTE`
--

CREATE TABLE `UNIDADE_AGENTE` (
  `UNI_AGENTE_ID` int(11) NOT NULL,
  `UNI_ID` int(11) NOT NULL,
  `AGE_ID` int(11) NOT NULL,
  `UNI_DATA_ENTRADA` date NOT NULL,
  `UNI_DATA_SAIDA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `UNIDADE_AGENTE`
--

INSERT INTO `UNIDADE_AGENTE` (`UNI_AGENTE_ID`, `UNI_ID`, `AGE_ID`, `UNI_DATA_ENTRADA`, `UNI_DATA_SAIDA`) VALUES
(1, 1, 1, '2011-02-18', '2019-01-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `UNI_UNIDADE_OPERACIONAL`
--

CREATE TABLE `UNI_UNIDADE_OPERACIONAL` (
  `UNI_ID` int(11) NOT NULL,
  `UNI_FONE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNI_LOCAL` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNI_DESCRICAO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORG_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `UNI_UNIDADE_OPERACIONAL`
--

INSERT INTO `UNI_UNIDADE_OPERACIONAL` (`UNI_ID`, `UNI_FONE`, `UNI_LOCAL`, `UNI_DESCRICAO`, `ORG_ID`) VALUES
(1, '3181-1791', 'Cais de Santa Rita, s/nº (Antiga Rodoviária) - São José, Recife', '16º Batalhão - Frei Caneca', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `VEICULO_ROP_ENVOLVIDO`
--

CREATE TABLE `VEICULO_ROP_ENVOLVIDO` (
  `VEI_ID` int(11) NOT NULL,
  `ENV_ID` int(11) NOT NULL,
  `ROP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `VEI_VEICULO`
--

CREATE TABLE `VEI_VEICULO` (
  `VEI_ID` int(11) NOT NULL,
  `VEI_COR` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEI_RENAVAM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEI_UF` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEI_CHASSI` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEI_PLACA` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `VEI_APREENDIDO` enum('S','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEI_MOTIVO_DO_REGISTRO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEI_MARCA_MODELO` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `VEI_ANO` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `AGE_AGENTE`
--
ALTER TABLE `AGE_AGENTE`
  ADD PRIMARY KEY (`AGE_ID`),
  ADD UNIQUE KEY `AGE_MATRICULA` (`AGE_MATRICULA`),
  ADD UNIQUE KEY `AGE_EMAIL` (`AGE_EMAIL`),
  ADD KEY `CAR_ID` (`CAR_ID`);

--
-- Índices de tabela `ALT_ALTURA`
--
ALTER TABLE `ALT_ALTURA`
  ADD PRIMARY KEY (`ALT_ID`);

--
-- Índices de tabela `CAR_CARGO_GRADUACAO`
--
ALTER TABLE `CAR_CARGO_GRADUACAO`
  ADD PRIMARY KEY (`CAR_ID`);

--
-- Índices de tabela `COR_PELE`
--
ALTER TABLE `COR_PELE`
  ADD PRIMARY KEY (`COR_ID`);

--
-- Índices de tabela `DOC_DOCUMENTO`
--
ALTER TABLE `DOC_DOCUMENTO`
  ADD PRIMARY KEY (`DOC_ID`),
  ADD UNIQUE KEY `DOC_NUM` (`DOC_NUM`),
  ADD KEY `ENV_ID` (`ENV_ID`),
  ADD KEY `TIPO_DOC_ID` (`TIPO_DOC_ID`);

--
-- Índices de tabela `END_ENDERECO`
--
ALTER TABLE `END_ENDERECO`
  ADD PRIMARY KEY (`END_ID`);

--
-- Índices de tabela `ENV_ENVOLVIDO`
--
ALTER TABLE `ENV_ENVOLVIDO`
  ADD PRIMARY KEY (`ENV_ID`),
  ADD KEY `ALT_ID` (`ALT_ID`),
  ADD KEY `COR_ID` (`COR_ID`),
  ADD KEY `END_ID` (`END_ID`);

--
-- Índices de tabela `ENV_ENVOLVIMENTO_AGENTE`
--
ALTER TABLE `ENV_ENVOLVIMENTO_AGENTE`
  ADD PRIMARY KEY (`ENV_ID`);

--
-- Índices de tabela `ESC_ESCOLARIDADE`
--
ALTER TABLE `ESC_ESCOLARIDADE`
  ADD PRIMARY KEY (`ESC_ID`);

--
-- Índices de tabela `ESTADO_CIVIL`
--
ALTER TABLE `ESTADO_CIVIL`
  ADD PRIMARY KEY (`EST_ID`);

--
-- Índices de tabela `IDA_IDADE_APARENTE`
--
ALTER TABLE `IDA_IDADE_APARENTE`
  ADD PRIMARY KEY (`IDA_ID`);

--
-- Índices de tabela `MODUS_OPERANDI`
--
ALTER TABLE `MODUS_OPERANDI`
  ADD PRIMARY KEY (`MOD_ID`);

--
-- Índices de tabela `OBJ_OBJETO`
--
ALTER TABLE `OBJ_OBJETO`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Índices de tabela `OBJ_ROP_ENVOLVIDO`
--
ALTER TABLE `OBJ_ROP_ENVOLVIDO`
  ADD PRIMARY KEY (`OBJ_ID`,`ENV_ID`,`ROP_ID`);

--
-- Índices de tabela `ORG_ORGAO`
--
ALTER TABLE `ORG_ORGAO`
  ADD PRIMARY KEY (`ORG_ID`),
  ADD UNIQUE KEY `ORG_CNPJ` (`ORG_CNPJ`);

--
-- Índices de tabela `PARTICIPA`
--
ALTER TABLE `PARTICIPA`
  ADD PRIMARY KEY (`ROP_ID`,`AGE_ID`,`ENV_ID`);

--
-- Índices de tabela `PESO`
--
ALTER TABLE `PESO`
  ADD PRIMARY KEY (`PESO_ID`);

--
-- Índices de tabela `POSSUI_ESCOLARIDADE`
--
ALTER TABLE `POSSUI_ESCOLARIDADE`
  ADD PRIMARY KEY (`ENV_ID`,`ESC_ID`,`ROP_ID`);

--
-- Índices de tabela `POSSUI_EST_CIVIL`
--
ALTER TABLE `POSSUI_EST_CIVIL`
  ADD PRIMARY KEY (`ENV_ID`,`EST_ID`,`ROP_ID`);

--
-- Índices de tabela `POSSUI_IDADE_APARENTE`
--
ALTER TABLE `POSSUI_IDADE_APARENTE`
  ADD PRIMARY KEY (`ENV_ID`,`IDA_ID`,`ROP_ID`);

--
-- Índices de tabela `POSSUI_PESO`
--
ALTER TABLE `POSSUI_PESO`
  ADD PRIMARY KEY (`ENV_ID`,`PESO_ID`,`ROP_ID`);

--
-- Índices de tabela `PROF_PROFISSAO_EMPRESA`
--
ALTER TABLE `PROF_PROFISSAO_EMPRESA`
  ADD PRIMARY KEY (`PROF_ID`),
  ADD KEY `END_ID` (`END_ID`),
  ADD KEY `ENV_ID` (`ENV_ID`);

--
-- Índices de tabela `ROP`
--
ALTER TABLE `ROP`
  ADD PRIMARY KEY (`ROP_ID`),
  ADD KEY `MOD_ID` (`MOD_ID`),
  ADD KEY `END_ID` (`END_ID`),
  ADD KEY `ROP_UNIDADE_OCORRENCIA` (`ROP_UNIDADE_OCORRENCIA`);

--
-- Índices de tabela `TEL_TELEFONE`
--
ALTER TABLE `TEL_TELEFONE`
  ADD PRIMARY KEY (`TEL_ID`),
  ADD KEY `ENV_ID` (`ENV_ID`);

--
-- Índices de tabela `TIPO_DOCUMENTO`
--
ALTER TABLE `TIPO_DOCUMENTO`
  ADD PRIMARY KEY (`TIPO_DOC_ID`);

--
-- Índices de tabela `TIPO_ENVOLVIMENTO`
--
ALTER TABLE `TIPO_ENVOLVIMENTO`
  ADD PRIMARY KEY (`TIPO_ENV_ID`);

--
-- Índices de tabela `TIPO_ENVOLV_ROP_ENVOLVIDO`
--
ALTER TABLE `TIPO_ENVOLV_ROP_ENVOLVIDO`
  ADD PRIMARY KEY (`TIPO_ENV_ID`,`ROP_ID`,`ENV_ID`);

--
-- Índices de tabela `TOK_TOKEN`
--
ALTER TABLE `TOK_TOKEN`
  ADD PRIMARY KEY (`TOK_ID`),
  ADD KEY `AGE_ID` (`AGE_ID`);

--
-- Índices de tabela `UNIDADE_AGENTE`
--
ALTER TABLE `UNIDADE_AGENTE`
  ADD PRIMARY KEY (`UNI_AGENTE_ID`),
  ADD KEY `UNI_ID` (`UNI_ID`),
  ADD KEY `AGE_ID` (`AGE_ID`);

--
-- Índices de tabela `UNI_UNIDADE_OPERACIONAL`
--
ALTER TABLE `UNI_UNIDADE_OPERACIONAL`
  ADD PRIMARY KEY (`UNI_ID`),
  ADD KEY `ORG_ID` (`ORG_ID`);

--
-- Índices de tabela `VEICULO_ROP_ENVOLVIDO`
--
ALTER TABLE `VEICULO_ROP_ENVOLVIDO`
  ADD PRIMARY KEY (`VEI_ID`,`ENV_ID`,`ROP_ID`);

--
-- Índices de tabela `VEI_VEICULO`
--
ALTER TABLE `VEI_VEICULO`
  ADD PRIMARY KEY (`VEI_ID`),
  ADD UNIQUE KEY `VEI_PLACA` (`VEI_PLACA`),
  ADD UNIQUE KEY `VEI_RENAVAM` (`VEI_RENAVAM`),
  ADD UNIQUE KEY `VEI_CHASSI` (`VEI_CHASSI`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `AGE_AGENTE`
--
ALTER TABLE `AGE_AGENTE`
  MODIFY `AGE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `ALT_ALTURA`
--
ALTER TABLE `ALT_ALTURA`
  MODIFY `ALT_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `CAR_CARGO_GRADUACAO`
--
ALTER TABLE `CAR_CARGO_GRADUACAO`
  MODIFY `CAR_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de tabela `COR_PELE`
--
ALTER TABLE `COR_PELE`
  MODIFY `COR_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `DOC_DOCUMENTO`
--
ALTER TABLE `DOC_DOCUMENTO`
  MODIFY `DOC_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `END_ENDERECO`
--
ALTER TABLE `END_ENDERECO`
  MODIFY `END_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ENV_ENVOLVIDO`
--
ALTER TABLE `ENV_ENVOLVIDO`
  MODIFY `ENV_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ESC_ESCOLARIDADE`
--
ALTER TABLE `ESC_ESCOLARIDADE`
  MODIFY `ESC_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `ESTADO_CIVIL`
--
ALTER TABLE `ESTADO_CIVIL`
  MODIFY `EST_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `IDA_IDADE_APARENTE`
--
ALTER TABLE `IDA_IDADE_APARENTE`
  MODIFY `IDA_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `MODUS_OPERANDI`
--
ALTER TABLE `MODUS_OPERANDI`
  MODIFY `MOD_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `OBJ_OBJETO`
--
ALTER TABLE `OBJ_OBJETO`
  MODIFY `OBJ_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ORG_ORGAO`
--
ALTER TABLE `ORG_ORGAO`
  MODIFY `ORG_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `PESO`
--
ALTER TABLE `PESO`
  MODIFY `PESO_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `PROF_PROFISSAO_EMPRESA`
--
ALTER TABLE `PROF_PROFISSAO_EMPRESA`
  MODIFY `PROF_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ROP`
--
ALTER TABLE `ROP`
  MODIFY `ROP_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `TEL_TELEFONE`
--
ALTER TABLE `TEL_TELEFONE`
  MODIFY `TEL_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `TIPO_DOCUMENTO`
--
ALTER TABLE `TIPO_DOCUMENTO`
  MODIFY `TIPO_DOC_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `TIPO_ENVOLVIMENTO`
--
ALTER TABLE `TIPO_ENVOLVIMENTO`
  MODIFY `TIPO_ENV_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `TOK_TOKEN`
--
ALTER TABLE `TOK_TOKEN`
  MODIFY `TOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `UNIDADE_AGENTE`
--
ALTER TABLE `UNIDADE_AGENTE`
  MODIFY `UNI_AGENTE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `UNI_UNIDADE_OPERACIONAL`
--
ALTER TABLE `UNI_UNIDADE_OPERACIONAL`
  MODIFY `UNI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `VEI_VEICULO`
--
ALTER TABLE `VEI_VEICULO`
  MODIFY `VEI_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `AGE_AGENTE`
--
ALTER TABLE `AGE_AGENTE`
  ADD CONSTRAINT `AGE_AGENTE_ibfk_1` FOREIGN KEY (`CAR_ID`) REFERENCES `CAR_CARGO_GRADUACAO` (`CAR_ID`);

--
-- Restrições para tabelas `DOC_DOCUMENTO`
--
ALTER TABLE `DOC_DOCUMENTO`
  ADD CONSTRAINT `DOC_DOCUMENTO_ibfk_1` FOREIGN KEY (`ENV_ID`) REFERENCES `ENV_ENVOLVIDO` (`ENV_ID`),
  ADD CONSTRAINT `DOC_DOCUMENTO_ibfk_2` FOREIGN KEY (`TIPO_DOC_ID`) REFERENCES `TIPO_DOCUMENTO` (`TIPO_DOC_ID`);

--
-- Restrições para tabelas `ENV_ENVOLVIDO`
--
ALTER TABLE `ENV_ENVOLVIDO`
  ADD CONSTRAINT `ENV_ENVOLVIDO_ibfk_1` FOREIGN KEY (`ALT_ID`) REFERENCES `ALT_ALTURA` (`ALT_ID`),
  ADD CONSTRAINT `ENV_ENVOLVIDO_ibfk_2` FOREIGN KEY (`COR_ID`) REFERENCES `COR_PELE` (`COR_ID`),
  ADD CONSTRAINT `ENV_ENVOLVIDO_ibfk_3` FOREIGN KEY (`END_ID`) REFERENCES `END_ENDERECO` (`END_ID`);

--
-- Restrições para tabelas `PROF_PROFISSAO_EMPRESA`
--
ALTER TABLE `PROF_PROFISSAO_EMPRESA`
  ADD CONSTRAINT `PROF_PROFISSAO_EMPRESA_ibfk_1` FOREIGN KEY (`END_ID`) REFERENCES `END_ENDERECO` (`END_ID`),
  ADD CONSTRAINT `PROF_PROFISSAO_EMPRESA_ibfk_2` FOREIGN KEY (`ENV_ID`) REFERENCES `ENV_ENVOLVIDO` (`ENV_ID`);

--
-- Restrições para tabelas `ROP`
--
ALTER TABLE `ROP`
  ADD CONSTRAINT `ROP_ibfk_1` FOREIGN KEY (`MOD_ID`) REFERENCES `MODUS_OPERANDI` (`MOD_ID`),
  ADD CONSTRAINT `ROP_ibfk_2` FOREIGN KEY (`END_ID`) REFERENCES `END_ENDERECO` (`END_ID`),
  ADD CONSTRAINT `ROP_ibfk_4` FOREIGN KEY (`ROP_UNIDADE_OCORRENCIA`) REFERENCES `UNI_UNIDADE_OPERACIONAL` (`UNI_ID`);

--
-- Restrições para tabelas `TEL_TELEFONE`
--
ALTER TABLE `TEL_TELEFONE`
  ADD CONSTRAINT `TEL_TELEFONE_ibfk_1` FOREIGN KEY (`ENV_ID`) REFERENCES `ENV_ENVOLVIDO` (`ENV_ID`);

--
-- Restrições para tabelas `UNIDADE_AGENTE`
--
ALTER TABLE `UNIDADE_AGENTE`
  ADD CONSTRAINT `UNIDADE_AGENTE_ibfk_1` FOREIGN KEY (`UNI_ID`) REFERENCES `UNI_UNIDADE_OPERACIONAL` (`UNI_ID`),
  ADD CONSTRAINT `UNIDADE_AGENTE_ibfk_2` FOREIGN KEY (`AGE_ID`) REFERENCES `AGE_AGENTE` (`AGE_ID`);

--
-- Restrições para tabelas `UNI_UNIDADE_OPERACIONAL`
--
ALTER TABLE `UNI_UNIDADE_OPERACIONAL`
  ADD CONSTRAINT `UNI_UNIDADE_OPERACIONAL_ibfk_1` FOREIGN KEY (`ORG_ID`) REFERENCES `ORG_ORGAO` (`ORG_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
