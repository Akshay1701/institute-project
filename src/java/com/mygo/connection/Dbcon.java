// Decompiled by DJ v3.12.12.96 Copyright 2011 Atanas Neshkov  Date: 5/3/2013 10:16:19 AM
// Home Page: http://members.fortunecity.com/neshkov/dj.html  http://www.neshkov.com/dj.html - Check often for new version!
// Decompiler options: packimports(3) 
// Source File Name:   Dbcon.java

package com.mygo.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbcon
{

    public Dbcon()
    {
    }

    public static Connection getConnection()
    {
        try
        {
            if(con == null)
            {
                Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "gocareer", "gocareer");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }

    public void close()
    {
        try
        {
            if(con != null)
                con.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    public static Connection con;
}
