
SET SERVEROUTPUT ON; 

select * from estado;

CREATE OR REPLACE PROCEDURE prc_insert_estado(P_SIGLA ESTADO.COD_ESTADO%TYPE, P_ESTADO ESTADO.NOM_ESTADO%TYPE,P_IDPAIS ESTADO.COD_PAIS%TYPE
) as

BEGIN 

insert into estado values(P_SIGLA,P_ESTADO,P_IDPAIS);

commit;

END;