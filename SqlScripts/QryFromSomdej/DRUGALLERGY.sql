  SELECT aloha_drugallergy.hospcode,   
         aloha_drugallergy.pid,   
         max(aloha_drugallergy.daterecord) - 5430000 as daterecord,   
         aloha_drugallergy.drugallergy,   
         trim(aloha_drugallergy.dname) as dname,   
         aloha_drugallergy.typedx,   
         max(aloha_drugallergy.alevel) as alevel,   
         aloha_drugallergy.symptom,   
         aloha_drugallergy.informant,   
         aloha_drugallergy.informhosp,   
         max(aloha_drugallergy.d_update)  - 5430000000000 as d_update 
    FROM aloha_drugallergy where daterecord between 25571121 and 25571131
//and pid='287640'
and drugallergy>1
group by 
aloha_drugallergy.hospcode,   
         aloha_drugallergy.pid,   
//         aloha_drugallergy.daterecord,   
         aloha_drugallergy.drugallergy,   
         aloha_drugallergy.dname,   
         aloha_drugallergy.typedx,   
//         aloha_drugallergy.alevel,   
         aloha_drugallergy.symptom,   
         aloha_drugallergy.informant,   
         aloha_drugallergy.informhosp
;
