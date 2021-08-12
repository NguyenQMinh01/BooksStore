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
    public partial class Cart_Store : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            HienThi();
        }
        private void HienThi()
        {
            if (!IsPostBack)
            {
                string str = "Data Source = ADMIN\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                con = new SqlConnection(str);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Store,Cart where store.store_id = Cart.store_id";
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
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String lnk = "Search.aspx?id=" + TextBox1.Text;
            Response.Redirect(lnk);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "remove")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;
                string id = ((Label)DataList1.SelectedItem.FindControl("Label1")).Text;


                string str = "Data Source = ADMIN\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                String strCmd = "delete from Cart where store_id = "+id;
                cmd.CommandText = strCmd;
                int rs = cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Xoa khoi gio hang thanh cong')", true);


                cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Store,Cart where store.store_id = Cart.store_id";
                cmd.Connection = con;
               

                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);


                DataList1.DataSource = dt;
                DataList1.DataBind();
               
                con.Close();
            }
           
        }
    }
}