<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Factorial de un número</h1>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	operation.WSFactorial_Service service = new operation.WSFactorial_Service();
	operation.WSFactorial port = service.getWSFactorialPort();
	 // TODO initialize WS operation arguments here
	int number = 4;
	// TODO process result here
	int result = port.factorial(number);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>


</html>
