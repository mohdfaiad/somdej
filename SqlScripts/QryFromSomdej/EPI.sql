  SELECT aloha_epi.hospcode,   
         aloha_epi.pid,   
         aloha_epi.seq,   
         aloha_epi.date_serv - 5430000 as date_serv,   
         aloha_epi.vaccinetype,   
         aloha_epi.vaccineplace,   
         aloha_epi.provider,   
         aloha_epi.d_update   - 5430000000000 as d_update
    FROM aloha_epi  where date_serv between 25571111 and 25571120  and LENGTH(vaccinetype) >1
order by date_serv,seq
;