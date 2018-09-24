using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS06 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            lblErr.Text = lblMsg.Text = "";
            if (txtTen.Text != "")
                lblMsg.Text = "Xin chao " + txtTen.Text;
            else lblErr.Text = "Thieu ten"; 
        }
    }
}