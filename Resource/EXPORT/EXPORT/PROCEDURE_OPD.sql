  SELECT aloha_procedure_opd.hospcode,   
         aloha_procedure_opd.pid,   
         aloha_procedure_opd.seq,   
         aloha_procedure_opd.date_serv - 5430000 as date_serv,   
         max(aloha_procedure_opd.clinic) as clinic,   
         aloha_procedure_opd.procedcode,   
         aloha_procedure_opd.serviceprice,   
         max(aloha_procedure_opd.provider) as provider,   
         max(aloha_procedure_opd.d_update) - 5430000000000 as d_update 
    FROM aloha_procedure_opd 
 where date_serv between 25571111 and 25571120
//and pid='662819'
group by

aloha_procedure_opd.hospcode,   
         aloha_procedure_opd.pid,   
         aloha_procedure_opd.seq,   
         aloha_procedure_opd.date_serv,    
         aloha_procedure_opd.procedcode,   
         aloha_procedure_opd.serviceprice
//,            aloha_procedure_opd.d_update
;
