<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.Candidate"%>
<%
    String asset = request.getParameter("asset");
    String agenda = request.getParameter("agenda");
    String qual = request.getParameter("qual");
    Session s = HibernateUtil.getSessionFactory().openSession();

    Candidate c = (Candidate) s.get(Candidate.class, (Integer) session.getAttribute("candidate"));

    c.setAsset(asset);
    c.setAgenda(agenda);
    c.setQualification(qual);

    s.save(c);
    s.beginTransaction().commit();
    
    request.getRequestDispatcher("logout.jsp").forward(request, response);
     

%>


