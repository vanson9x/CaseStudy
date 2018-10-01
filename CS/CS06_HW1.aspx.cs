using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS06_HW1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (txt1.Text.Equals(""))
                lbl1.Text = "Thieu Ten";
            else
                lbl1.Text = "Xin chao " + txt1.Text;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            if (txt2.Text.Equals(""))
                lbl2.Text = "Thieu Ten";
            else
                lbl2.Text = "Xin chao " + txt2.Text;
        }
    }
}