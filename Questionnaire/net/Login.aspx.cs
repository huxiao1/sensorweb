using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Web.Configuration;

public partial class net_Login : System.Web.UI.Page
{
    static public string userid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {      
        if (txtNum.Text == "")
        {
            Response.Write("<script>alert('请输入用户名');location='Login.aspx'</script>");
        }
        else
        {
            if (txtPwd.Text == "")
            {
                Response.Write("<script>alert('请输入密码');location='Login.aspx'</script>");
            }
            else
            {
                string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select userInfo.username, corpInfo.corpName,userInfo.qxStr,corpInfo.corpId from corpInfo,userInfo where userInfo.corpId=corpInfo.corpId and userinfo.userName='" + txtNum.Text + "' and userPass='" + txtPwd.Text + "'", conn);
                cmd.CommandType = CommandType.Text;
                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {

                    HttpCookie objCookie1 = new HttpCookie("lllCookie", HttpUtility.UrlEncode(sdr[2].ToString()));
                    Response.Cookies.Add(objCookie1); 

                    HttpCookie objCookie = new HttpCookie("myCookie", txtNum.Text);
                    Response.Cookies.Add(objCookie);

                    HttpCookie objCookie666 = new HttpCookie("aiCookie", txtPwd.Text);
                    Response.Cookies.Add(objCookie666);

                    HttpCookie objCookiekk = new HttpCookie("llrCookie", HttpUtility.UrlEncode(sdr[1].ToString()));
                    Response.Cookies.Add(objCookiekk);

                    HttpCookie objcorpId = new HttpCookie("idCookie", HttpUtility.UrlEncode(sdr[3].ToString()));
                    Response.Cookies.Add(objcorpId);

                    Response.Redirect("../adm/mainpage.aspx");
                
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误');location='Login.aspx'</script>");
                    return;
                }
            }
        }
    }
    protected void btnconcel_Click(object sender, EventArgs e)
    {
        txtNum.Text = "";
        txtPwd.Text = "";
        Response.Write("<script>alert('请重新输入账号密码登录');location='Login.aspx'</script>");
        //Response.Write("<script>window.confirm('确实要删除吗?');</script>");
    }
}