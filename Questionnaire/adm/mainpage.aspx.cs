using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class adm_mainpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Request.Cookies["myCookie"].Value;
        Label7.Text = HttpUtility.UrlDecode(Request.Cookies["llrCookie"].Value);
        Label4.Text = HttpUtility.UrlDecode(Request.Cookies["lllCookie"].Value);
       // I1.Attributes["src"] = "http://www.baidu.com";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>if(confirm('确认要退出吗？'))location='../net/Login.aspx';else location='../adm/mainpage.aspx'</script>");
    }

}