//Airbag Recall
MATCH (:Part{name:'airbag'})-[:IN]->(n:Car)
RETURN n