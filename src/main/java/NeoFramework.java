import org.neo4j.driver.AuthTokens;
import org.neo4j.driver.Driver;
import org.neo4j.driver.GraphDatabase;
import org.neo4j.driver.Result;
import org.neo4j.driver.Session;

import java.io.BufferedReader;
import java.io.FileReader;


public class NeoFramework implements AutoCloseable
{
    private final Driver driver;

    public NeoFramework( String uri, String user, String password )
    {
        driver = GraphDatabase.driver( uri, AuthTokens.basic( user, password ) );
    }

    @Override
    public void close() throws Exception
    {
        driver.close();
    }

    public void sendCypher( final String cypher )
    {
        try ( Session session = driver.session() )
        {
            Object db_return = session.writeTransaction(tx ->
            {
                Result result = tx.run( cypher );
                return result;
            } );
            System.out.println( db_return + ": " + cypher);
        }
    }

    public static void main( String... args ) throws Exception
    {
        try ( NeoFramework example = new NeoFramework( "bolt://localhost:7687", "neo4j", "password" ) )
        {
            String file = "src/main/resources/carDEMO.cql";

            try (BufferedReader br = new BufferedReader(new FileReader(file))) {
                String line;
                while ((line = br.readLine()) != null) {
                    if(!line.trim().isEmpty()) {
                        example.sendCypher(line);
                    }
                }
            }

        }
    }
}