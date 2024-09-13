
SET SERVEROUTPUT ON; 

select * from pais order by 1;

create sequence sq_paises start with 2;

insert into pais values(sq_paises.nextval,'Canada');

CREATE OR REPLACE PROCEDURE prc_insert_pais2(P_PAIS PAIS.NOM_PAIS%TYPE
) as

BEGIN 

insert into pais values(sq_paises.nextval,p_pais);

commit;

END;