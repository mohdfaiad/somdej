//select opd_visit.s_hn,in_patient.an 
//,opd_diagnosis.c_diag
//from opd_visit 
//left join in_patient on opd_visit.visit_date = in_patient.admission_date and opd_visit.s_hn = in_patient.s_hn
//left join opd_diagnosis on opd_visit.s_hn = opd_diagnosis.s_hn and opd_visit.visit_date = opd_diagnosis.visit_date and opd_visit.vn = opd_diagnosis.vn
//and opd_diagnosis.diag_seq='0'
//where opd_visit.c_clinic='OB' and opd_visit.visit_date between 25571001 and 25571031
////and opd_diagnosis.diag_seq='0'
//order by opd_diagnosis.c_diag desc;

  SELECT aloha_admission.hospcode,   
         aloha_admission.pid,   
         aloha_admission.seq,   
         aloha_admission.an,   
         aloha_admission.datetime_admit - 5430000000000 as datetime_admit,   
         aloha_admission.wardadmit,   
         trim(aloha_admission.instype) as instype,   
         aloha_admission.typein,   
         aloha_admission.referinhosp,   
         aloha_admission.causein,   
         aloha_admission.admitweight,   
         aloha_admission.admitheight,   
         aloha_admission.datetime_disch - 5430000000000 as datetime_disch,   
         aloha_admission.warddisch,   
         trim(aloha_admission.dischstatus) as dischstatus,   
         aloha_admission.dischtype,   
         aloha_admission.referouthosp,   
//         aloha_admission.cause_send_treat,   
         aloha_admission.causeout,   
         aloha_admission.cost,   
         aloha_admission.price,   
         aloha_admission.payprice,   
         aloha_admission.actualpay,   
         aloha_admission.provider,   
         aloha_admission.d_update - 5430000000000 as d_update
    FROM aloha_admission  where export_date between 25571101 and 25571110;
