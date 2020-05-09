<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="#" />
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
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            .tab button.active {
                background-color: #ccc;
            }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
            </style>
        </head>
        <body>
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                            <i class="icon-reorder shaded"></i></a><a class="brand" href="dashboard.jsp">Admin </a>
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
                                <div class="span9">
                                    <div class="content">
                                        <div class="module">
                                            <div class="module-head">
                                                <div class="tab">
                                                    <button class="tablinks" onclick="refundList(event, 'Request')">Request</button>
                                                    <button class="tablinks" onclick="refundList(event, 'Done')">Done</button>
                                                </div>

                                                <div id="Request" class="tabcontent">
                                                    <div class="module-body table">
                                                        <div id="table-rq"></div> <!--/.Display table-->
                                                    </div>
                                                </div>
                                                <div id="Done" class="tabcontent">
                                                    <div class="module-body table">
                                                        <div id="table-d"></div> <!--/.Display table-->
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/.module-->
                                        </div>
                                        <!--/.content-->
                                    </div>
                                    <!--/.span9-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.container-->
                </div>
                <!--/.wrapper-->
                <div class="footer">
                    <div class="container">
                        <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
                    </div>
                </div>

                <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
                <script src="https://www.gstatic.com/firebasejs/7.14.3/firebase-app.js"></script>
                <script src="https://www.gstatic.com/firebasejs/7.14.3/firebase-messaging.js"></script>
                <script src="https://www.gstatic.com/firebasejs/7.14.3/firebase-auth.js"></script>
                <script src="https://www.gstatic.com/firebasejs/7.14.3/firebase-database.js"></script>
                <script>
                                                        // Your web app's Firebase configuration
                                                        var firebaseConfig = {
                                                            apiKey: "AIzaSyA6pHPFT1dq8alAvHUV3BaZjraDYqd_RBs",
                                                            authDomain: "capstone-project-translator.firebaseapp.com",
                                                            databaseURL: "https://capstone-project-translator.firebaseio.com",
                                                            projectId: "capstone-project-translator",
                                                            storageBucket: "capstone-project-translator.appspot.com",
                                                            messagingSenderId: "158296757772",
                                                            appId: "1:158296757772:web:066723fdae008aa393c029",
                                                            measurementId: "G-HSHH05CLVK"
                                                        };
                                                        // Initialize Firebase
                                                        firebase.initializeApp(firebaseConfig);
                </script>
                <script>
                    $(window).on("load", function () {
                        console.log("window loaded");
                    });

                    $(document).ready(function () {
                        event.preventDefault();
                        $('#UserID').text(localStorage.getItem("USERID"));
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
                                var displayResourcesRQ = $("#table-rq");
                                displayResourcesRQ.text("Loading...");
                                var output = "<table><tr><th>ID.</th><th>Username</th><th>PostID</th><th>Status</th><th>Create at</th><th>Reason</th><th></th><th></th></tr><tbody>";
                                var i = 0;
                                for (i = result.length; i-- > 0; ) {
                                    output +=
                                            "<tr><td>" +
                                            result[i].id +
                                            "</td><td>" +
                                            result[i].username +
                                            "</td><td>" +
                                            result[i].postId +
                                            "</td><td>" +
                                            result[i].status +
                                            "</td><td>" +
                                            result[i].createAt +
                                            "</td><td>" +
                                            result[i].reason +
                                            "</td><td><button onclick='accept()' class='btn btn-danger'>Accept</button></td><td><button onclick='deny()' class='btn btn-warning'>Deny</button></td></tr>"

                                }
                                output += "</tbody></table>";
                                displayResourcesRQ.html(output);
                            },
                            error: function () {
                                alert("Something wrong");
                                window.location.href = '../Web/index.html';
                            }
                        });
                        event.preventDefault();
                        $.ajax({
                            url: "https://translate-app-api.herokuapp.com/refund/doneRefund",
                            type: 'GET',
                            dataType: 'json',
                            contentType: "application/json",
                            headers: {
                                'Accept': 'application/json',
                                'Content-Type': 'application/json',
                                'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                            },
                            success: function (result) {
                                var displayResourcesD = $("#table-d");
                                displayResourcesD.text("Loading...");
                                var output = "<table><tr><th>ID.</th><th>Username</th><th>PostID</th><th>Status</th><th>Create at</th><th margin>Reason</th></tr><tbody>";
                                var i = 0;
                                for (i = result.length; i-- > 0; ) {
                                    output +=
                                            "<tr><td>" +
                                            result[i].id +
                                            "</td><td>" +
                                            result[i].username +
                                            "</td><td>" +
                                            result[i].postId +
                                            "</td><td>" +
                                            result[i].status +
                                            "</td><td>" +
                                            result[i].createAt +
                                            "</td><td>" +
                                            result[i].reason
                                    "</td></tr>"

                                }
                                output += "</tbody></table>";
                                displayResourcesD.html(output);
                            },
                            error: function () {
                                alert("Something wrong");
                                window.location.href = '../Web/index.html';
                            }
                        });
                    });
                </script>
                <script>
                    function accept() {
                        $('.table tbody').on('click', 'button', function () {
                            var currow = $(this).closest('tr');
                            var id = currow.find('td:eq(0)').text();
                            var username = currow.find('td:eq(1)').html();
                            var postID = currow.find('td:eq(2)').text();
                            var createAt = currow.find('td:eq(4)').text();
                            var reason = currow.find('td:eq(5)').text();
                            var paypalAccount;
                            var amounts;
                            event.preventDefault();
                            $.ajax({
                                url: "https://translate-app-api.herokuapp.com/account/getPaypalAccount/" + username,
                                type: 'GET',
                                dataType: 'json',
                                contentType: "application/json",
                                headers: {
                                    'Accept': 'application/json',
                                    'Content-Type': 'application/json',
                                    'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                },
                                success: function (result) {
                                    paypalAccount = result.paypalAccount;
                                    event.preventDefault();
                                    $.ajax({
                                        url: "https://translate-app-api.herokuapp.com/refund/getAmount/" + postID,
                                        type: 'GET',
                                        dataType: 'json',
                                        contentType: "application/json",
                                        headers: {
                                            'Accept': 'application/json',
                                            'Content-Type': 'application/json',
                                            'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                        },
                                        success: function (result) {
                                            amounts = result;
                                            var d = new Date();
                                            var pathID = (d.getFullYear().toString().padStart(4, '0') + "_" + (d.getMonth() + 1).toString().padStart(2, '0') + "_" + d.getDate().toString().padStart(2, '0') + "T" + d.getHours().toString().padStart(2, '0') + "_" + d.getMinutes().toString().padStart(2, '0') + "_" + d.getSeconds().toString().padStart(2, '0'));
                                            var senderID = (d.getFullYear().toString().padStart(4, '0') + (d.getMonth() + 1).toString().padStart(2, '0') + d.getDate().toString().padStart(2, '0') + "T" + d.getHours().toString().padStart(2, '0') + d.getMinutes().toString().padStart(2, '0') + d.getSeconds().toString().padStart(2, '0'));
                                            var PAYPAL_CLIENT_ID = "AYBMHJGxAtOcUaUMwgA-cFy9wvxkstvKAVaikycjpmRgwpVEp-Aa0yASvNU287GUteC9wmufs-I42ePJ";
                                            var PAYPAL_SECRET = "EOANqRmJKXjKaJs6dd0GXdEk5Ds01IdMI_ToLadh-XdqDS7qCl3kkIdbCX0weurQi6rt4pA7Lzyt9ha1";
                                            event.preventDefault();
                                            $.ajax({
                                                url: "https://api.sandbox.paypal.com/v1/payments/payouts",
                                                type: 'POST',
                                                beforeSend: function (xhr) {
                                                    xhr.setRequestHeader('Authorization', "Basic " + btoa(PAYPAL_CLIENT_ID + ":" + PAYPAL_SECRET));
                                                },
                                                data: JSON.stringify({
                                                    sender_batch_id: {sender_batch_id: pathID, email_subjec: "you have a payout!", email_message: "You have received a payout"},
                                                    items: [{recipient_type: "EMAIL",
                                                            amount: {value: amounts, currency: "USD"}, note: "Thanks", sender_item_id: senderID, receiver: paypalAccount}]
                                                }),
                                                success: function () {
                                                    event.preventDefault();
                                                    $.ajax({
                                                        url: "https://translate-app-api.herokuapp.com/payment",
                                                        type: 'POST',
                                                        dataType: 'json',
                                                        contentType: "application/json",
                                                        headers: {
                                                            'Accept': 'application/json',
                                                            'Content-Type': 'application/json',
                                                            'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                                        },
                                                        data: JSON.stringify({
                                                            amount: amounts, commission: 0, createAt: d, postId: postID, type: "Refund", username: username,
                                                        }),
                                                        success: function () {
                                                            event.preventDefault();
                                                            $.ajax({
                                                                url: "https://translate-app-api.herokuapp.com/refund/" + id,
                                                                type: 'PUT',
                                                                dataType: 'json',
                                                                contentType: "application/json",
                                                                headers: {
                                                                    'Accept': 'application/json',
                                                                    'Content-Type': 'application/json',
                                                                    'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                                                },
                                                                data: JSON.stringify({
                                                                    createAt: createAt, id: id, postID: postID, reason: reason, status: "Accept", username: username,
                                                                }),
                                                                success: function () {
                                                                    sendMessage(username, postID, amounts);
                                                                },
                                                                error: function () {
                                                                    alert("Something wrong...");
                                                                }
                                                            });
                                                        },
                                                        error: function () {
                                                            alert("Something wrong...");
                                                        }
                                                    });
                                                },
                                                error: function () {
                                                    console.log("error");
                                                }
                                            });

                                        },
                                        error: function () {
                                            console.log("error");
                                        }
                                    });
                                },
                                error: function () {
                                    console.log("error");
                                }
                            });
                        })
                    }
                    function deny() {
                        $('.table tbody').on('click', 'button', function () {
                            var currow = $(this).closest('tr');
                            var id = currow.find('td:eq(0)').text();
                            var username = currow.find('td:eq(1)').html();
                            var postID = currow.find('td:eq(2)').text();
                            var createAt = currow.find('td:eq(4)').text();
                            var reason = currow.find('td:eq(5)').text();
                            var amounts;
                            event.preventDefault();
                            $.ajax({
                                url: "https://translate-app-api.herokuapp.com/refund/" + id,
                                type: 'PUT',
                                dataType: 'json',
                                contentType: "application/json",
                                headers: {
                                    'Accept': 'application/json',
                                    'Content-Type': 'application/json',
                                    'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                },
                                data: JSON.stringify({
                                    createAt: createAt, id: id, postID: postID, reason: reason, status: "Deny", username: username,
                                }),
                                success: function () {
                                    event.preventDefault();
                                    $.ajax({
                                        url: "https://translate-app-api.herokuapp.com/refund/getAmount/" + postID,
                                        type: 'GET',
                                        dataType: 'json',
                                        contentType: "application/json",
                                        headers: {
                                            'Accept': 'application/json',
                                            'Content-Type': 'application/json',
                                            'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                        },
                                        success: function (result) {
                                            amounts = result;
                                            sendMessageDeny(username, postID, amounts);
                                        },
                                        error: function () {
                                            console.log("error");
                                        }
                                    });
                                },
                                error: function () {
                                    alert("Something wrong...");
                                }
                            });
                        })
                    }
                    function post_table(b) {
                        var a = "#" + $(b).attr('id').toString();
                        if (localStorage.getItem("POSTDETAILID") === null) {
                            localStorage.setItem("POSTDETAILID", $(a).find("td:eq(0)").text());
                        } else {
                            localStorage.removeItem("POSTDETAILID");
                            localStorage.setItem("POSTDETAILID", $(a).find("td:eq(0)").text());
                        }
                        window.location.href = '../Web/postDetail.jsp';
                    }
                    function refundList(evt, postName) {
                        var i, tabcontent, tablinks;
                        tabcontent = document.getElementsByClassName("tabcontent");
                        for (i = 0; i < tabcontent.length; i++) {
                            tabcontent[i].style.display = "none";
                        }
                        tablinks = document.getElementsByClassName("tablinks");
                        for (i = 0; i < tablinks.length; i++) {
                            tablinks[i].className = tablinks[i].className.replace(" active", "");
                        }
                        document.getElementById(postName).style.display = "block";
                        evt.currentTarget.className += " active";
                    }
                </script>

                <script>
                    function sendMessageAccept(username, postID, amounts) {

                        var database = firebase.database();
                        var key = "";
                        var userToken = "";
                        database.ref('/Users').once('value').then(function (snapshot) {
                            snapshot.forEach(function (childSnapshot) {
                                var USER = childSnapshot.val().username;
                                if (USER === username) {
                                    key = childSnapshot.key;
                                }
                            });
                            database.ref('/Tokens/' + key).once('value').then(function (snapshot) {
                                userToken = snapshot.val().token;
                                $.ajax({
                                    url: "https://fcm.googleapis.com/fcm/send",
                                    type: 'POST',
                                    dataType: 'json',
                                    contentType: "application/json",
                                    headers: {
                                        'Content-Type': 'application/json',
                                        'Authorization': 'key=AAAAJNs41gw:APA91bE8seeoszLL1VVXR2HHKVWkhvR-Zti27QP8twjnC2rZwhfAhViQv8VCCcmI_PXgCrW2Fm0oTHVk4P5iw7sQtvR3QjQwHri3hyPQ-TpE-ZmQiRvnYeiBPOZJrFssUEVqpjoZihI-'
                                    },
                                    data: JSON.stringify({
                                        to: userToken,
                                        data: {
                                            sender: 'Firebase',
                                            icon: 1,
                                            body: 'you get a refund of post ' + postID + ' with ' + amounts + '$',
                                            orderId: -1,
                                            title: 'REFUND',
                                            receiver: key
                                        }
                                    }),
                                    success: function () {
                                        window.location.href = '../Web/refund.jsp';
                                    },
                                    error: function () {
                                        alert("Something wrong...");
                                    }
                                });
                            });
                        });
                    }

                    function sendMessageDeny(username, postID, amounts) {

                        var database = firebase.database();
                        var key = "";
                        var userToken = "";
                        database.ref('/Users').once('value').then(function (snapshot) {
                            snapshot.forEach(function (childSnapshot) {
                                var USER = childSnapshot.val().username;
                                if (USER === username) {
                                    key = childSnapshot.key;
                                }
                            });
                            database.ref('/Tokens/' + key).once('value').then(function (snapshot) {
                                userToken = snapshot.val().token;
                                $.ajax({
                                    url: "https://fcm.googleapis.com/fcm/send",
                                    type: 'POST',
                                    dataType: 'json',
                                    contentType: "application/json",
                                    headers: {
                                        'Content-Type': 'application/json',
                                        'Authorization': 'key=AAAAJNs41gw:APA91bE8seeoszLL1VVXR2HHKVWkhvR-Zti27QP8twjnC2rZwhfAhViQv8VCCcmI_PXgCrW2Fm0oTHVk4P5iw7sQtvR3QjQwHri3hyPQ-TpE-ZmQiRvnYeiBPOZJrFssUEVqpjoZihI-'
                                    },
                                    data: JSON.stringify({
                                        to: userToken,
                                        data: {
                                            sender: 'Firebase',
                                            icon: 1,
                                            body: 'Your refund of post ' + postID + ' with ' + amounts + '$ has been deny',
                                            orderId: -1,
                                            title: 'REFUND',
                                            receiver: key
                                        }
                                    }),
                                    success: function () {
                                        window.location.href = '../Web/refund.jsp';
                                    },
                                    error: function () {
                                        alert("Something wrong...");
                                    }
                                });
                            });
                        });
                    }
                </script>
            </body>