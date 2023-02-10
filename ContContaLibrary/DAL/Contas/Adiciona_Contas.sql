﻿CREATE PROCEDURE ADICIONA_CONTAS
	@NOME VARCHAR(50),
	@DESCRICAO VARCHAR(255),
	@DTVENCIMENTO SMALLDATETIME,
	@TIPO TINYINT,
	@STATUS TINYINT,
	@DTPAGAMENTO SMALLDATETIME,
	@VALOR MONEY
AS
BEGIN
	INSERT INTO CONTAS (NOMECONTA, DESCRICAOCONTA, DTVALCONTA, TIPOCONTA, STATUSCONTA, DTPAGCONTA, VALORCONTA)
	VALUES (@NOME, @DESCRICAO, @DTVENCIMENTO, @TIPO, @STATUS, @DTPAGAMENTO, @VALOR)

	SELECT SCOPE_IDENTITY()
END