  SELECT aloha_procedure_ipd.hospcode,   
         aloha_procedure_ipd.pid,   
         aloha_procedure_ipd.an,   
         aloha_procedure_ipd.datetime_admit - 5430000000000 as datetime_admit,   
         aloha_procedure_ipd.wardstay,   
         aloha_procedure_ipd.procedcode,   
         aloha_procedure_ipd.timestart - 5430000000000 as timestart,   
         aloha_procedure_ipd.timefinish - 5430000000000 as timefinish,   
//         aloha_procedure_ipd.serviceprice,  
case
when aloha_procedure_ipd.serviceprice > 1
then
aloha_procedure_ipd.serviceprice
else
0.00
end as serviceprice, 
         aloha_procedure_ipd.provider,   
         aloha_procedure_ipd.d_update - 5430000000000 as d_update
    FROM aloha_procedure_ipd  where export_date between 25571001 and 25571010;
