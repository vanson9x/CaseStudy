using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS
{
    public partial class CS10 : System.Web.UI.Page
    {
        String connectionString = "";
        String pathSaveImage = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            pathSaveImage = ConfigurationManager.AppSettings["PathSaveImage"];
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM tblNhomhang", conn))
                {
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    drlNhom.DataTextField = "TenNhom";
                    drlNhom.DataValueField = "Pk_NhomID";
                    drlNhom.DataSource = dt;
                    drlNhom.DataBind();
                }
            }

            if (IsPostBack)
            {
                if (!Directory.Exists(HttpContext.Current.Server.MapPath(@"~/App_Data" + pathSaveImage)))
                {
                    Directory.CreateDirectory(HttpContext.Current.Server.MapPath(@"~/App_Data/" + pathSaveImage));
                }
                String path = HttpContext.Current.Server.MapPath(@"~/App_Data/" + pathSaveImage + fileUpload.FileName);
                fileUpload.SaveAs(path);

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    String query = String.Format("INSERT INTO tblHang(TenHang, TenfileAnh, GiaNiemyet, Fk_NhomID) VALUES ('{0}', '{1}', {2}, {3})",
                        txtName.Text, fileUpload.FileName, txtPrice.Text, drlNhom.SelectedIndex);
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }

    protected void btnAdd_Click(object sender, EventArgs e)
        {

        }
    }
}