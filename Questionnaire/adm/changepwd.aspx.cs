using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class changepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string oldpwd = TextBox1.Text;
        string newpassword = TextBox2.Text;
        string guaranteepwd = TextBox3.Text;
        string a = Request.Cookies["myCookie"].Value;
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        string MyUpdate = "Update userInfo set userPass='"+ newpassword + "'where userName='"+a+"' ";
        SqlCommand cmd = new SqlCommand(MyUpdate, conn);
        //修改数据 
        if (oldpwd== Request.Cookies["aiCookie"].Value)
        {
            if (newpassword == guaranteepwd)
            {
                cmd.ExecuteNonQuery();
                //执行SQL语句
                Response.Write("<script>alert('密码修改成功')</script>");
                conn.Close();
            }
            else
                Response.Write("<script>alert('前后密码不一致')</script>");
        }
        else
        {
            Response.Write("<script>alert('原密码错误')</script>");
        }
    }
}