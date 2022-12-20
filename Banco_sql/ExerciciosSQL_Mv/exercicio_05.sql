/*Total de atendimento do mês de janeiro de 2018, separados por tipo de atendimento. */
select
 atendime.tp_atendimento,
 count(atendime.cd_atendime) total_atendimento
from 
atendime
where
to char(atendime.dt_atendimento, 'mm/yyyy') = '01/2018'
group by  atendime.tp_atendimento