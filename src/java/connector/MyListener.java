package connector;

import javax.servlet.*;
import java.sql.*;

public abstract class MyListener implements ServletContextListener{
    	
    public void contextInitialized(ServletContextEvent arg0) {
        Connection con=null;
        String user = "system";
        String pass = "pass123";
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",user,pass);
            PreparedStatement ps2= con.prepareStatement("CREATE SEQUENCE JAVATPOINT MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE");
		ps2.executeUpdate();
		PreparedStatement ps=con.prepareStatement("CREATE TABLE  FORUMREG(ID NUMBER,USERNAME VARCHAR2(4000),USERPASS VARCHAR2(4000),EMAIL VARCHAR2(4000),MOBILE NUMBER,ADDRESS VARCHAR2(4000),CONSTRAINT FORUMREG_PK PRIMARY KEY (ID) ENABLE)");
		ps.executeUpdate();
		PreparedStatement ps4=con.prepareStatement("CREATE TABLE  FORUMREP(ID NUMBER,COUNTRY VARCHAR2(4000),STATE VARCHAR2(4000),DISTRICT VARCHAR2(4000),POLICE_STATION VARCHAR2(4000),REPORT VARCHAR2(4000),STATUS VARCHAR2(4000),IMAGE BLOB,EMAIL VARCHAR2(4000),POSTEDON DATE,CONSTRAINT FORUMREP_PK PRIMARY KEY (ID) ENABLE)");
		ps4.executeUpdate();		
		
	
		PreparedStatement  ps5=con.prepareStatement("CREATE TABLE FORUMADVC(RID NUMBER,ID NUMBER,CMT VARCHAR2(4000),EMAIL VARCHAR2(4000),CONSTRAINT FORUMADVC_PK PRIMARY KEY (ID) ENABLE)");
		ps5.executeUpdate();
		
		
		ps5= con.prepareStatement("CREATE TABLE  FORUMTPC (	ID NUMBER, TOPIC VARCHAR2(4000), EMAIL VARCHAR2(4000),CREATEDON DATE NOT NULL ENABLE,CONSTRAINT FORUMTPC_PK PRIMARY KEY (ID) ENABLE )");
		ps5.executeUpdate();
		
		
		ps5= con.prepareStatement("CREATE TABLE  FORUMTADVC(ID NUMBER, TID NUMBER, CMT VARCHAR2(4000), EMAIL VARCHAR2(4000),CONSTRAINT FORUMTADVC_PK PRIMARY KEY (ID) ENABLE)");
		ps5.executeUpdate();
		Statement stmt=con.createStatement();
		stmt.executeUpdate("CREATE OR REPLACE TRIGGER  BI_FORUMREG before insert on FORUMREG for each row begin select JAVATPOINT.nextval into :NEW.ID from dual; end");
		stmt.executeUpdate("CREATE OR REPLACE TRIGGER  BI_FORUMREP before insert on FORUMREP for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		stmt.executeUpdate("CREATE OR REPLACE TRIGGER  BI_FORUMADVC before insert on FORUMADVC for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		stmt.executeUpdate("CREATE OR REPLACE TRIGGER  BI_FORUMTADVC before insert on FORUMTADVC for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		stmt.executeUpdate("CREATE OR REPLACE TRIGGER  BI_FORUMTPC before insert on FORUMTPC for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
			
	
            
        }catch(Exception e){System.out.println("Exception: "+e);}
    }
     public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
     }
}