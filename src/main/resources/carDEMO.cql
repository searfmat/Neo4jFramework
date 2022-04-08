CREATE (n: Company{name:'FORD'})

CREATE (n: Car{name:'F150'})
CREATE (n: Car{name:'Bronco'})
CREATE (n: Car{name:'Explorer'})

create (n: Part{name:'axle'})
create (n: Part{name:'tire'})
create (n: Part{name:'airbag'})
create (n: Part{name:"big tire"})
create (n: Part{name:"small tire"})

create (n: Manufacturer{name:"Firestone"})
create (n: Manufacturer{name:"XYZ Airbags"})

MATCH(c:Company), (v:Car) WHERE c.name='FORD' AND v.name='Explorer' CREATE (v)-[t:TYPE_OF]->(c)

MATCH(c:Company), (v:Car) WHERE c.name='FORD' AND v.name='Bronco' CREATE (v)-[t:TYPE_OF]->(c)

MATCH(c:Company), (v:Car) WHERE c.name='FORD' AND v.name='F150' CREATE (v)-[t:TYPE_OF]->(c)

MATCH(m:Manufacturer), (p:Part) WHERE m.name='Firestone' AND p.name='tire' CREATE (m)-[mak:MAKES]->(p)

MATCH(m:Manufacturer), (p:Part) WHERE m.name='Firestone' AND p.name='big tire' CREATE (m)-[mak:MAKES]->(p)

MATCH(m:Manufacturer), (p:Part) WHERE m.name='Firestone' AND p.name='axle' CREATE (m)-[mak:MAKES]->(p)

MATCH(m:Manufacturer), (p:Part) WHERE m.name='Firestone' AND p.name='small tire' CREATE (m)-[mak:MAKES]->(p)

MATCH(m:Manufacturer), (p:Part) WHERE m.name='XYZ Airbags' AND p.name='airbag' CREATE (m)-[mak:MAKES]->(p)

MATCH(c:Car), (p:Part) WHERE c.name='F150' AND p.name='big tire' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='F150' AND p.name='axle' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='F150' AND p.name='airbag' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='Bronco' AND p.name='tire' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='Bronco' AND p.name='axle' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='Bronco' AND p.name='airbag' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='Explorer' AND p.name='airbag' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='Explorer' AND p.name='small tire' CREATE (p)-[i:IN]->(c)

MATCH(c:Car), (p:Part) WHERE c.name='Explorer' AND p.name='axle' CREATE (p)-[i:IN]->(c)

MATCH (:Part{name:'airbag'})-[:IN]->(n:Car) RETURN n

MATCH (:Part{name:'big tire'})-[:IN]->(n:Car) RETURN n

MATCH (:Part{name:'small tire'})-[:IN]->(n:Car) RETURN n
