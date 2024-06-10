<%@page import="java.sql.*"%>
<%

//    Request input parameters: The transaction id
//    Response output: the transaction date, the transaction amount, product names, product prices, and quantities belonging to the specified transaction id
//    URL format: http://127.0.0.1:8080/sleepyhollow/TransactionDetails.jsp?txnid=certaintxnid
//    Sample URL: http://127.0.0.1:8080/sleepyhollow/TransactionDetails.jsp?txnid=2001

    String txnid =  request.getParameter("txnid");
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"nbogired","ushemooz");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select t.t_date, t.amount, p.prod_name, p.p_price, quantity from Transactions t, Products p, Txns_Prods tp where t.trans_id=tp.trans_id and p.prod_id=tp.prod_id and t.trans_id="+txnid);

    String result = "";

    while(rs.next()){
        result += rs.getObject("t_date")+","+rs.getObject("amount")+","+rs.getObject("prod_name")+","+rs.getObject("p_price")+","+rs.getObject("quantity")+"#";
    }
    conn.close();
    out.print(result);

%>
