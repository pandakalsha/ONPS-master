<head>
    <title>ONPS</title>
</head>

<%
    int userId = Integer.parseInt(request.getParameter("userId"));
    String pass = request.getParameter("pass");
   // request.setAttribute("userId",userId);
    request.setAttribute("pass",pass);
    String role = request.getParameter("role");
    if (role.equals("voter")) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else if (role.equals("candidate")) {
        request.getRequestDispatcher("candlog.jsp").forward(request, response);
    } else if (role.equals("admin")) {
        request.getRequestDispatcher("adminlog.jsp").forward(request, response);
    }

%>

