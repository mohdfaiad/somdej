  SELECT aloha_diagnosis_ipd.hospcode,   
         aloha_diagnosis_ipd.pid,   
         aloha_diagnosis_ipd.an,   
         aloha_diagnosis_ipd.datetime_admit - 5430000000000 as datetime_admit,   
         aloha_diagnosis_ipd.warddiag,   
         aloha_diagnosis_ipd.diagtype,   
         trim(aloha_diagnosis_ipd.diagcode) as diagcode,   
         aloha_diagnosis_ipd.provider,   
         aloha_diagnosis_ipd.d_update - 5430000000000 as d_update
    FROM aloha_diagnosis_ipd where
export_date between 25571101 and 25571110 ;
