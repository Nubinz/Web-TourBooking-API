using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBTOURBOOKING1
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTao_Click(object sender, EventArgs e)
        {
                Response.Cookies["name"].Value = txtTao.Text;
                Response.Cookies["name"].Expires = DateTime.Now.AddMinutes(1);
                label1.Text = "Cookie Create";
                txtTao.Text = " ";
        }

        protected void btnRetri_Click(object sender, EventArgs e)
        {
            if (Response.Cookies["name"] == null)
            {
                txtRetri.Text = "No cookie found";
            } else
            {
                txtRetri.Text = Request.Cookies["name"].Value;  
            } 
        }
    }
}