  SELECT aloha_labfu.hospcode,   
         aloha_labfu.pid,   
         aloha_labfu.seq,   
         aloha_labfu.date_serv - 5430000 as date_serv,   
         aloha_labfu.labtest,   
         max(trim(aloha_labfu.labresult)) as labresult,   
         max(aloha_labfu.d_update) - 5430000000000 as d_update
    FROM aloha_labfu  where export between 25571101 and 25571110 
and length(aloha_labfu.labresult) > 1
group by 
aloha_labfu.hospcode,   
         aloha_labfu.pid,   
         aloha_labfu.seq,   
         aloha_labfu.date_serv,   
         aloha_labfu.labtest
;
