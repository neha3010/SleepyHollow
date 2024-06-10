<%@page import="java.sql.*"%>
<%        
    String salary =  request.getParameter("sal");    
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"ssolkar","vegnaftu");
    Statement stmt = conn.createStatement();
//    ResultSet rs = stmt.executeQuery("select * from employees where salary>"+salary);
    ResultSet rs = stmt.executeQuery("select * from employees");
    String result = "";
    while(rs.next()){
        result += rs.getObject("ssn")+","+rs.getObject("name")+"#";
    }
    conn.close();
    out.print(result);

%>

