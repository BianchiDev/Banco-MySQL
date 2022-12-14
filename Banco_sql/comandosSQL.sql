/*###########################################################################*/
A LIGUAGEM SQL NÃO É PROCEDURAL, LOGO É POSSÍVEL ESPECIFICAR O QUE DEVE SER FEITO, 
E NÃO COMO DEVE SER FEITO.
/*############################################################################*/
/*---------------------LIVROS---------------------------------------*/






 alter table nome_tabela OPERADOR nome_tabela,
 /* Para cada tipo de alteração, existe um operador específico a ser utilizado no comando*/
 
 alter table nome_tabela add column atributo tipo_de_dados;/* --- cria um atributo e e coloca ele no topo da coluna---*/
 
  alter table nome_tabela add constraint atributo tipo_de_dados;/*---- cria CHAVE_PRIMARIA---*/
  foreign key(chave_estrangeira) references tabela_da_chave_primaria(chave_primaria);
  
  
 
 alter table aluno add renda_familiar_alu float after nome_alu;/* AFTER = ANTES DE */
 alter table aluno add renda_familiar_alu float first; /* FIRST = PRIMEIRO*/
 alter table tabela add tipo de dados ('colunas1', 'colunas2', 'colunas3'); /*--- adiciona os elementos das colunas1, colunas2, colunas3 na tabela selecionasa--*/
/* -------------------------------------------------------------------------------------------------------------------------*/
 ---exercicios do III DBA IFRO
 
alter table banco add local_sede_ban varchar(200)not null;/*--- INCLUSÃO DO ATRIBUTO(COLUNA) E SEU TIPO DE DADO --- */
 
 alter table banco add cnpj_ban varchar(30)not null after nome_ban;/*--- INCLUSÃO DO ATRIBUTO(COLUNA) E SEU TIPO DE DADO  APÓS O ATRIBUTO QUE FOI DEFINIDO DEPOIS DE after--- */
 
 alter table Agência add endereco_ag  varchar(200)not null after telefone_ag;/*--- INCLUSÃO DO ATRIBUTO(COLUNA) E SEU TIPO DE DADO  APÓS O ATRIBUTO QUE FOI DEFINIDO DEPOIS DE after--- */
 
 alter table Conta_Corrente add numero_cartao_cc varchar(100)not null after número_cc;
 
 alter table Depósito add hora_dep time not null after data_dep;
 
 alter table agência CHANGE número_ag numero_ag varchar(40)not null ;
 
alter table agência CHANGE telefone_ag  contato_ag varchar(40) not null ; 
 
alter table Cliente CHANGE endereço_cli   endereco_cli  varchar(200)not null; 

alter table Cliente CHANGE renda_cli   renda_cli   double not null; 

alter table saque CHANGE data_saq    data_saq  varchar(100) not null; 

alter table Conta_Corrente CHANGE saldo_cc  saldo_cc   double not null; 

alter table Banco drop local_sede_ban ;/*--- remove o atributo da coluna---*/

alter table Banco drop cnpj_ban_ban;/*--- remove o atributo da coluna---*/

alter table Agência drop endereco_ag ;/*--- remove o atributo da coluna---*/

alter table Conta_Corrente drop numero_cartao_cc;/*--- remove o atributo da coluna---*/

alter table  Depósito drop hora_dep;/*--- remove o atributo da coluna---*/

drop table depósito;

drop table Saque;

drop table Pagamento;

drop table Transferência;

/*--------------------------------------------------------------------------------------------------------------------------*/ 
 alter table nome_tabela drop atributo;/*--- EXCLUI O ATRIBUTO(COLUNA) DA TABELA SELECIONADA----*/
 
 alter table agência drop endereco_ag;/*--- remove o atributo da coluna---*/
 
 
 alter table nome_tabela change nome_coluna  novo_nome_coluna tipo_de_dado;/* altera o nome do atributo de uma tabela*/
 


alter table cliente CHANGE data_nasc_cli data_nascimento_cli DATE;/* exemplo para alterar apens o TIPO do atributo */



alter table cliente CHANGE data_nascimento_cli data_nascimento_cli VARCHAR(20);/* Exemplo para alterar apenas o TIPO do atributo*/



alter table tabela CHANGE data atributo_da_tabela tipo_de_dado;/* Exemplo para alter o NOME e o TIPO de atributo*/



alter tabel tabela modify column atributo_da_tabela tipo_de_dado;/* Exemplo para modificar apenas o TIPO DE DADO ou atributo*/



insert into nome_da_tabela (atributo1, atributo2, atributo3,...);/*------ inserindo atributos dentro de uma tabela  com referência -----------------*/

values(valorAtributo1,valorAtributo2, valorAtributo3, ...);/*---OBS--- As estring devem ter aspas dulpas---*/ 

insert into nome_da_tabela values (valorAtributo1, valorAtributo2, valorAtributo3, ...);/*----------inserindo atributos dentro de uma tabela Sem referência-----------------------------*/

insert into nome_da_tabela_mista values(chave_primaria1,chave_primaria2) values(valor_da_linha1, valor_da_linha2);/*---- insere valor nas tabelas N:N quando criada a terceira tabela---*/
 
 /*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


DESC nome_da_tabela: /* mostra os atributos de uma tabel 
APENAS NO MySQL */

show tables;/*--- mostra o banco estou tarbalhando--*/

select * from nome_da_tabela;/*-- Mostra todo o conteudo da tabela--  */
select * from nome_da_tabela where atributo is null; /*---- descobre onde têm campos nulos--*/ 

select atributo, atributo1, atributo2 from nome_da_tabela; /* mostra os atributos da tabela selecionada*/

select atributo, atributo1, atributo2 from nome_da_tabela where "instringin"; /*-- retorna apenas a instringin desejada--*/

select atributo, atributo1, atributo2 from nome_da_tabela where "instringin" and "todos_osvalores_retornam_";

select atributo, atributo1, atributo2 from nome_da_tabela where "instringin"or"pelo_menos_um_resistro_verdadeiro ";

select * from nome_da_tabela where atributo between intervalo_incial and intervalo_final; /*--operador BETWEEN testa valores do tipo integer e date, apenas --*/

select * from nome_da_tabela where atributo in("instringin1","instringin2","instringin3");/* retorna as tuplasda tabela selecionada  pela instringins selecionadas*/

select * from nome_da_tabela where atributo not in("instringin1","instringin2","instringin3");/* retorna as tuplas da tabelas excluindo as selecionadas*/
/*----------------------------------FUNÇÃO COUNT--------------------------------------------------------------------*/

select count (*) from atributo(coluna);/*-Faz a contagem do o total de resistro na coluna selecionada--*/

select count(distinct atributo(de_dinstinção) from tabela;/*--Faz a contagem do o todo de resistro disntintos da tabela selecionada -*/

/*----------------------------------função MAX, MIN, AVG, SUM-----------------------------------------------*/

select Max(atributo(coluna)) from tabela;/*-- retorna o maior valor de todos os registros--*/

select MIN(atributo(coluna)) from tabela;/*-- retorna o menor valor de todos os registros--*/

select AVG(atributo(coluna)) from tabela;/*-- retorna a média de todos os resistros de uma determinada coluna --*/

select SUM(atributo(coluna)) from tabela;/*-- a soma de todos os valores dos registros da tabela selecionada--*/

select
	Max(atributo(coluna)),
	MIN(atributo(coluna)),
	AVG(atributo(coluna)),
	SUM(atributo(coluna))
from
	tabela;
	
/*------------------------opedrador order by -----------------------------------------------------------------------------------------------------------------------*/

select * from nome_da_tabela order by atributo asc; /* ondena os atributos crescente de acordo com atributo selecionado */

select * from nome_da_tabela order by atributo desc; /* ondena os atributos decrescente de acordo com atributo selecionado */

select * from nome_da_tabela order by atributo1 asc,atributo2 desc; /* ondena os atributos crescente de acordo com atributo1 selecionado e ondena os atributos decrescente de acordo com atributo selecionado2  */




/*------------############update##########-----------*/


update tabela set atributo = novo_resistro where atributo específico(chave_primaria) = "resistro";/*--- permite atualizar resistro ou (conjunto de resistro) das tabelas---*/


/*---------------------- drop table nome_da_tabela; /* exclui todos os resistros de uma tabela*/

 o tipo de dado ENUM  existe apenas no MySQL.
/* exercícios*/

alter table cliente add RG_cli varchar(30) after nome_cli;/*--- adiciona o  atributorg_cli  na tabela cliente apos nome_cli ---*/

alter table cliente add felefone_cli varchar(30) after email_cli;

alter table endereco add referecia_end varchar (100) after bairro_end;

alter table pais drop continete-pai;

alter table cliente CHANGE sexo_cli  genero_cli VARCHAR (200);

alter table cliente CHANGE data_nascimento_cli data_nascimento_cli VARCHAR(20);

drop table cliente;

drop table endereco;

drop table cidade;

drop table estado;

drop table pais;

/*------ ################## DELETE ####################-----*/

delete from tabela; /*--- remove todos os resistros da tabela selecionada----*/

delete from tabela where atributo in (resistro_incial, resitro_final) /*------remove os o intervalo_de_resitro entro o final e o inicial---*/

delete from tabela where atributo = registro_da_tupla; /*--- exclui todo os resistro da tupçla selecionada---*/

/*----##################### Unique Constraint #####################-----*/

alter table nome_da_tabela add constraint uc_exeplo_cpf unique(cpf);/*--- valores diferene e aceita o null---*/

/*----###################################### principais constraint #######################################--- */

PRIMARY KEY/*--- INTEGRIDADE DE CHAVE E INTEGRIDADE DE ENTIDADE(UNIQUE E NOT NULL)---*/
FOREIGN KEY/*-- INTEGRIDADE REFERENCIAL( FAZ REFERÊNCIA PARA UMA PRIMARY KEY DE OUTRA TABELA)---*/
UNIQUE /*---INTEGRIDADE DE UNICIDADE(PERMITE A INCLUSÃO APENAS DE VALÇORES ÚNICOS)---*/
ENUM /*---INTEGRIDADE DE DOMÍNIO( LIMITA AS OPÇÕES DE VALORES PARA COLUNA)--*/
NOT NULL/*--- INTEGRIDADE DE VAZIO(IMPEDE A INCLUSÃO DE VALORES NULOS)--*/





/*---############# FUNÇÕES DE AGREGAÇÃO ##################--*/

COUNT /*-- PROJETA O TOTAL DE REGISTRO DA TABELA--*/
MAX /*-- PROJETA O MAIOR VALOR DE TODOS OS REGISTROS DE UMA TABELA COM BASE EM UMA TABELA CORN BASE EM UMA COLUNA--*/
MIN/*-- PROJETA O MENOR VALOR DE TODOS OS REGISTRO DE UMA TABELA CORN BASE EM UMA COLUNA--*/
AVG/*--PROJETA A MÉDIA DOS VALORES DE TODOS OS REGISTROS DE UMA TABELA COM BASE EM UMA COLUNA--*/
SUM/*--PORJETA A SOMA DOS VALORES DE TODOS OS REGISTROS DE UMA TABELA COM BASE EM UMA COLUNA

CEIL/*-- RETORNA O MENOR VARLOR INTEIRO MAIOR OU IGUAL AO VALOR EM QUESTÃO--*/
FLOOR/*-- RETORNA O MAOIR VALOR INTEIRO MENOR OU IGUAL AO VALOR EM QUESTÃO--*/
TRUNCATE/*--TRUNCA A FRAÇÃO DE VALORES NUMÉRICOS--*/
ROUND/*-- RETORNA O VALOR ARREDONDADO PARA CIMA OU PARA BAIXO DEPENDENDO DA FRAÇÃO DO VALOR --*/
GROUP BY -- É uma cláusula utilizada sempre que precisamos agregar valores (como somatórios, médias, contagens...) e retornar mais de uma coluna 
 /*O group by NÃO ACEITA APELIDO*/

Union All /*-- Utilizado quando precisamos unir selects com resultados, literalmente, "um em cima do outro". Entretanto, as colunas deve ser iguais.--*/

Subselect /* --> Utilizado precisamos de uma busca dentro de uma busca
			 --> Não é necessário referenciar a tabela original
			 --> Pode estar dentro do FROM e do WHERE. */
/*###########################################################################################*/


/*---################################## APELIDOS PARA AS COLUNAS ####################################################---*/

 usando a palavra reservada AS
select
	Max(atributo(coluna)) AS apelido1,
	MIN(atributo(coluna)) AS apelido2,
	AVG(atributo(coluna)) AS apelido3,
	SUM(atributo(coluna)) AS apelido4
from
	tabela;

/*----####################################################################################################################--*/



/*################################# OPERADORES ARITIMÉTICOS########################################################-*/
 
 SOMA - representado pelo sinal "+",
 
select (144 + 257) as total;

 SUBTRAÇÃO - representado pelo sinal "-",
 
 select (144 - 257) as total;
 
 MULTIPLICAÇÃO - representado pelo sinal"*",
 
 select (144 * 257) as total;
 
 DIVISÃO - representado pelo sinal"/"
 
 select (144 / 257) as total;
 /*################################### FUNÇÕES DE DATA #################################################################-*/
 
 curdate ou current_date/* retorno a data atual*/
 
 select curdate();
 select current_date();
 
 
now/* retorna data e hora atuais*/

select new();

 date_format/* - formata a pojeção da data*/
 
 selecte date_format(curdate(),'%d,/%m/%Y' );
 
 extract/*extrai parte de uma determinada data( day, month or year)*/
 
 select extract(day from curdate());
 
 date_add/*- adiciona um intervalo de tempo a data( day, month or year, second, minut, hour, moth, year)*/
 
 select date_add('year-month - day', interval 5 second) as data_formatada;
 
 datediff/* retorna o número de dias entre duas datas*/
 
 period_diff/*- retorana o número de meses entre duas datas*/
 dayofyear /*- retorana o dia do ano(entre 1 e 366) */

/*-#######################coringas #########################*/

select date_format(
curdate(),
'%D/%M/%y') as data_formatada;

 %d /* - dia do mês (de i até 31)*/
 %D /* - dia do mês com sufixo em inglês*/
 %m /* - mês (de 01 a 12) */
 %M /* - nome do mês em inglês */
 %y /* - ano (dois dígitos) */
 %Y /* - ano (quatro dígitos) */ 
 
 
 /*################################## CHAVES PRIMARIAS COMPOSTAS ##############################################################*/
  
  PRIMARY KEY 
  
alter table nome_da_tabela add constraint nome_da_chave_primaria primary key(chave primaria de outra tabela_1, chave primaria de outra tabela_2, data_inscricao_curso);
 
 
 /*############################## TESTANDO A SEGUNDA FORMA NORMAL #######################################################################*/
 
 
 /*################################### curso SQL e PL/SQL Mv sistemas #########################*/
 select nome_da_coluna from nome_da_tabela where nome_da_coluna like '%palavra_de_busca%';

select --> "O que buscamos?"
from -->"Onde buscamos?"
where --> "Como buscamos?"

select --> As colunas são separadas por virgula
from --> Tabelas são separadas por vígula
where --> Ligações e restrições separado por AND ou OR

/*Buscar todos os pacientes com o nome Roberto que nasceram desde 1990 até 31/12/1990 e o código e
 a data do atendimento e o convênio*/

select 
PACIENTE.NM_PACIENTE,
PACIENTE.CD_PACIENTE,
ATENDIME.CD_ATENDIMENTO,
ATENDIME.DT_ATENDIMENTO,
CONVENIO.NM_CONVENIO
 from 
 PACIENTE,
 ATENDIME,
 CONVENIO 
 where PACIENTE.DT_NASCMENTO BETWEEN to_date('01/01/1990','DD/MM/YYYY') /* BETWEEN é usado para definir intervalos de data*/
 					AND to_date('31/12/1990','DD/MM/YY')
/*
where DT_NASCMENTO BETWEEN to_date('01/01/1990','DD/MM/YYYY')
AND to_date('31/12/1990','DD/MM/YY') isso é igual a isso aqui 
where to_char(PACIENTE.DT_NASCMENTO,'yyyy) = '1990' 
*/
 AND PACIENTE.CD_PACIENTE = ATENDIME.CD_PACIENTE /*chave primária = chave estrangeira*/
 AND CONVENIO.CD_CONVENIO = ATENDIME.CD_CONVENIO /*chave primária = chave estrangeira*/
 AND PACIENTE.NM_PACIENTE LIKE '%ROBERTO%'/*LIKE No lugar da iguadade para usar o percente*/
 AND PACIENTE.CD_PACIENTE IN(2,102) /* trás um lista apartir do código que foi usado comom parâmetro*/
 AND PACIENTE.CD_PACIENTE NOT IN(2,102)/* Trás todos menos os que estão no parâmetro*/

/*Clicar na tabela e aperta F11, mostrar todas as colunas da tabela.*/
/* Clicar na tabela e aperta F12, mostrar todas a vizualia a estrutura da tabela*/
/*Ctrl + Shift + seta para cima coloca o testo em caixa autal*/
/*Ctrl + Shift + seta para baixo coloca o testo em caixa baixa*/

/*################### funções ##########################*/

/*
to_char, é uma função de tempo semelhante ao BETWEEN, porém sua sintaxe é menor
to_date,
trunc,
round, RETORNA O VALOR ARREDONDADO PARA CIMA OU PARA BAIXO DEPENDENDO DA FRAÇÃO DO VALOR 
subsstr entre outras...
*/

/*funções de agrupamento (sum) (group by)

select itreg_fat.cd_reg_fat,
Round(sum(itreg_fat.vl_unitario), 2) valot_total
caunt(itreg_fat.cd_reg_fat)nro_de_procedimentos
Round(Avg(itreg_fat.cd_reg_fat.vl_unitario), 2)valor_medio
from itreg_fat
where itreg_fat.cd_reg_fat = 56
group by itreg_fat.cd_reg_fat
*/

select * all_tab_columns /*-- Retorna todas as colunas do banco, com a sua respectiva tabela
e owner*/ TABELA PADRÃO DO  ORACLE

all_table: --Retorna todas as tabelas do banco, com o número de linhas. "Importante para saber quais tabelas tem dados ou estão vazias, não utilizadas pelo usuário;
TABELA PADRÃO DO  ORACLE

users -- Todos usuários de banco;
TABELA PADRÃO DO  ORACLE

Dbasgu.usuários -- todos os usuários do sistema MV;
TABELA PADRÃO DO  ORACLE

all_constraints -- Todas as constraints no banco. A coluna constraint_type mostra o tipo de constraint (P, U, F e etc...). Enquanto a coluna status mostra se está habilitada(ENABLE) ou desabilitada(DESABLE).
TABELA PADRÃO DO  ORACLE

                  ------ Site Importantes--------
 https://sqlformat.org/ -- Identa(organiza)scripts.
 https://www.w3school.com/sql/ -- guia de comandos.