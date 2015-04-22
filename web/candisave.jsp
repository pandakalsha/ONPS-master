<%@page import="com.pro.Party"%>
<%@page import="com.pro.Constituency"%>
<%@page import="com.pro.Candidate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.pro.User"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.HibernateUtil"%>
<%

    String name = request.getParameter("name");

    int party_ = Integer.parseInt(request.getParameter("party"));
    int const_ = Integer.parseInt(request.getParameter("const"));
    int voteId = Integer.parseInt(request.getParameter("voteId"));
    String pass = request.getParameter("pass");

    Session s = HibernateUtil.getSessionFactory().openSession();

    Candidate c = new Candidate();
    Constituency c1 = (Constituency) s.get(Constituency.class, const_);
    Party p=(Party)s.get(Party.class,party_);
    c.setVoterId(voteId);
    c.setName(name);
    c.setPass(pass);
    c.setActive("N");
    c.setNew_("Y");
    c.setConstituency(c1);
    c.setAgenda("");
    c.setAsset("");
    c.setQualification("");
    c.setParty(p);
    c.setVoteN(0);
    c.setFtime(0);
    
    
    
    s.save(c);

    s.beginTransaction().commit();
    
    request.setAttribute("msg","User Record Added");
    
    request.getRequestDispatcher("candhome.jsp").forward(request, response);
    
    


%>  
