/*Criar uma pesquisa que informe o nome do paciente, o código do paciente, o nome da cidade da
cidade em que o paciente reside, e o código de atendimento do paciente.
Tabelas: atendime, cidade e paciente.*/

select 
    paciente.nm_paciente,
    paciente.cd_paciente,
    cidade.cid_paciente,
    atendime.cd_atendime,
from 
    atendime.cd_atendime = atendime.cd_paciente,
    cidade.cd_cidade = atendime.cd_atendime
