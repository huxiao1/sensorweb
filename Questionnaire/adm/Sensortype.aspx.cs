using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adm_Sensortype : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select sensorType as 传感器类型,cvMethod as 算法,cvBz as 值说明 from sensorType", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, "sensorType");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
}