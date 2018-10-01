using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS09 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using(SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                String query = String.Format("SELECT Username FROM tblUsers WHERE Username = '{0}'", txtUsername.Text);
                using(SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if(sdr.Read())
                    {
                        sdr.Close();
                        SqlCommand cmd1 = new SqlCommand(String.Format("UPDATE tblUsers SET LastLoggedIn = dbo.fnConvertToDateTime({0}) WHERE Username = '{1}'",
                           (Int32)DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1)).TotalSeconds,
                           txtUsername.Text), conn);
                        if (cmd1.ExecuteNonQuery() == 1)
                        {
                            Response.Write("Dang nhap thanh cong");
                            Response.End();
                        }
                    }
                }
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtPassword.Text.Trim().Length < 6) args.IsValid = false;
        }
    }
}