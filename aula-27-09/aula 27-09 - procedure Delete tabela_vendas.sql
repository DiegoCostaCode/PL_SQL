CREATE OR REPLACE PROCEDURE PRD_DELETE_VENDAS IS

CONT_COMMIT NUMBER :=0;

BEGIN

FOR X IN (SELECT * FROM TABELA_VENDAS) LOOP

DELETE FROM TABELA_VENDAS WHERE ORDERNUMBER = X.ORDERNUMBER;

IF MOD(CONT_COMMIT,200)=0 THEN
COMMIT;
END IF;

CONT_COMMIT := CONT_COMMIT + 1;
END LOOP;

COMMIT;
END;

EXEC PRD_DELETE_VENDAS();