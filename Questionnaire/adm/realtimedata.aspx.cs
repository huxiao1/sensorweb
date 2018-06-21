using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;

public partial class realtimedata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            bind();
        }
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdatePanel1.Update();
        bind();
    }
    public void bind()
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        //SqlDataAdapter sda = new SqlDataAdapter("select top 10 sensor.sensorBh as 传感器编号,sensor.sensorType as 传感器类型,sensor.xInit as 偏差值,sensor.yInit as 应变值,sensor.zInit as 计算值,sensor.unit as 单位,sensor.oInit as 计算值2,sensor.lInit as 计算值3,sensorData.CreateDate as 创建日期 from sensor,sensorData,station ;", conn);
        SqlDataAdapter sda = new SqlDataAdapter("select * from corpInfo;", conn);
        //SqlDataAdapter sda = new SqlDataAdapter("select top 10 sensor.sensorBh as 传感器编号,sensor.sensorName as 传感器名称,sensor.sensorType as传感器类型,sensorData.offsetValue as 偏差值,sensorData.measureValue as 应变值, sensorData.calValue as 计算值,sensor.unit as 单位值,sensorData.calValue2 as 计算值2,sensorData.calValue3 as 计算值3,sensorData.GathDate as 采集时间 from sensor,sensorData where sensor.sensorBh=sensorData.sensorBh and sensorData.GathDate between '" + TextBox1.Text + "'and '" + TextBox2.Text + "';", conn);
        // select sensor.sensorBh as 传感器编号,sensor.sensorName as 传感器名称,sensor.sensorType as传感器类型,sensorData.offsetValue as 偏差值,sensorData.measureValue as 应变值, sensorData.calValue as 计算值,sensor.unit as 单位值,sensorData.calValue2 as 计算值2,sensorData.calValue3 as 计算值3,sensorData.GathDate as 采集时间 from sensor,sensorData where sensor.sensorBh=sensorData.sensorBh and sensorData.GathDate between '"+TextBox1.Text+"'and '"+TextBox2.Text+"' ;
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind(); //未设置日期区间
    }
}