<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="WEBTOURBOOKING1.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />
    
    <link rel="stylesheet" href="Cookies.css" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="col-auto">
       <div class="row d-flex justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5" id="form1">
                <div class="form-data" v-if="!submitted">
                    <asp:TextBox ID="txtTao" runat="server" class="forms-inputs mb-4"/>
                    <asp:Button ID="btnTao" runat="server" class="forms-inputs mb-4" OnClick="btnTao_Click" Text="Create Cookie" />
                    <asp:Label ID="label1"  runat="server"></asp:Label>
                    <div class="forms-inputs mb-4"> 
                        <div class="form-data" v-if="!submitted">
                        <asp:TextBox ID="txtRetri" runat="server" class="forms-inputs mb-4"></asp:TextBox>
                          <asp:Button ID="btnRetri" runat="server"  class="forms-inputs mb-4" OnClick="btnRetri_Click" Text="Retrieve Cookie"/>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </div>
    <div>
        <script src ="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
        <script>
            var app = new Vue({
                el: '#form1',
                data: function () {
                    return {
                        email: "",
                        emailBlured: false,
                        valid: false,
                        submitted: false,
                        password: "",
                        passwordBlured: false
                    }
                },

                methods: {

                    validate: function () {
                        this.emailBlured = true;
                        this.passwordBlured = true;
                        if (this.validEmail(this.email) && this.validPassword(this.password)) {
                            this.valid = true;
                        }
                    },

                    validEmail: function (email) {

                        var re = /(.+)@(.+){2,}\.(.+){2,}/;
                        if (re.test(email.toLowerCase())) {
                            return true;
                        }

                    },

                    validPassword: function (password) {
                        if (password.length > 7) {
                            return true;
                        }
                    },

                    submit: function () {
                        this.validate();
                        if (this.valid) {
                            this.submitted = true;
                        }
                    }
                }
            });
        </script>
    </form>
</body>
</html>
