/*DML São operações no banco que alteram ou criam dados. Elas são DELETE, INSERT e UPDATE*/
/*o QUE É UMA SESSÃO "É sua conexão com o banco". Todas as alterações que você fizer no banco, vão estar presente apenas na sua sessão até você dar um commit.*/
/*O que é Commit/ Rollback são comandos para efetivar ou retornar uma operação de DML. Até isso ser realizado somente a sua sessão estará vendo a alteração.*/



/*ALTER TABLE Possui o (commit implicito) com isso não é possível alterar*/


/*Constraints , também são chamadas de chaves e são objetos responsáveis pelas relações entre as colunas no banco*/



/*Podem ser do tipo:
 * PK: Primary Key, ou chave primária. O identificador único de uma linha;
 * FK: Foreign Key ou chave estrangeira. É a chave primária de outra tabela.
 * CHK: CHECK kEY É uma chave que restringe o dados de forma específica. Por exemplo: Maior que 100,
 Somente letras A ou B e etc.
 * UK: Unique Key, ou chave única. Funciona semelhante a PK, mas permite valores NULL entre outros.*/
 /*Constraints irão impedir a realização de algumas DMLs*/