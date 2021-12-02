package com.mlb.stats.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mlb.stats.model.User;

/**
 * AbstractDAO.java This DAO class provides CRUD database operations 
 *
 */
public class UserDao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/lahmansbaseballdb?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Achala11";
    
    
    
    /**
     * 
     * default constructor
     * 
     */
    public UserDao() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 
     * @return users
     */
    public List < User > selectTop10Batters() {
    	String SELECT_ALL_BATTERS_2019 = "select id, p.playerID as pid, b.playerid as bid, b.yearID, p.nameLast, p.nameFirst, b.teamID as teamID, \r\n"
        		+ " p.height, p.weight, (year(curdate()) - birthyear) AS age, HR, AB, round(b.H*1.0/b.AB, 3) AS AVG, round((H + BB + HBP) / (AB + BB + HBP + SF), 3) as OBP, round(((H - 2B - 3B - HR) + 2B*2 + 3B*3 + HR*4) / AB, 3) as SLG, round((((H - 2B - 3B - HR) + 2B*2 + 3B*3 + HR*4) / AB) + (H + BB + HBP) / (AB + BB + HBP + SF), 3) as OPS \r\n"
        		+ " from Batting b inner join people p where b.playerid = p.playerid and b.YearID = 2019\r\n"
        		+ " order by round(b.H*1.0/b.AB, 3) desc\r\n"
        		+ " limit 0,10";
    	
        // using try-with-resources to avoid closing resources
        List < User > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BATTERS_2019);) {
            System.out.println(preparedStatement);           
            
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String nameLast = rs.getString("nameLast");
                String nameFirst = rs.getString("nameFirst");
                int height = rs.getInt("height");
                int weight = rs.getInt("weight");
                int age = rs.getInt("age");
                String teamID = rs.getString("teamID");
                int SV = 1;
                int HR = rs.getInt("HR");
                int AB = rs.getInt("AB");
                float AVG = rs.getFloat("AVG");
                float OBP = rs.getFloat("OBP");
                float SLG = rs.getFloat("SLG");
                float OPS = rs.getFloat("OPS");
                int SHO = 1;
                int ER = 1;
                int GS = 1;
                int BB = 1;
                float ERA = 1;

                users.add(new User(nameLast, nameFirst, height, weight, age, teamID, SV, HR, AB, AVG, OBP, SLG, OPS, SHO, ER, GS, BB, ERA));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }
    
    /**
     * 
     * @return users
     */
    public List < User > selectTop10Pitchers() {
    	String SELECT_ALL_PITCHERS_2019 = "select id, p.playerID as pid, b.playerid as bid, b.yearID, p.nameLast, p.nameFirst, b.teamID as teamID, \r\n"
        		+ " p.height, p.weight, (year(curdate()) - birthyear) AS age, SHO, ER, GS, BB, ERA, SV \r\n"
        		+ " from Pitching b inner join people p where b.playerid = p.playerid and b.YearID = 2019\r\n"
        		+ " order by ERA desc\r\n"
        		+ " limit 0,10";
    	
        // using try-with-resources to avoid closing resources
        List < User > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PITCHERS_2019);) {
            System.out.println(preparedStatement);           
            
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String nameLast = rs.getString("nameLast");
                String nameFirst = rs.getString("nameFirst");
                int height = rs.getInt("height");
                int weight = rs.getInt("weight");
                int age = rs.getInt("age");
                String teamID = rs.getString("teamID");
                int SV = rs.getInt("SV");;
                int HR = 1;
                int AB = 1;
                float AVG = 1;
                float OBP = 1;
                float SLG = 1;
                float OPS = 1;
                int SHO = rs.getInt("SHO");
                int ER = rs.getInt("ER");
                int GS = rs.getInt("GS");
                int BB = rs.getInt("BB");
                float ERA = rs.getFloat("ERA");

                users.add(new User(nameLast, nameFirst, height, weight, age, teamID, HR, AB, SV, AVG, OBP, SLG, OPS, SHO, ER, GS, BB, ERA));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }
    
    /**********Select Searched Batters*******************************/
    /**
     * 
     * @param query - query
     * @return query
     */
    public List < User > selectSearchedBatters(String query) {
    	String SELECT_SEARCHED_BATTERS = "select id, p.playerID as pid, b.playerid as bid, b.yearID, p.nameLast, p.nameFirst, b.teamID as teamID, \r\n"
        		+ " p.height, p.weight, (year(curdate()) - birthyear) AS age, HR, AB, round(b.H*1.0/b.AB, 3) AS AVG, round((H + BB + HBP) / (AB + BB + HBP + SF), 3) as OBP, round(((H - 2B - 3B - HR) + 2B*2 + 3B*3 + HR*4) / AB, 3) as SLG, round((((H - 2B - 3B - HR) + 2B*2 + 3B*3 + HR*4) / AB) + (H + BB + HBP) / (AB + BB + HBP + SF), 3) as OPS \r\n"
        		+ " from Batting b inner join people p where b.playerid = p.playerid and b.YearID = 2019\r\n"
        		+ " and (p.nameLast like '%"+query+ "%' or b.teamID like '%"+query+ "%')"
        		+ " order by round(b.H*1.0/b.AB, 3) desc\r\n";
    	
        // using try-with-resources to avoid closing resources
        List < User > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SEARCHED_BATTERS);) {
            System.out.println(preparedStatement);          
            
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String nameLast = rs.getString("nameLast");
                String nameFirst = rs.getString("nameFirst");
                int height = rs.getInt("height");
                int weight = rs.getInt("weight");
                int age = rs.getInt("age");
                String teamID = rs.getString("teamID");
                int SV = 1;
                int HR = rs.getInt("HR");
                int AB = rs.getInt("AB");
                float AVG = rs.getFloat("AVG");
                float OBP = rs.getFloat("OBP");
                float SLG = rs.getFloat("SLG");
                float OPS = rs.getFloat("OPS");
                int SHO = 1;
                int ER = 1;
                int GS = 1;
                int BB = 1;
                float ERA = 1;

                
                users.add(new User(nameLast, nameFirst, height, weight, age, teamID, SV, HR, AB, AVG, OBP, SLG, OPS, SHO, ER, GS, BB, ERA));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }
    
    /**********Select Searched Pitchers*******************************/
    /**
     * 
     * @param query - query
     * @return query
     */
    public List < User > selectSearchedPitchers(String query) {
    	String SELECT_SEARCHED_PITCHERS = "select id, p.playerID as pid, b.playerid as bid, b.yearID, p.nameLast, p.nameFirst, b.teamID as teamID, \r\n"
        		+ " p.height, p.weight, (year(curdate()) - birthyear) AS age, SHO, ER, GS, BB, ERA, SV \r\n"
        		+ " from Pitching b inner join people p where b.playerid = p.playerid and b.YearID = 2019\r\n"
        		+ " and (p.nameLast like '%"+query+ "%' or b.teamID like '%"+query+ "%')"
        		+ " order by ERA desc\r\n";
    	
        // using try-with-resources to avoid closing resources
        List < User > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SEARCHED_PITCHERS);) {
            System.out.println(preparedStatement);          
            
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String nameLast = rs.getString("nameLast");
                String nameFirst = rs.getString("nameFirst");
                int height = rs.getInt("height");
                int weight = rs.getInt("weight");
                int age = rs.getInt("age");
                String teamID = rs.getString("teamID");
                short H = 1;
                int HR = 1;
                int AB = 1;
                float AVG = 1;
                float OBP = 1;
                float SLG = 1;
                float OPS = 1;
                int SHO = rs.getInt("SHO");
                int ER = rs.getInt("ER");
                int GS = rs.getInt("GS");
                int BB = rs.getInt("BB");
                float ERA = rs.getFloat("ERA");
                int SV = rs.getInt("SV");
                
                users.add(new User(nameLast, nameFirst, height, weight, age, teamID, SV, HR, AB, AVG, OBP, SLG, OPS, SHO, ER, GS, BB, ERA));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

