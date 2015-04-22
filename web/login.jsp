


<%@page import="com.pro.User"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>

<%
    int userId = Integer.parseInt(request.getParameter("userId"));
    String pass = request.getParameter("pass");
    Session s = HibernateUtil.getSessionFactory().openSession();
    User l = (User) s.get(User.class, userId);
    if (l != null) {
        if (l.getPass().equals(pass)) {
            if(l.getActive().equals("Y") && l.getNew_().equals("N"))
            {
            session.setAttribute("user", userId);
            response.sendRedirect("decide.jsp");
            }
            else
                request.getRequestDispatcher("inactive.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "User Name or Password Invalid !");
            request.getRequestDispatcher("index.jsp").forward(request, response);

        }
    } else {
        request.setAttribute("msg", "Invalid User !");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
%>  
