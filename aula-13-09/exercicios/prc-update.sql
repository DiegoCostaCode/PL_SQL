CREATE OR REPLACE PROCEDURE prc_update_estado(P_COD ESTADO.COD_ESTADO%TYPE,P_ESTADO ESTADO.NOM_ESTADO%TYPE) as

BEGIN 

UPDATE estado SET NOM_ESTADO = P_ESTADO WHERE COD_ESTADO = P_COD;

commit;

END;

EXEC prc_update_estado('RJ','Rio De Janeiro')

select * from estado