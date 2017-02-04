<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/{$base_url}/public/css/bootstrap.rtl.css" />
        <link href="/{$base_url}/public/css/css-datatable.css" rel="stylesheet">
        <script src="/{$base_url}/public/js/jquery.js"></script>
        <script src="/{$base_url}/public/js/jquery-datatable.js"></script>
        <script src="/{$base_url}/public/js/datatable.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">NEWS WEBSITE</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="/{$base_url}/admin/news/news.php">News</a></li>
                        <li >
                            <a href="/{$base_url}/admin/newsctg/newsctg.php">News Category</a>
                        </li>
                        <li>
                            <a href="/{$base_url}/admin/users/users.php">Users</a>
                        </li>
                        <li>
                            <a href="/{$base_url}/logout.php">Log Out</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container">