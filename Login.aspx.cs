using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBTOURBOOKING1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "aspnet" && txtpass.Text == "123")
            {
                Session["username"] = txtusername.Text;
                Response.Redirect("Main.aspx");
            }
            else
            {
                lblMsg.Text = "Tên đăng nhập không hợp lệ.";
            }    
        }
    }
}