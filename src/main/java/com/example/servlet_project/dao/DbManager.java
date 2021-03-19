package com.example.servlet_project.dao;

import com.example.servlet_project.entity.User;

import java.sql.*;

public class DbManager {

    private static   final String URL = "jdbc:sqlite:C:\\Users\\admin\\IdeaProjects\\servlet-project\\identifier.sqlite";

    private static   final String FIND_USER_QUERY = "SELECT * FROM users WHERE iin = ?";

    private static final String DRIVER = "org.sqlite.JDBC";


    public static User getUserByIin(String iin) throws ClassNotFoundException {
        Class.forName(DRIVER);
        User user = null;
        try(

                Connection connection = DriverManager.getConnection(URL);
                PreparedStatement statement = connection.prepareStatement(FIND_USER_QUERY)


                )

        {
            statement.setString(1, iin);
            ResultSet resultSet = statement.executeQuery();



            Long id = resultSet.getLong(1);
            String name = resultSet.getString(2);
            String surname = resultSet.getString(3);
            String country = resultSet.getString(4);
            String city = resultSet.getString(5);
            String iinDb = resultSet.getString(6);



            user = new User(id, name, surname, country, city, iinDb);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return  user;

    }
    private DbManager() {}
}
