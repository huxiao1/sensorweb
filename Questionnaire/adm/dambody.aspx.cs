using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adm_dambody : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
             string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection conn = new SqlConnection(str);
            SqlDataAdapter myCommand = new SqlDataAdapter("select stationName from station ", conn);
            DataSet ds = new DataSet();
            myCommand.Fill(ds);
            DropDownList1.DataTextField = "stationName";
            DropDownList1.DataSource = ds.Tables[0].DefaultView;
            DropDownList1.DataBind();
       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
             string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter(" select sensor.sensorName,sensor.stationId from sensor,station where sensor.stationId= station.id and station.stationName = '" + DropDownList1.SelectedItem + "' ", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList3.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList3.DataSource = ds.Tables[0].DefaultView;
        DropDownList3.DataBind();
        DropDownList4.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList4.DataSource = ds.Tables[0].DefaultView;
        DropDownList4.DataBind();
        DropDownList5.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList5.DataSource = ds.Tables[0].DefaultView;
        DropDownList5.DataBind();
        DropDownList6.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList6.DataSource = ds.Tables[0].DefaultView;
        DropDownList6.DataBind();
        DropDownList7.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList7.DataSource = ds.Tables[0].DefaultView;
        DropDownList7.DataBind();
    }
}