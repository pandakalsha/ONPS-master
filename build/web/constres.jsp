
<%@page import="org.jfree.chart.plot.PiePlot"%>
<%@page import="java.awt.Color"%>
<%@page import="java.io.File"%>

<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.pro.Candidate"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
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
    <style type="text/css">
        img{
            opacity: 0.75;
            border-radius: 5px;
           
        }
    </style>

</head>
<%
    final DefaultPieDataset data = new DefaultPieDataset();
    Candidate c = null;
    int max = 0, id = 0;
    Session s = HibernateUtil.getSessionFactory().openSession();
    Query query = s.createQuery("from Candidate");
    List l = query.list();
    Iterator i = l.iterator();
    while (i.hasNext()) {
        c = (Candidate) i.next();
        if (c.getConstituency().getCid() == Integer.parseInt(request.getParameter("const"))) {
            data.setValue(c.getName(), c.getVoteN());
        }
    }

    JFreeChart chart = ChartFactory.createPieChart("", data, true, true, false);
    chart.setBackgroundPaint(Color.BLACK);

    PiePlot plot = (PiePlot) chart.getPlot();
    plot.setBackgroundPaint(Color.BLACK);
    plot.setLabelLinkPaint(Color.WHITE);
    

    try {
        final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
        final File file = new File(request.getServletContext().getRealPath("/") + "/img/piechart.png");
        ChartUtilities.saveChartAsPNG(file, chart, 600, 400, info);
    } catch (Exception e) {
        out.println(e);
    }

%>

<body class="templatemo-bg-image-2">
    
    <div class="container" align="center">
        <div class="col-md-12">			
            <h1>Election Results</h1>
            <div class="form-group">
                <div class="col-md-12">
                    <br><br><br><br><br>
                    <img src="img/piechart.png" align="center" height="400" width="600" usemap="#piechart"
                </div>
            </div>
            
            
            <table align="center">
                <tr> 

                    <td><div class="form-group">
                            <div class="col-md-12">
                                </br></br>
                                <input type="button" value="Logout" onClick="window.location = 'logout.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	</td>
            </table>                        
        </div>
    </div>
    </br></br>
    <h4 align="center">${requestScope.msg}</h4>
</body>