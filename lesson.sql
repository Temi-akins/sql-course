/*
Example lesson stub
*/
SELECT		ps.PatientId,
			ps.Hospital,
			PS.WARD,
			DATEADD(week, -2, ps.AdmittedDate) AS ReminderDate,
			ps.AdmittedDate,
			ps.DischargeDate,
			dateadd(month, 3, ps.DischargeDate) AS Appointmentdate,
			DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate) As lengthofstay
FROM		PatientStay AS ps
WHERE		PS.Hospital IN ('KINGSTON', 'PRUH')
			AND PS.WARD LIKE '%SURGERY'
			AND PS.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	PS.AdmittedDate, PS.DischargeDate;

SELECT	DATEADD(month, 3, '2026-10-26') AS TestValue;