--Quatro formas de fazer a mesma coisa

BEGIN

prc_insert_pais2('Espanha');

END;

exec prc_insert_pais2('Russia'); 
execute prc_insert_pais2('Alemanha');
call prc_insert_pais2('Holanda');

--
select * from pais order by 1;