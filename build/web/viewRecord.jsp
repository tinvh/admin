<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edmin</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
              rel='stylesheet'>
        <style>
            table {
                class:"datatable-1 table table-bordered table-striped	 display";
                width: 100%;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="dashBoard.jsp">Admin </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav pull-right">

                            <li class="nav-user"><a href="#"><b id="UserID"></b>
                                    <img src="images/user.png" class="nav-avatar" />
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">

                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="dashboard.jsp"><i class="menu-icon icon-dashboard"></i>Dashboard
                                    </a></li>
                                <li><a href="accountList.jsp"><i class="menu-icon icon-user"></i>Account </a></li>
                                <li><a href="knowledge.jsp"><i class="menu-icon icon-book"></i>AreaOfKnowledge </a></li>
                                <li><a href="language.jsp"><i class="menu-icon icon-suitcase"></i>Language </a></li>
                                <li><a href="post.jsp"><i class="menu-icon icon-upload-alt"></i>Post </a></li>
                                <li><a href="rate.jsp"><i class="icon-group" style="margin-right: 10px"></i>Rate </a></li>
                                <li><a href="commission.jsp"><i class="icon-money" style="margin-right: 10px"></i>Commission </a></li>
                                <li><a href="payment.jsp"><i class="icon-credit-card" style="margin-right: 10px"></i>Payment </a></li>
                            <li><a href="refund.jsp"><i class="icon-refresh" style="margin-right: 10px"></i>Refund </a></li>
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">

                                <li><a href="index.html"><i class="menu-icon icon-signout"></i>Logout </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>

                    <div class="span9">
                        <div class="content">
                            <div class="module message">
                                <div class="module-head">
                                    <h3>
                                        History record</h3>
                                </div>
                                <div class="module-option clearfix">
                                    <div class="pull-left">
                                        <div class="btn-group">
                                            <h4>ID: </h4>
                                            <h4>Username: </h4>
                                            <h4>Status: </h4>
                                        </div>
                                        <div class="btn-group">
                                            <h4 id="PostID"></h4>
                                            <h4 id="userNameID"></h4>
                                            <h4 id="status"></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="module-foot">
                                </div>
                            </div>
                            <div class="content">
                                <div class="module">
                                    <div class="module-body table">
                                        <div id="table-vr"></div> <!--/.Display table-->
                                    </div>
                                    <!--/.module-->
                                </div>
                                <!--/.content-->
                            </div>
                        </div>
                        <!--/.content-->
                    </div>
                    <!--/.span3-->
                </div>
                <!--/.container-->
            </div>
        </div>
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script>
            $(window).on("load", function () {
                console.log("window loaded");
            });

            $(document).ready(function () {
                $('#UserID').text(localStorage.getItem("USERID"));
                var postID = localStorage.getItem("POSTDETAILID");
                $('#PostID').text(localStorage.getItem("POSTDETAILID"));
                event.preventDefault();
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/post/id/" + postID,
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#userNameID').text(result.username);
                        $('#status').text(result.status);
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
                event.preventDefault();
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/historycall/postid/" + postID,
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        var displayResourcesVR = $("#table-vr");
                        displayResourcesVR.text("Loading...");
                        var output = "<table><tr><th>ID.</th><th></th><th>time</th></tr><tbody>";
                        var i = 0;
                        for (i = result.length; i-- > 0; ) {
                            output +=
                                    "<tr><td>" +
                                    result[i].id +
                                    "</td><td><audio controls> <source src='" + result[i].recordLink + "'type='audio/ogg'>" +
                                    "</audio></td><td>" +
                                    result[i].datetime +
                                    "</td></tr>";

                        }
                        output += "</tbody></table>";
                        displayResourcesVR.html(output);
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
            });
        </script>
    </body>
