<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>  
<%@ page import="javax.naming.*" %> 
<%    
     try{
        Context ctx = new InitialContext(); 
        DataSource ds = (DataSource)ctx.lookup("tmax");      
        Connection con = ds.getConnection();      
        out.println("Con : " + con); 
        con.close();
     }catch(Exception e){
        e.printStackTrace();
}
%> 