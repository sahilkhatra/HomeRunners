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
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table users in the database.
 *
 */
public class UserDao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/lahmansbaseballdb?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Achala11";

    private static final String SELECT_USER_BY_ID = "select id,name,teamID,average from users where id =?";
    
    
    
    private static final String SELECT_ALL_BATTERS_2019 = "select id, p.playerID as pid, b.playerid as bid, b.yearID, p.namelast as name, b.teamID as teamID, \r\n"
    		+ " round(b.H*1.0/b.AB, 3) AS average\r\n"
    		+ " from Batting b inner join people p where b.playerid = p.playerid and b.YearID = 2019\r\n"
    		+ " order by round(b.H*1.0/b.AB, 3) desc\r\n";
    

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

   
    /*public User selectUser(int id) {
        User user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("name");
                String teamID = rs.getString("teamID");
                String average = rs.getString("average");
                user = new User(name, teamID, average);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }*/

    public List < User > selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
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
                String name = rs.getString("name");
                String teamID = rs.getString("teamID");
                float average = rs.getFloat("average");
                users.add(new User(name, teamID, average));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }
    
    public List < User > selectSearchedBatters(String query) {
    	String SELECT_SEARCHED_BATTERS = "select id, p.playerID as pid, b.playerid as bid, b.yearID, p.namelast as name, b.teamID as teamID, \r\n"
        		+ " round(b.H*1.0/b.AB, 3) AS average\r\n"
        		+ " from Batting b inner join people p where b.playerid = p.playerid and b.YearID = 2019\r\n"
        		+ " and p.nameLast like '%" +query+ "%' order by round(b.H*1.0/b.AB, 3) desc\r\n"
        		+ " limit 0,10";
        // using try-with-resources to avoid closing resources (boiler plate code)
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
                String name = rs.getString("name");
                String teamID = rs.getString("teamID");
                float average = rs.getFloat("average");
                users.add(new User(name, teamID, average));
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

