package example;

import org.apache.log4j.PropertyConfigurator;

// Notice, do not import com.mysql.jdbc.*
// or you will have problems!

public class Main {

  public static void main(String[] args) {
    PropertyConfigurator.configure("log4j.xml");
    String serverName = "db";
    String portNumber = "1433";
    String databaseName = "master";
    String username = "sa";
    String password = "z!oBx1ab";

    // Create a variable for the connection string.
    String connectionStr = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";" + "databaseName="
            + databaseName + ";username=" + username + ";password=" + password + ";";

    //example.chain.ILink obj = new example.chain.Driver();

    example.db.print.output.IOutput output = new example.db.print.output.ToFile();
    for ( String tbl : new String[]{"master.dbo.dog", "master.dbo.breedLookup", "master.dbo.colorLookup"
  , "master.dbo.dog_expanded", "master.dbo.breed_count"})
      example.db.DBQuery.query(connectionStr, tbl, output);
  }
}
