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

    public partial class Content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "Data Source = MMTNGUYENQUANGM\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                SqlConnection con = new SqlConnection(str);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT top 20 * FROM Store";
                cmd.Connection = con;
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);


                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
        }

        

        protected void click_event(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "viewdetail")
            {
                Response.Redirect("Store.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}