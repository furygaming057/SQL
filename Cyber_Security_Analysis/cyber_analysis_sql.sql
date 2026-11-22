use cyberanalysis;

SELECT * FROM incident_reports;

SELECT COUNT(*) AS total_incidents
FROM incident_reports;

SELECT COUNT(DISTINCT incident_id)
FROM incident_reports;
#this query is used to identify the unique values and remove the duplicate from selected 

SELECT incident_type, COUNT(*)
FROM incident_reports
GROUP BY incident_type;

SELECT severity, COUNT(*)
FROM incident_reports
GROUP BY severity;


SELECT SUM(financial_loss_usd)
FROM incident_reports;

SELECT status, COUNT(*) AS Total_Incidents
FROM incident_reports
GROUP BY status
ORDER BY Total_Incidents DESC;

SELECT severity, COUNT(*) AS Total_Incidents
FROM incident_reports
GROUP BY severity
ORDER BY Total_Incidents DESC;
#here this shows the severity of each incidents by categorizing into high ,critical, medium and low .from this we can easily found that the severity high is the most of the cases reported


SELECT department, COUNT(*) AS Total_Incidents,
    SUM(affected_users) AS Total_Affected_Users
FROM incident_reports
GROUP BY department
ORDER BY Total_Incidents DESC;
# here this shows the rate of incidents occured department wise and also found how amny users are affected through these departments 


SELECT country, COUNT(*) AS Total_Incidents
FROM incident_reports
GROUP BY country
ORDER BY Total_Incidents DESC;
#here this shows the country wise case rates that are reported in the year and by executing this query i have found that the india has the cases or incidents that occured related to cyber security reported 


SELECT affected_system, COUNT(*) AS Total_Incidents
FROM incident_reports
GROUP BY affected_system
ORDER BY Total_Incidents DESC;
#this shows in which ways these incidents are affected ,as here showing email,database,vpn,etc. are affected .and also here shows email has the higher incident rate than others

SELECT incident_type, 
    COUNT(*) AS Total_Incidents
FROM incident_reports
GROUP BY incident_type
ORDER BY Total_Incidents DESC;
# here showing the results of different types of incidents like phishing, malware ,ransomware ,etc.and also found that the phishing is the main problem as we can see according to sorting by the count of incidents


SELECT root_cause,
    COUNT(*) AS Total_Incidents
FROM incident_reports
GROUP BY root_cause
ORDER BY Total_Incidents DESC;
# here found that the root causes for occured incidents and also found that unknown cases are mostly occured rather than human errors

