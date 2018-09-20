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
    public partial class CS04 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login(Request.Form["username"], Request.Form["password"]);
        }

        private void Login(string username, string password)
        {
            using(SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                String query = String.Format("SELECT * FROM tblUsers WHERE sUsername = '{0}'", username);
                using(SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if(reader.Read())
                    {
                        if (reader.GetString(2).ToString().Equals(password))
                        {
                            Session.Add("sessionLogined" ,reader.GetInt32(0));
                            Response.Write("Đăng nhập thành công");
                        } else
                        {
                            Response.Write("Mật khẩu không đúng"); 
                        }
                    } else
                    {
                        Response.Write("Tài khoản không tồn tại");
                    }

                    Response.End();
                }
            }
        }
    }
}