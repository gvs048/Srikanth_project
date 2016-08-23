using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

namespace User_Login_CS
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                //SqlConnection con = new SqlConnection(@"Data Source=.\;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True;");
                con.Open();
                SqlCommand cmd = new SqlCommand("select COUNT(*)FROM UserRegistration WHERE username='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'");
                cmd.Connection = con;
                int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
                if (OBJ > 0)
                {
                    Session["name"] = txtUsername.Text;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label1.Text = "Invalid username or password";
                    this.Label1.ForeColor = Color.Red;
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("ForgotPassword.aspx");
        }
    }
}