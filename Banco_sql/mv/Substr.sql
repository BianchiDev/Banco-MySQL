/*Substr retorna um trecho de um string específico;
No exemplo abaixo eu quero retornar apenas a primeira letra do nome, logo, minha contagem começa no caracter 0(zero) e progride apenas 1 (um) caracter:*/

select substr(nm_paciente, 0,1)
from paciente 

