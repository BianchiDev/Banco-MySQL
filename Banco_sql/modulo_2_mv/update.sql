/*Update Altera dados de uma tabela;
É importante ter atenção ao where, que definá o que vai ser alterado
Se for executado apenas "Update nome_data_tabela set coluna1 = 123" irá atualizar toda coluna1
para o valor 123 irá atualizar toda coluna1 para o valor 123, por exemplo. Ainda assim, é possível dar um rollback para desfazer a transação.*/


/*Criando tabela de backup*/
CREATE TABLE paciente_bxp2
as
SELECT * FROM paciente
where ROUND <= 100 /* IGUAL OU MENOR QUE 100 TUPLAS */

Update
set rm_paciente = 'paciente treinamento'/*Auterou o nome do paciente no Id = 0 para 'paciente treinamento' */
where cd_paciente = 0

