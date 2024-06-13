using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBTOURBOOKING1
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lbUsername.Text = "Xin chào" + Session["username"].ToString();
            }
        }

        protected void btnThoat_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void btnTaikhoan_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Profile.aspx");
        }
        
        protected void btnProduct_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Product.aspxx");
        }

        protected void btnVisit_Click(object sender, EventArgs e)
        {
            Application.Lock();
            int count = 0;

            if (Application["Visit"]  != null)
            {
                count = Convert.ToInt32(Application["Visit"].ToString());
            }

            count = count + 1;
            Application["Visit"] = count;

            Application.UnLock();
            lbCounter.Text ="Số lần truy cập = " + count.ToString();
        }
    }
}