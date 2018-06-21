using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adm_stationset : System.Web.UI.Page
{
    public string lise;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }

    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        // GridView1.DataBind();
        bind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string newsf = DropDownList2.SelectedItem.Value;
        string newcq = TextBox4.Text;
        string newljcz = TextBox1.Text;
        string newjwd= TextBox2.Text;
        string lx = DropDownList5.SelectedItem.Value;
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
              lise += (CheckBoxList1.Items[i].Value + "|").ToString();
            }
             
        }
        string stl = Request.Cookies["idCookie"].Value;
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into station (province,city,pieceArea,mapCoordin,moniType,moniUrl,stationName,columns,corpId) values('" + newsf + "','" + TextBox5.Text+ "','" + newcq + "','" + newjwd + "', '" + lx + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + lise + "','" + stl + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('监测站信息已成功添加')</script>");

    }
    public void bind()
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter myCommand = new SqlDataAdapter("select corpInfo.corpName from corpInfo;select stationType.stationType from stationType; select corpInfo.corpName as 公司名,station.id as 监测站ID,station.stationName as 监测站名称,station.mapCoordin as 经纬度,station.province as 所在省份,station.city as 所在市州,station.pieceArea as 所在区县 from station,corpInfo ", conn);
        DataSet ds = new DataSet();
        myCommand.Fill(ds);
        DropDownList4.DataTextField = "corpName";
        DropDownList4.DataSource = ds.Tables[0].DefaultView;
        DropDownList4.DataBind();
        DropDownList5.DataTextField = "stationType";
        DropDownList5.DataSource = ds.Tables[1].DefaultView;
        DropDownList5.DataBind();
        GridView1.DataSource = ds.Tables[2];
        GridView1.DataBind();
    }
}