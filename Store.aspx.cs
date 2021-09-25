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
    public partial class Store : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string str = "Data Source = MMTNGUYENQUANGM\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                 con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Store where store_id = @id";
                cmd.Connection = con;
                con.Open();
                SqlParameter par = cmd.CreateParameter();
                par.ParameterName = "@id";
                par.Value = Request.QueryString["id"].ToString();
                cmd.Parameters.Add(par);
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

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "cart")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;
                string identity = ((TextBox)DataList1.SelectedItem.FindControl("TextBox2")).Text;
                string id = Request.QueryString["id"].ToString();

                string str = "Data Source = MMTNGUYENQUANGM\\SQLEXPRESS; Initial Catalog =  BookStore; User ID = sa;PassWord = 123";
                con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                String strCmd = "insert into Cart values(1," + id + "," + identity + ")";
                cmd.CommandText = strCmd;
                int rs = cmd.ExecuteNonQuery();
                if(rs == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Them vao gio hang thanh cong')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('co loi da xay ra')", true);
                }
                con.Close();
            }
            
        }
    }
}
