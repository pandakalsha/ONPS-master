


<%@page import="com.pro.Admin"%>
<%@page import="com.pro.User"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>

<%
    int userId = Integer.parseInt(request.getParameter("userId"));
    String pass = request.getParameter("pass");
    Session s = HibernateUtil.getSessionFactory().openSession();
    Admin l = (Admin) s.get(Admin.class, userId);
    if (l != null) {
        if (l.getPass().equals(pass)) {
            session.setAttribute("user", userId);
            response.sendRedirect("adminpanel.jsp");
        } else {
            request.setAttribute("msg", "User Name or Password Invalid !");
            request.getRequestDispatcher("adminlog.jsp").forward(request, response);

        }
    } else {
        request.setAttribute("msg", "Invalid User !");
        request.getRequestDispatcher("adminlog.jsp").forward(request, response);

    }
%>  
