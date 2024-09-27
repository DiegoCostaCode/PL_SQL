alter table aluno add data_hoje Date;

select * from aluno


CREATE OR REPLACE PROCEDURE PRD_UPDATE_ALUNO IS

contador number := 0;

BEGIN

for X in (select * from aluno where ra between 300 and 800) LOOP

    UPDATE aluno SET nome = 'Aluno Atualizado', data_hoje = sysdate where ra = X.ra;
    
    if mod(contador, 200) = 0 then
        commit;
    contador := contador + 1;
    END IF;
    
END LOOP;
COMMIT;
END;

EXEC prd_insert_aluno();