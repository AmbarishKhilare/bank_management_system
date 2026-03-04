package bank.management.system;
//JDBC connectivity is important question and topic that can be asked on the project

//This is the connectivity class
//There is no need of Main method we will be using this class to create objects further
//There are 5 steps in JDBC connextivity
/*
    1.  Register the Driver
    2.  Create Connection
    3.  Create Statement
    4.  Execute the query
    5.  Close Connection
 */
//Also adding a new java file in the external files as jar file
import java.sql.*;

public class Conn {

    //Creating a global object of Connection class
    Connection c;
    Statement s;
    public Conn(){
        //We are using try and catch since MySQL is external and there are chances of errors
        //Especially runtime errors
        try{
            //Class.forName(com.mysql.cj.jdbc.Driver);
            //Removing the above line because the jar we included automatically picks it up by class path so no need to register the driver
            c=DriverManager.getConnection("jdbc:mysql:///bankmanagementsystem","root","Ambarish@2004");
            s=c.createStatement();


        }catch (Exception e){
            System.out.println(e);
        }
    }
}
