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
    public partial class CS07 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value == "")
            {
                CustomValidator1.ErrorMessage = "Không được để trống";
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime dt;
            if (args.Value == "")
            {
                CustomValidator1.ErrorMessage = "Không được để trống";
                args.IsValid = false;
            } else if(DateTime.TryParse(txtNamSinh.Text, out dt))
            {
                if(DateTime.Now.Year - dt.Year <= 16 || DateTime.Now.Year - dt.Year > 50)
                {
                    CustomValidator1.ErrorMessage = "Năm sinh không hợp lệ. Tuổi từ 16 đến 50";
                    args.IsValid = false;
                }
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                CustomValidator1.ErrorMessage = "Không được để trống";
                args.IsValid = false;
            } else
            {
                try
                {
                    new System.Net.Mail.MailAddress(txtEmail.Text);
                    if(txtEmail.Text.ToString().ToLower().Contains("@yahoo.com.vn"))
                    {
                        CustomValidator1.ErrorMessage = "Khong duoc su dung @yahoo.com.vn";
                        args.IsValid = false;
                    } else
                    {
                        using(SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                        {
                            using (SqlCommand cmd = new SqlCommand("SELECT sEmail FROM tblUsers WHERE eEmail = '" + txtEmail.Text + "'", conn))
                            {
                                conn.Open();
                                SqlDataReader sdr = cmd.ExecuteReader();
                                Boolean exists = false;
                                while (sdr.Read())
                                {
                                    if(sdr.GetString(0).Equals(txtEmail.Text))
                                    {
                                        exists = true;
                                        break;
                                    }
                                }
                                if(exists)
                                {
                                    CustomValidator1.ErrorMessage = "Email da ton tai";
                                    args.IsValid = false;
                                }
                            }
                        }
                    }
                }
                catch
                {
                    CustomValidator1.ErrorMessage = "Email khong hop le";
                    args.IsValid = false;
                }
            }
        }
    }
}