using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adm_locationset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
             string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection conn = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select stationName,id from station", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            DropDownList1.DataTextField = "stationName";
            // DropDownList1.DataValueField = "id";
            DropDownList1.DataSource = ds.Tables[0].DefaultView;
            DropDownList1.DataBind();
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter(" select sensor.sensorName,sensor.stationId from sensor,station where sensor.stationId= station.id and station.stationName = '" + DropDownList1.SelectedItem + "' ", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList2.DataTextField = "sensorName";
        //  DropDownList2.DataValueField = "stationId";
        DropDownList2.DataSource = ds.Tables[0].DefaultView;
        DropDownList2.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        //string fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
        //if (fileExt == ".jpg" || fileExt == ".gif")       限制上传文件的格式
            if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/Image/") + FileUpload1.FileName);
            Response.Write("<script>alert('上传成功')</script>");        //文件路径“/”代表主目录“Image/”代表主目录下的image文件夹
        }
        else
        {
            Response.Write("<script>alert('未选择上传文件')</script>");
        }
    }
}