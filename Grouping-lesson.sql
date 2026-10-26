SELECT   
ps.Hospital,
ps.ward,
count(*) AS numberofpatients,
sum(ps.Tariff) AS totaltariff
FROM     PatientStay AS ps
GROUP BY ps.Hospital, ps.Ward