CREATE OR REPLACE PROCEDURE prc_remove_estado(P_SIGLA ESTADO.COD_ESTADO%TYPE) as

BEGIN 

delete from estado where P_SIGLA = COD_ESTADO;

commit;

END;

EXEC prc_remove_estado('MG')

select * from estado