<%@page import="java.sql.*"%>
<%

//    Request input parameters: An employee ssn
//    Response output:  The employee name, the total sales achieved by the employee.
//    URL format: http://127.0.0.1:8080/sleepyhollow/Info.jsp?ssn=certainssn
//    Sample URL: http://127.0.0.1:8080/sleepyhollow/info.jsp?ssn=123-56-8901

    String ssn =  request.getParameter("ssn");
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"nbogired","ushemooz");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select e.name as name, s.total_sales as sales from Employees e, Emp_Sales s where e.ssn=s.ssn and e.ssn='"+ssn+"'");

    String result = "";

    while(rs.next()){
        result += rs.getObject("name")+","+rs.getObject("sales")+"#";
    }
    conn.close();
    out.print(result);

%>
