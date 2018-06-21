using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class adm_corpset : System.Web.UI.Page
{
    SqlConnection sqlcon;
    SqlCommand sqlcom;
     string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
         }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into corpInfo (corpBh,corpName,corpContact,corpTel,corpAddr,corpId) values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "', '" + TextBox4.Text + "','"+TextBox6.Text+"')", conn);
        cmd.ExecuteNonQuery();    
        conn.Close();
        bind();
        Response.Write("<script>alert('添加成功')</script>");
    }


    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {       
            string sqlstr = "delete from corpInfo where corpId='" + GridView2.DataKeys[e.RowIndex].Value.ToString() + "'";           
            sqlcon = new SqlConnection(str);
            sqlcom = new SqlCommand(sqlstr, sqlcon);
            sqlcon.Open();
            sqlcom.ExecuteNonQuery();
            sqlcon.Close();
            bind();
        }
        catch
        {
            //(GridView2.SelectedRow.RowIndex+1)  gridview列选中行数
     
        }
    }

    public void bind()
    {
        string sqlstr = "select corpId as ID,corpBh as 企业编号,corpName as 企业名称,corpAddr as 企业地址,corpContact as 联系人,corpTel as 联系电话 from corpInfo";
        sqlcon = new SqlConnection(str);
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
        DataSet myds = new DataSet();
        sqlcon.Open();
        myda.Fill(myds, "corpInfo");
        GridView2.DataSource = myds.Tables[0];
        GridView2.DataBind();
        sqlcon.Close();
    }
}
