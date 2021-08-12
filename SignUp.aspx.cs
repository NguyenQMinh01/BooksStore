using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace BookStore
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       
        protected void Button3_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "")
            {
                Label2.Text = "user name can not be empty";
                return;
            }
            if (TextBox2.Text != TextBox3.Text)
            {
                Label1.Text = "password must match";
                return;
            }
           
                string str = "Data Source = ADMIN\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                SqlConnection con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                String strCmd = "insert into Account values('" + TextBox1.Text + "', '" + TextBox2.Text + "')";
                cmd.CommandText = strCmd;
                int rs = cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Dang ky thanh cong')", true);
                con.Close();
            
        }
    }
}