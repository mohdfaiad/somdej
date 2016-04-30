  SELECT distinct aloha_newborn.hospcode,   
         aloha_newborn.pid,   
         aloha_newborn.mpid,   
         aloha_newborn.gravida,   
         aloha_newborn.ga,   
         aloha_newborn.bdate - 5430000 as bdate,   
         aloha_newborn.btime,   
         aloha_newborn.bplace,   
         aloha_newborn.bhosp,   
         aloha_newborn.birthno,   
         aloha_newborn.btype,   
         aloha_newborn.bdoctor,   
         aloha_newborn.bweight,   
         aloha_newborn.asphyxia,   
         aloha_newborn.vitk,   
         aloha_newborn.tsh,   
         aloha_newborn.tshresult,   
         aloha_newborn.d_update - 5430000000000 as d_update
    FROM aloha_newborn where 
export_date between 25571121 and 25571131
//and pid='1343376'
;
