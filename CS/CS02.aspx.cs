using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToBoolean(Request.QueryString["close"]))
            {
                Int32 count = Convert.ToInt32(Application.Get("userNow"));
                if(count > 0)
                {
                    Session.Remove(Session.SessionID);
                    Application.Set("userNow", count - 1);
                }
                Response.End();
            } else
            {
                String func = "window.onunload = function(event) {var ajax = new XMLHttpRequest(); ajax.open(\"GET\", \"http://localhost:18242/CS02?close=true\"); ajax.send();};";
                Response.Write("Hiện tại đang có " + Application.Get("userNow") + " online.");
                Response.Write("<script language=javascript>"+ func +"</script>");
                Response.End();
        }
        }
    }
}