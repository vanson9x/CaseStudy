using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS05 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                txtTime.Text = DateTime.Now.ToShortTimeString();
            }
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            lblText.Text = "Xin chao: " + txtTime.Text;
        }
    }
}