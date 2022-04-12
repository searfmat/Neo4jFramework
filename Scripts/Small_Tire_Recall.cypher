//Small Tire Recall
MATCH (:Part{name:'small tire'})-[:IN]->(n:Car)
RETURN n