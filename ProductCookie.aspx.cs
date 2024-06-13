using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBTOURBOOKING1
{
    public partial class ProductCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXacnhan_Click(object sender, EventArgs e)
        {
            if (fulHinhanh.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(fulHinhanh.FileName);
                    string path = Server.MapPath("~/Uploads/") + fileName;
                    fulHinhanh.SaveAs(path);
                    // Thực hiện các xử lý khác sau khi tải lên thành công
                }
                catch (Exception ex)
                {
                    // Xử lý lỗi nếu có
                }
            }
        }
    }
}
