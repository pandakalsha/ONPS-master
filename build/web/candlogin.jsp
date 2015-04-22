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
</head>


<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="col-md-12">			
            <form class="form-horizontal templatemo-contact-form-1" role="form" action="candlog.jsp" method="post">
                <div class="form-group">
                    <div class="col-md-12">
                        <h1 class="margin-bottom-15">Please enter your Login details</h1>
                    </div>
                </div>				
                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Voter ID</label>
                        <div class="templatemo-input-icon-container">
                            <i class="#"></i>
                            <input type="text" class="form-control" id="name" name="userId" required>
                        </div>		            		            		            
                    </div>              
                </div>
                 <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Password</label>
                        <div class="templatemo-input-icon-container">
                            <i class="#"></i>
                            <input type="password" class="form-control" id="name" name="pass" required>
                        </div>		            		            		            
                    </div>              
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <input type="submit" value="Login" class="btn btn-success pull-right">
                    </div>
                </div>	
                ${requestScope.msg}
            </form>		      
        </div>
    </div>
</body>