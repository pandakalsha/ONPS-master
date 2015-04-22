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


<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="col-md-12">			
            <form class="form-horizontal templatemo-contact-form-1" role="form" action="redirect.jsp" method="post">
                <div class="form-group">
                    <div class="col-md-12">
                        <h1 class="margin-bottom-15">Please enter your Login details</h1>
                    </div>
                </div>				
                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Voter ID (or Admin Name)</label>
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
                        <label for="website" class="control-label">Role</label>
                        <div class="demo">
                            <div id="wrapper">
                                <section class="clearfix">

                                    <select name="role">                                  
                                        <option value="voter">Voter</option>
                                        <option value="candidate">Candidate</option>
                                        <option value="admin">Admin</option>

                                    </select>

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