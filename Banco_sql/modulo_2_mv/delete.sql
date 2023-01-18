/* Delete excluir dados de uma tabela;
É importante ter atenção ao where, que definirá o que vai ser deletado;
Se for excluido apenas Delete nome_da_tabela excluirá toda a tabela. 
Mesmo assim, a tabela ainda existirá, só estara vazia.
Ainda assim, é possível dar rollback e desfazer a transação.
Deve se executar um commit para efetivar a exlusão ao final, ou um rollback para desfazer a exclusão*/

/*Criando tabela de backup*/
CREATE TABLE paciente_bxp2
as
SELECT * FROM paciente
where ROUND <= 100 /* IGUAL OU MENOR QUE 100 TUPLAS */
