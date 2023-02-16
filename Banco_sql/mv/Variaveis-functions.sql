/*Variáveis
São responsáveis por armazenarem em memória um 
campo ou linha específica, também para uso posterior
pelo objeto em questão;

Deve ser definido o tipo de dado que receberá(NUMBER, VARCHAR2, DATE, entre outros...);*/

/*Functions
 * Functions (ou funções) tem como objetivo retornar uma informação
  baseada nos parâmetros de entrada. Ela sempre tera uma (e apenas)
  uma saída;
  
  Atraavés dos seus cursores e */

  
  /*Estrutura*/

  CREATE [OR REPLACE ] FUNCTION Function_name
    [ (parameter [,parameter])]

    RETURN return_datatype

    IS | AS
        [declaration_selection]

        BEGIN
            executable_section

       [ EXCEPTION

            exeception_section]
        END [Function_name];
        