using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBTOURBOOKING1
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTaikhoan_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Profile.aspx");
        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Product.aspx");
        }

        protected void btnThoat_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}