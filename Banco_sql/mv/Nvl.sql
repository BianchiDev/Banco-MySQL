/*  é utilizado para transformar um resultado nulo em outro não nulo;
No exemplo abaixo, eu quero que todos os cd_prestador que são nulo retornem o numero 99999*/

select
atendime.cd_atendimento
,atendime.dt_atendimento
,Nvl(atendime.cd_prestador, 999999)
from
atendime
where
trunc(dt_atendimento) = to_date('23/08/2021', 'dd/mm/yyyy')