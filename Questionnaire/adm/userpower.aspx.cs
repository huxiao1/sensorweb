using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adm_userpower : System.Web.UI.Page
{
    string v;
    string a;
    string b;
    SqlConnection sqlcon;
    SqlCommand sqlcom;
    string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Request.Cookies["idCookie"].Value;  //corpId

        if (!Page.IsPostBack)
        {
            bind();            
        }

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                v += (CheckBoxList1.Items[i].Value + "|").ToString();
            }

        }
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cm = new SqlCommand("insert into userInfo (userName,userPass,tel,realName,qxStr,corpId,stationId) values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "', '" + v + "', '" + a + "', '" + b + "') ", conn);
        cm.CommandType = CommandType.Text;
        cm.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('添加成功')</script>");
        bind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {          
            string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection conn = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter(" select station.stationName,station.corpId from station,corpInfo where corpInfo.corpId = station.corpId and corpInfo.corpName = '" + DropDownList1.SelectedItem + "' ", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList2.DataTextField = "stationName";
            DropDownList2.DataValueField = "corpId";
            DropDownList2.DataSource = ds.Tables[0].DefaultView;
            DropDownList2.DataBind();
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string newszxxm = DropDownList2.SelectedItem.ToString();
        //string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        //SqlConnection conn = new SqlConnection(str);
        //SqlCommand cmd = new SqlCommand("select staion.id from station where station.stationName='" + newszxxm + "' ", conn);
        //cmd.CommandType = CommandType.Text;
        //SqlDataReader sdr;
        //sdr = cmd.ExecuteReader();
        //b=sdr[0].ToString();
      
    }
    public void bind()
    {

        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select userInfo.id as ID,userInfo.userName as 登录名,userInfo.realName as 真实姓名,userInfo.tel as 手机号,corpInfo.corpName as 所属企业,userInfo.qxStr as 权限,station.stationName as 只限项目 from userInfo,corpInfo,station where userInfo.corpId=station.corpId and userInfo.stationId=station.id;select corpName,corpId from corpInfo", conn);
       // and userInfo.corpId = station.corpId
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        DropDownList1.DataTextField = "corpName";
      //  DropDownList1.DataValueField = "corpId";
        DropDownList1.DataSource = ds.Tables[1].DefaultView;
        DropDownList1.DataBind();


    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            string sqlstr = "delete from userInfo where id='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            sqlcon = new SqlConnection(str);
            sqlcom = new SqlCommand(sqlstr, sqlcon);
            sqlcon.Open();
            sqlcom.ExecuteNonQuery();
            sqlcon.Close();
            bind();
        }
        catch
        {

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        bind();
    }
}