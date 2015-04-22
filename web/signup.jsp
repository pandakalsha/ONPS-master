<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.pro.User"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.HibernateUtil"%>
<%
     SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");
     
    String name=request.getParameter("name");
    Date dob=formatter.parse(request.getParameter("dob"));
    String mobNo=request.getParameter("mob");
    int const_=Integer.parseInt(request.getParameter("const"));
    int userId=Integer.parseInt(request.getParameter("userId"));
    String pass=request.getParameter("pass");
    
    Session s = HibernateUtil.getSessionFactory().openSession();
     
    User u=new User();
    
     u.setUserId(userId);
     u.setCid(const_);
     u.setName(name);
     u.setMobNo(mobNo);
     u.setDob(dob);
     u.setPass(pass);
     u.setNew_("Y");
     u.setActive("Y");
     u.setVoted("N");
     s.save(u);
     
     s.beginTransaction().commit();
     
     request.getRequestDispatcher("welcome.jsp").forward(request, response);
    
        
%>  
