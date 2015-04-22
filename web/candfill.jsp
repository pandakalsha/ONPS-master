<%@page import="com.pro.Candidate"%>
<%@page import="com.pro.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.pro.Constituency"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.State"%>
<!DOCTYPE html>
<head>

    <title>ONPS</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
    <style>
        .demo select {
            border: 0 !important;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: #999999 url(img/demo/select-arrow.png) no-repeat 90% center;
            width: 175px;
            text-indent: 0.01px;
            text-overflow: "";
            color: #FFF;
            border-radius: 15px;
            padding: 5px;
            box-shadow: inset 0 0 5px rgba(000,000,000, 0.5);
        }
        .demo select.balck {
            background-color: #000;
        }
        .demo select.option3 {
            border-radius: 10px 0;
        }
    </style>
</head>
<%
    Session s = HibernateUtil.getSessionFactory().openSession();
    Candidate c = (Candidate) s.get(Candidate.class, (Integer) session.getAttribute("candidate"));
    if (c.getFtime() != 0) {

        if (c.getNew_().equals("Y")) {
            request.setAttribute("msg", "Wait for validation of your candidature !");
        }
             
     

    } //else {
       // request.getRequestDispatcher("candfilllog.jsp").forward(request, response);
    //}
    c.setFtime(c.getFtime() + 1);
   s.save(c);
   s.beginTransaction().commit();
   

%>   

<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="col-md-12">			
            <form class="form-horizontal templatemo-contact-form-1" role="form" action="candfilllog.jsp" method="post">
                <div class="form-group">
                    <div class="col-md-12">
                        <h1 class="margin-bottom-15">Please enter your details !</h1>

                    </div>
                </div>				
                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Assets</label>
                        <div class="templatemo-input-icon-container">

                            <textarea col="6" rows="4" class="form-control" id="name" name="asset" placeholder="" required></textarea>
                        </div>		            		            		            
                    </div>              
                </div>

                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Agenda</label>
                        <div class="templatemo-input-icon-container">

                            <textarea col="6" rows="4" class="form-control" id="name" name="agenda" placeholder="" required></textarea>
                        </div>		            		            		            
                    </div>              
                </div>

                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Qualifications</label>
                        <div class="templatemo-input-icon-container">

                            <textarea col="6" rows="4" class="form-control" id="name" name="qual" placeholder="" required></textarea>
                        </div>		            		            		            
                    </div>              
                </div>


                <div class="form-group">
                    <div class="col-md-12">
                        <input type="submit" value="Submit" class="btn btn-success pull-right" required>
                    </div>
                </div>		    	
            </form>		      
        </div>
    </div>
</body>
</html>
