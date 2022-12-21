/*Instr retorna a posição de um substring dentro de um string;
No exemplo abaixo eu quero retornar a posição que a letra 'Z' se encontra no nome do paciente*/

select Instr(nm_paciente,'z')--posição da letra
from paciente