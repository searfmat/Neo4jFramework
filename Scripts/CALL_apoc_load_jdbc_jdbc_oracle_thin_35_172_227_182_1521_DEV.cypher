CALL apoc.load.jdbc('jdbc:oracle:thin:@35.172.227.182:1521/DEV',
'select * from dual',
[],
{credentials:{user:'C##_UD_SEARFMAT', password: 'C##_UD_SEARFMAT'}}) YIELD row RETURN row