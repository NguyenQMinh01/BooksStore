using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BookStore
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "Data Source = ADMIN\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                SqlConnection con = new SqlConnection(str);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select top 20 * from Store order by store_id DESC";
                cmd.Connection = con;
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);


                DataList1.DataSource = dt;
                DataList1.DataBind();
           
                
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select top 4 * from Category";
                cmd.Connection = con;
              
                da = new SqlDataAdapter();
                dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);

                DataList2.DataSource = dt;
                DataList2.DataBind();

                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Store,Cart where store.store_id = Cart.store_id";
                cmd.Connection = con;


                con.Close();
                
                
            }
        }
      

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String lnk = "Search.aspx?id=" + TextBox1.Text;
            Response.Redirect(lnk);
        }
    }
}