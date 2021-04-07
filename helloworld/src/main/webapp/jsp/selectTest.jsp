<%@page contentType="text/html;charset=euc_kr"%>
<%@page import="javax.sql.*, javax.naming.*, java.sql.*"%>
<%
                Context ctx = new InitialContext(); 
                DataSource ds = (DataSource)ctx.lookup("tmax");
                Connection con = ds.getConnection();
 
                Statement stmt = con.createStatement(); 
                String query = "SELECT EMPNO, ENAME FROM EMP";
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                       String id = rs.getString("EMPNO");
                       String name = rs.getString("ENAME");
                       
                       out.println(id + " " + name);
                }
        
                 rs.close();
                 stmt.close();
                 con.close();
%>