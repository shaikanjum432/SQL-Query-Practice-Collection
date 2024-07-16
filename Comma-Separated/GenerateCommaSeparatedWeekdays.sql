-----SQL Query to Generate Comma-Separated Weekdays for Each Training Session------- 

SELECT DISTINCT 
	Traning,
	Classroom,
	StartTime,
	duration,
	(
		SELECT STUFF(
			(SELECT ',' + wk
			FROM traningSchedules AS a
			WHERE a.Traning = b.Traning
			FOR XML PATH('')
			),1,1,''
		)
	) AS Weekdays
FROM traningSchedules AS b