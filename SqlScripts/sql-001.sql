select * from report43_person where CID='3200700318588';
select * from report43_service where PID=267638;
select * from report43_diagnosis_opd where PID=267638;
select * from report43_procedure_opd where PID=267638;

select * from (
select count(*) as cc,PID,SEQ,PROCEDCODE,PROVIDER,CLINIC,DATE_SERV from report43_procedure_opd 
	group by PID,SEQ,PROCEDCODE,PROVIDER,CLINIC,DATE_SERV
) a where cc>1


select * from report43_procedure_opd where PID=291736 and PROCEDCODE=9338 and CLINIC=12 and PROVIDER=1676 and SEQ=1471

select count(*) as cc,PID,SEQ,CLINIC from report43_drug_opd group by PID,SEQ,CLINIC