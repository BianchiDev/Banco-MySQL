/*Fazer um Select que traga o código de atendimento, nome do paciente, nome do
convênio e somente dos atendimentos do 02/05/2016. Obs: Dependendo do banco, pode não haver
retornos. Tabelas: atendime, paciente e convenio. */

SELECT
    atemdime.cd_atendime,
    paciente.nm_paciente,
    convenio.nm_convenio
FROM 
    paciente, 
    atendime,
    convenio

WHERE 
    paciente.cd_paciente = atemdime.cd_paciente,
    convenio.cd_convenio = atendime.cd_convenio

and
    atendime.atendime to_date(02/05/2016,'DD/MM/YYYY')