using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adm_datamanage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("Value", "xxxx-xx-xx");
        TextBox1.Attributes.Add("OnFocus", "if(this.value=='xxxx-xx-xx') {this.value=''}");
        TextBox1.Attributes.Add("OnBlur", "if(this.value==''){this.value='xxxx-xx-xx'}");
        TextBox2.Attributes.Add("Value", "xxxx-xx-xx");
        TextBox2.Attributes.Add("OnFocus", "if(this.value=='xxxx-xx-xx') {this.value=''}");
        TextBox2.Attributes.Add("OnBlur", "if(this.value==''){this.value='xxxx-xx-xx'}");


        if (!Page.IsPostBack)
        {

            bind();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
             string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection conn = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter(" select sensor.sensorName from sensor,station where sensor.stationId= station.id and station.stationName = '" + DropDownList1.SelectedItem + "' ", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList2.DataTextField = "sensorName";
            //  DropDownList2.DataValueField = "stationId";
            DropDownList2.DataSource = ds.Tables[0].DefaultView;
            DropDownList2.DataBind();
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        // SqlDataAdapter sda = new SqlDataAdapter("select   sensor.sensorBh as 传感器编号,sensor.sensorType as 传感器类型,sensor.xInit as 偏差值,sensor.yInit as 应变值,sensor.zInit as 计算值,sensor.unit as 单位,sensor.oInit as 计算值2,sensor.lInit as 计算值3,sensorData.CreateDate as 创建日期 from sensor,sensorData,station where station.stationName='"+DropDownList1.SelectedItem+"'and sensor.sensorName='"+DropDownList2.SelectedItem+"';", conn);
        SqlDataAdapter sda = new SqlDataAdapter("select top 10 sensor.sensorBh as 传感器编号,sensor.sensorName as 传感器名称,sensor.sensorType as传感器类型,sensorData.offsetValue as 偏差值,sensorData.measureValue as 应变值, sensorData.calValue as 计算值,sensor.unit as 单位值,sensorData.calValue2 as 计算值2,sensorData.calValue3 as 计算值3,sensorData.GathDate as 采集时间 from sensor,sensorData where sensor.sensorBh=sensorData.sensorBh and sensorData.GathDate between '" + TextBox1.Text + "'and '" + TextBox2.Text + "';", conn);
        // select sensor.sensorBh as 传感器编号,sensor.sensorName as 传感器名称,sensor.sensorType as传感器类型,sensorData.offsetValue as 偏差值,sensorData.measureValue as 应变值, sensorData.calValue as 计算值,sensor.unit as 单位值,sensorData.calValue2 as 计算值2,sensorData.calValue3 as 计算值3,sensorData.GathDate as 采集时间 from sensor,sensorData where sensor.sensorBh=sensorData.sensorBh and sensorData.GathDate between '"+TextBox1.Text+"'and '"+TextBox2.Text+"' ;
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind(); //未设置日期区间
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        bind();
    }
    public void bind()
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select stationName from station", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList1.DataTextField = "stationName";
        // DropDownList1.DataValueField = "id";
        DropDownList1.DataSource = ds.Tables[0].DefaultView;
        DropDownList1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon;
        SqlCommand sqlcom;
        string sqlstr = "delete from sensor,sensorData where sensor.sensorName='" + DropDownList2.SelectedItem + "'and  sensorData.GathDate between '" + TextBox1.Text + "'and '" + TextBox2.Text + "'";
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        sqlcon = new SqlConnection(str);
        sqlcom = new SqlCommand(sqlstr, sqlcon);
        sqlcon.Open();
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();
        bind();
        Response.Write("<script>alert('删除成功')</script>");
    }
}