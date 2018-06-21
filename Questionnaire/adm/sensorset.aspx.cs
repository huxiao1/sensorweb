using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adm_sensorset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
         string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter(" select sensor.sensorName,sensor.stationId from sensor,station where sensor.stationId= station.id and station.stationName = '" + DropDownList2.SelectedItem + "' ", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList1.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList1.DataSource = ds.Tables[0].DefaultView;
        DropDownList1.DataBind();
        bind();
    }
   public void  bind()
    {

        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select sensor.sensorBh as 传感器编号,sensor.sensorName as 传感器名称,sensor.sensorModel as 传感器型号,sensor.sensorType as 传感器类型,sensor.xInit as 偏差初始值,sensor.yInit as 应变初始值,sensor.zInit as 高程初始值,sensor.alarmUp as 报警上限, sensor.alarmDown as 报警下限,sensor.baseSensorBh as 基准传感器,sensor.ratio as 测量值缩放,sensor.unit as 单位,sensor.bz as 备注,station.stationName as 所在监测站 from sensor,station where sensor.stationId=station.id and station.stationName='" + DropDownList2.SelectedItem + "';select stationName,id from station", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        DropDownList2.DataTextField = "stationName";
        // DropDownList1.DataValueField = "id";
        DropDownList2.DataSource = ds.Tables[1].DefaultView;
        DropDownList2.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //try
        //{
        //    SqlConnection sqlcon;
        //    SqlCommand sqlcom;
        //    string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        //    string sqlstr = "delete from sensor where corpId='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        //    sqlcon = new SqlConnection(str);
        //    sqlcom = new SqlCommand(sqlstr, sqlcon);
        //    sqlcon.Open();
        //    sqlcom.ExecuteNonQuery();
        //    sqlcon.Close();
        //    bind();
        //}
        //catch
        //{
        //    //(GridView2.SelectedRow.RowIndex+1)  gridview列选中行数

        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}