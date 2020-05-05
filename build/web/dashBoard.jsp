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

                    <!--/.span3-->
                    <div class="span9">
                        <div class="content">
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="commission.jsp" class="btn-box big span4"><i class="icon-money"></i><b id="latest-commission"></b>
                                        <p class="text-muted">
                                            Commission</p>
                                    </a><a href="accountList.jsp" class="btn-box big span4"><i class="icon-user"></i><b id="total-accounts"></b>
                                        <p class="text-muted">
                                            Accounts</p>
                                    </a><a href="post.jsp" class="btn-box big span4"><i class="icon-check"></i><b id="total-done-post"></b>
                                        <p class="text-muted">
                                            Complete post</p>
                                    </a>
                                </div>
                            </div>
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="payment.jsp" class="btn-box big span4"><i class="icon-credit-card"></i><b id="total-payment"></b>
                                        <p class="text-muted">
                                            Total payment</p>
                                    </a><a href="payment.jsp" class="btn-box big span4"><i class="icon-credit-card"></i><b id="total-payout"></b>
                                        <p class="text-muted">
                                            Total payout</p>
                                    </a><a href="payment.jsp" class="btn-box big span4"><i class="icon-bolt"></i><b id="total-profit"></b>
                                        <p class="text-muted">
                                            Profit</p>
                                    </a>
                                </div>
                            </div>
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="refund.jsp" class="btn-box big span4"><i class="icon-refresh"></i><b id="total-refund"></b>
                                        <p class="text-muted">
                                            Refund request</p>
                                    </a>
                                </div>
                            </div>
                            <!--/#btn-controls-->
                        </div>
                        <!--/.span9-->
                    </div>
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
                event.preventDefault(); // get total account
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/account",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#total-accounts').text(result.length)
                        $('#UserID').text(localStorage.getItem("USERID"));
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
                event.preventDefault();// get latest comission
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/commission/latest",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#latest-commission').text(result + "%")
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
                event.preventDefault();// get total done post
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/post",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        var totalDonePost = 0;
                        for (i = result.length; i-- > 0; ) {
                            var tmp = result[i].status;
                            if (tmp === "Done") {
                                totalDonePost++;
                            }
                            $("#total-done-post").text(totalDonePost);
                        }

                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
                event.preventDefault();// get total payment
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/payment",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        var i = 0;
                        var totalPayment = 0;
                        var totalPayout = 0;
                        var profit = 0;
                        for (i; i < result.length; i++) {
                            var tmp = result[i].type;
                            if (tmp === "Payment") {
                                totalPayment = parseInt(totalPayment) + parseInt(result[i].amount);
                            }
                            $("#total-payment").text(totalPayment + "$");
                            if (tmp === "Wage") {
                                totalPayout = parseInt(totalPayout) + parseInt(result[i].amount);
                                profit = parseInt(profit) + parseInt(result[i].commission);
                            }
                            $("#total-payout").text(totalPayout + "$");
                            $("#total-profit").text(profit + "$");
                        }
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
                event.preventDefault();// get latest comission
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/commission/latest",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#latest').text(result);
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
            });
            //get total refund request
            var currentTime = new Date().toString();
            var status = "Request Admin";
            $.ajax({
                url: "https://translate-app-api.herokuapp.com/refund/status/" + status + "/" + currentTime,
                type: 'GET',
                dataType: 'json',
                contentType: "application/json",
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json',
                    'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                },
                success: function (result) {
                    $('#total-refund').text(result.length);
                },
                error: function () {
                    alert("Something wrong");
                    window.location.href = '../Web/index.html';
                }
            });

        </script>
    </body>
