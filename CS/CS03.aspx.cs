using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Đã có " + Application.Get("userVisited") + " lượt truy cập trang web này.");
            Response.End();
        }
    }
}