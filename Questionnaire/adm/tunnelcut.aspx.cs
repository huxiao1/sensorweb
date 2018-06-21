using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adm_tunnelcut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection conn = new SqlConnection(str);
            SqlDataAdapter myCommand = new SqlDataAdapter("select stationName from station ", conn);
            DataSet ds = new DataSet();
            myCommand.Fill(ds);
            DropDownList4.DataTextField = "stationName";
            DropDownList4.DataSource = ds.Tables[0].DefaultView;
            DropDownList4.DataBind();
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
         string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter(" select sensor.sensorName,sensor.stationId from sensor,station where sensor.stationId= station.id and station.stationName = '" + DropDownList4.SelectedItem + "' ", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList1.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList1.DataSource = ds.Tables[0].DefaultView;
        DropDownList1.DataBind();
        DropDownList2.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList2.DataSource = ds.Tables[0].DefaultView;
        DropDownList2.DataBind();
        DropDownList3.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList3.DataSource = ds.Tables[0].DefaultView;
        DropDownList3.DataBind();

    }
}