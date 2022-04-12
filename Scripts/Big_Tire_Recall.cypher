//Big Tire Recall
MATCH (:Part{name:'big tire'})-[:IN]->(n:Car)
RETURN n