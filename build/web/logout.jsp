<%
    session.invalidate();

    request.getRequestDispatcher("welcome.jsp").forward(request, response);
%>