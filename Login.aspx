<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEBTOURBOOKING1.Login" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="Style.css">
    <style>
        /* Thêm các định nghĩa lớp CSS cần thiết vào đây */
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="frame">
                <div class="nav">
                    <ul class="links">
                        <li class="signin-active"><a class="btn">ĐĂNG NHẬP</a></li>
                        <li class="signup-inactive"><a class="btn">ĐĂNG KÍ</a></li>
                    </ul>
                </div>
                <div ng-app ng-init="checked = false">
                    <div class="form-signin">
                        <label for="username">Username</label>
                        <asp:TextBox ID="txtusername" runat="server" CssClass="form-styling" placeholder=""></asp:TextBox>
                        <label for="password">Password</label>
                        <asp:TextBox ID="txtpass" runat="server" CssClass="form-styling" placeholder=""></asp:TextBox>
                        <input type="checkbox" id="checkbox" />
                        <label for="checkbox"><span class="ui"></span>Keep me signed in</label>
                        <div class="btn-animate">
                            <asp:Button ID="btnDangnhap" runat="server" Text="ĐĂNG NHẬP" CssClass="btn-signin" OnClick="btnDangnhap_Click"/>
                        </div>
                        <asp:Label ID="lblMsg" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="form-signup">
                        <label for="fullname">Full name</label>
                        <input class="form-styling" type="text" name="fullname" placeholder="" />
                        <label for="email">Email</label>
                        <input class="form-styling" type="text" name="email" placeholder="" />
                        <label for="password">Password</label>
                        <input class="form-styling" type="text" name="password" placeholder="" />
                        <label for="confirmpassword">Confirm password</label>
                        <input class="form-styling" type="text" name="confirmpassword" placeholder="" />
                        <a onclick="toggleSignUp()" class="btn-signup">Sign Up</a>
                    </div>

                    <div class="success">
                        <svg width="270" height="270" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            viewBox="0 0 60 60" id="check" ng-class="checked ? 'checked' : ''">
                            <path fill="#ffffff"
                                d="M40.61,23.03L26.67,36.97L13.495,23.788c-1.146-1.147-1.359-2.936-0.504-4.314 c3.894-6.28,11.169-10.243,19.283-9.348c9.258,1.021,16.694,8.542,17.622,17.81c1.232,12.295-8.683,22.607-20.849,22.042 c-9.9-0.46-18.128-8.344-18.972-18.218c-0.292-3.416,0.276-6.673,1.51-9.578" />
                        </svg>
                        <div class="successtext">
                            <p>Thanks for signing up! Check your email for confirmation.</p>
                        </div>
                    </div>
                </div>

                <div class="forgot">
                    <a href="#">Forgot your password?</a>
                </div>

                <div>
                    <div class="cover-photo"></div>
                    <div class="profile-photo"></div>
                    <h1 class="welcome">Welcome, Friend</h1>
                    <a class="btn-goback" value="Refresh" onclick="history.go()">Go back</a>
                </div>
            </div>
        </div>

        <a id="refresh" value="Refresh" onclick="history.go()">
            <svg class="refreshicon" version="1.1" id="Capa_1" x="0px" y="0px" width="25px" height="25px" viewBox="0 0 322.447 322.447"
                style="enable-background:new 0 0 322.447 322.447;" xml:space="preserve">
                <path
                    d="M321.832,230.327c-2.133-6.565-9.184-10.154-15.75-8.025l-16.254,5.281C299.785,206.991,305,184.347,305,161.224 c0-84.089-68.41-152.5-152.5-152.5C68.411,8.724,0,77.135,0,161.224s68.411,152.5,152.5,152.5 c6.903,0,12.5-5.597,12.5-12.5 c0-6.902-5.597-12.5-12.5-12.5 c-70.304,0-127.5-57.195-127.5-127.5c0-70.304,57.196-127.5,127.5-127.5 c70.305,0,127.5,57.196,127.5,127.5 c0,19.372-4.371,38.337-12.723,55.568l-5.553-17.096c-2.133-6.564-9.186-10.156-15.75-8.025 c-6.566,2.134-10.16,9.186-8.027,15.751l14.74,45.368c1.715,5.283,6.615,8.642,11.885,8.642c1.279,0,2.582-0.198,3.865-0.614 l45.369-14.738C320.371,243.946,323.965,236.895,321.832,230.327z" />
            </svg>
        </a>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script>
            function toggleSignUp() {
                var signInForm = document.querySelector('.form-signin');
                var signUpForm = document.querySelector('.form-signup');
                signInForm.style.display = 'none';
                signUpForm.style.display = 'block';
            }
        </script>
    </form>
</body>
</html>
