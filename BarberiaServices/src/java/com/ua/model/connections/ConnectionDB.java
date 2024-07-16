/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template

package com.ua.model.connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {
    private static ConnectionDB instance=null;
    private static Connection con;
    private static final String URL="jdbc:sqlserver://localhost\\SQLEXPRESS:55555;databaseName=SUPERMERCADO;Encrypt=True;TrustServerCertificate=True";
    private static final String DRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String USER="sa";
    private static final String PASS="123456";
    
    private ConnectionDB(){
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Conectado");
        } catch (Exception e) {
            System.out.println("Error la conectar :"+e.getMessage());
            e.printStackTrace();
        }   
    }
    public synchronized static ConnectionDB getInstance(){
    
        if(instance==null){
         instance = new ConnectionDB();
        }
        return instance;
    }   
    public Connection getConnection(){
      return con;
    }
    public void close(){
        instance=null;
    
    }
    
    
    
}
*/