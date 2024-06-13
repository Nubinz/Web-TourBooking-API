using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBTOURBOOKING1
{
    public partial class ProductConfirmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXacnhan_Click(object sender, EventArgs e)
        {
            int Gia = int.Parse(txtGia.Text);
            int Tonkho = int.Parse(txtTonkho.Text);
            int Tong = Gia + Tonkho;
            lbThanhtien.Text = Tong.ToString();
        }

    }
}