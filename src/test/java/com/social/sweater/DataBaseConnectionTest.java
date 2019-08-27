package com.social.sweater;

import java.sql.DriverManager;
import java.sql.SQLException;
import org.junit.Test;

/**
 *
 * @author fedot
 */
public class DataBaseConnectionTest {

    private final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    private final String USERNAME = "sweaterAdmin";
    private final String PASSWORD = "sweaterAdmin";
    private final String PATH = "jdbc:mysql://localhost:3306";
    private final String DATABASE_NAME = "sweater";
    private final String ARGS = "serverTimezone=UTC&useSSL=false";
    private final String CONNECTION_URL = PATH + "/" + DATABASE_NAME + "?" + ARGS;

    @Test
    public void driverLoadTest() throws ClassNotFoundException {
        Class.forName(DRIVER_NAME);
    }

    @Test
    public void dataBaseConnectionTest() throws SQLException {
        DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
    }

}
