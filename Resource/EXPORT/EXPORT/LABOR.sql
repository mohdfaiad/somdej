  SELECT distinct aloha_labor.hospcode,   
         aloha_labor.pid,   
         aloha_labor.gravida,   
         aloha_labor.edc - 5439900 as lmp,   
         aloha_labor.edc - 5430000 as edc,   
         aloha_labor.bdate - 5430000 as bdate,   
         aloha_labor.bresult,   
         aloha_labor.bplace,   
         aloha_labor.bhosp,   
         aloha_labor.btype,   
         aloha_labor.bdoctor,   
         max(aloha_labor.lborn) as lborn,   
         max(aloha_labor.sborn) as sborn,   
         max(aloha_labor.d_update) - 5430000000000 as d_update
//,            aloha_labor.export_date  
    FROM aloha_labor  where export_date between 25571101 and 25571110
//and pid='1341992'
group by
aloha_labor.hospcode,   
         aloha_labor.pid,   
         aloha_labor.gravida,   
         aloha_labor.edc,   
         aloha_labor.edc,   
         aloha_labor.bdate,   
         aloha_labor.bresult,   
         aloha_labor.bplace,   
         aloha_labor.bhosp,   
         aloha_labor.btype,   
         aloha_labor.bdoctor
;
