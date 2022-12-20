/*Retornar as 10 cirurgias mais realizadas em 2017.*/

select 
    prestador.nm_prestador,
    count(cirurgias_aviso.cd_cirurgias) nro_de_cirurgias

from
    atendime,
    pretador,
    aviso_cirurgia,
    cirurgias_aviso
where 
    prestador.cd_prestador = atendime.cd_prestador
AND 
    atendime.cd_atendimento = aviso_cirurgia.cd_atendimento
AND 
    cirugia.aviso.cd_aviso_cirurgia = aviso_cirurgia.cd_aviso_cirurgia
AND
    to char(aviso_cirurgia.dt_aviso_cirurgia,'yyyy') = '2017'
group by prestador.nm_prestador
order by 2 desc