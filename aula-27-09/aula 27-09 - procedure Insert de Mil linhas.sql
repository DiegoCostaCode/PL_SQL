--create table aluno (ra NUMBER generated always as identity PRIMARY KEY, nome VARCHAR2(30));

select * from aluno

CREATE OR REPLACE PROCEDURE PRD_INSERT_ALUNO IS

contador NUMBER :=0;

BEGIN

FOR X IN 1..1000 LOOP

insert into aluno(nome) values(X||'Aluno');

IF MOD(X,1000)=0 THEN
COMMIT;
END IF;
CONTADOR := CONTADOR+1;
END LOOP;
COMMIT;
END;

EXEC prd_insert_aluno();