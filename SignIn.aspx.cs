using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace BookStore
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "")
            {
                Label2.Text = "username can not be empty";
                return;
            }
          
                string str = "Data Source = ADMIN\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                SqlConnection con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();


              
                String strCmd = "select count(*) from Account where account_user= '" + TextBox1.Text + "' and account_password = '" + TextBox2.Text + "'";
                cmd.CommandText = strCmd;
                

                int kt = (int)cmd.ExecuteScalar();
                
                if (kt != 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User account or password incorrect')", true);
                    return;
                }
                Response.Redirect("Content.aspx");
                con.Close();
            
        }
            
    }
}