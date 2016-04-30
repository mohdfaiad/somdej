  SELECT aloha_fp.hospcode,   
         aloha_fp.pid,   
         aloha_fp.seq,   
         aloha_fp.date_serv - 5430000 as date_serv,   
         aloha_fp.fptype,   
         aloha_fp.fpplace,   
         aloha_fp.provider,   
         aloha_fp.d_update - 5430000000000 as d_update 
    FROM aloha_fp where date_serv between 25571001 and 25571010 ;
