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
    public partial class CS12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.QueryString["product"] != null)
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT tenhang, gianiemyet FROM tblHang WHERE Pk_HangID = " + Request.QueryString["product"], conn))
                    {
                        conn.Open();
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            lbName.Text = sdr.GetString(0);
                            lbGia.Text = "$" + Convert.ToString(sdr.GetInt32(1));
                        }
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("PROC_ADD_PHANHOI", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Nguoigui", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@EmailNguoiGui", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@NoiDung", txtNoidung.Text);
                    cmd.Parameters.AddWithValue("@FK_HangID", Convert.ToInt32(Request.QueryString["product"]));

                    conn.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}