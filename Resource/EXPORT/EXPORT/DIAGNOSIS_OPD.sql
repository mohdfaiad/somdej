//select *from aloha_diagnosis_opd where d_update='25571001';
  SELECT aloha_diagnosis_opd.hospcode,   
         aloha_diagnosis_opd.pid,   
         aloha_diagnosis_opd.seq,   
         aloha_diagnosis_opd.date_serv- 5430000 as date_serv,   
         min(aloha_diagnosis_opd.diagtype) as diagtype,   
         trim(aloha_diagnosis_opd.diagcode) as diagcode,   
         max(aloha_diagnosis_opd.clinic) as clinic,   
         max(aloha_diagnosis_opd.provider) as provider,   
         max(aloha_diagnosis_opd.d_update)   - 5430000000000 as d_update
    FROM aloha_diagnosis_opd  where date_serv between 25571101 and 25571110

//and pid='804052'
group by
aloha_diagnosis_opd.hospcode,   
         aloha_diagnosis_opd.pid,   
         aloha_diagnosis_opd.seq,   
         aloha_diagnosis_opd.date_serv,   
         aloha_diagnosis_opd.diagcode//,   
//         aloha_diagnosis_opd.clinic,   
//         aloha_diagnosis_opd.provider
//,            aloha_diagnosis_opd.d_update
order by seq
;
