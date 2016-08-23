using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

namespace TestFirstProject
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendEmail(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string firstname = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT FirstName, Username, [Password] FROM UserRegistration WHERE Email = @Email"))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            firstname = sdr["FirstName"].ToString();
                            username = sdr["Username"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage("srimca2007@gmail.com", txtEmail.Text.Trim());
                mm.Subject = "Password Recovery";
                mm.Body = string.Format("Hi " +firstname +",<br /><br />Your password is " + password + ".<br /><br />Thank You.", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "srimca2007@gmail.com";
                NetworkCred.Password = "krk@ksr@1984";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Password has been sent to your email address.";
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "This email address does not match our records.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
