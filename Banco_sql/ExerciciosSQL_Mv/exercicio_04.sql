/* Fazer um Select dos pacientes internados durante o mês de agosto de 2016, com idade
maior ou igual a 50 anos. Dica: o resultado terá 20 retornos (linhas). (Exercício resolvido na aula 6).*/

Select
   nm_paciente, -- nome do pasciente
   trunc((SYSDATE - paciente.dt_nacimento)/365) idade -- idade dos pacientes
    
from
    paciente,
    atendime
where 
    paciente.cd_pacinte = atendime.cd_pacinte
AND 
    atendime.tp_atendimento = 'I' -- Internação 'E' emergência
AND
    tochar(atendime.tp_atemdime, 'mm/yyyy') = '08/2016'
AND
    trunc((SYSDATE - paciente.dt_nacimento)/365) idade >= 50
