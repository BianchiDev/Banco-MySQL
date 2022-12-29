/*Fazer um select com código de todos os itens da conta de internação, nome do paciente e nome
do procedimento. Tabelas: itreg_fat, pro_fat, paciente. */

select  
    itreg_fat.cd_reg_fat
    paciente.cd_paciente
    prestador.nm_paciente
    convenio.nm_convenio
    itreg_fat.vl_unitario
from 
itreg_fat
, reg_fat
, paciente
, prestador
, convenio
, pro_fat
, atendime
where 
    atendime.cd_atendimento = reg_fat.cd_atendimento
and 
    reg_fat.cd_reg_fat = itreg_fat.cd_reg_fat
and 
    paciente.cd_paciente = atendime.cd_paciente
and 
    convenio.cd_convenio = atendime.cd_convenio
and 
    prestador.cd_prestador = atendime.cd_prestador
and 
    pro_fat.cd_pro_fat = itreg_fat.cd_pro_fat
and 
    atendime.dt_atendimento between to_date('01/01/2017', 'dd/mm/yyyy')
and
    to_date('31*03/2017', 'DD/MM/YYYY')


