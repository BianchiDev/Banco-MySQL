/*Case 
 * Ultizado quando precisamos tranformar um dado em outro ou classifica-los;
 * Ultiliza a lógica IF-THEN-ELSE;
 *EX:*/


/*Total de atendimento do mês de janeiro de 2018, separados por tipo de atendimento. */

select case when atendime.tp_atendimento = 'I' THEN 'Internacao'
            when atendime.tp_atendimento = 'U'THEN'Urgencia'
            when atendime.tp_atendimento = 'A' THEN'Ambulatorial'
            when atendime.tp_atendimento = 'E' THEN 'externo'
                ELSE'Nao cadastrado' end tipo_de_atend_case
                Decode(atendime.tp_atendimento ,'u','Urgencia'
                                                ,'I', 'Internacao'
                                                ,'A', 'Ambulatorio'
                                                ,'E', 'Externo'
                                                , 'Nao cadastrado') tipo_de_atend_decode
                
    count(atendime.cd_atendime) total_atendimento
    from 
    atendime
    where
    to char(atendime.dt_atendimento, 'mm/yyyy') = '01/2018'
    group by  atendime.tp_atendimento

    /* Quando usar só o   = quando precisar trazer dados entre dados. */