using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;

public partial class net_mainstationchoose : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)              //首次加载页面执行的程序
        {
            try
            {
                // string conString = @"server=DESKTOP-VS21HNU\SQLEXPRESS;database=Onlinemoni;uid=sa;pwd=wxyn1998";
                // SqlConnection con = new SqlConnection(conString);
                // con.Open();
                //string strSQL = "select * from stationType";
                // SqlDataAdapter da = new SqlDataAdapter(strSQL, con);
                // da.Fill(dt);
                string username = Request.Cookies["myCookie"].Value;
                string userpassword = Request.Cookies["aiCookie"].Value;
                 string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["constring"].ToString();
                SqlConnection conn = new SqlConnection(str);
                SqlDataAdapter sda = new SqlDataAdapter("select station.moniType as moniType,station.stationName as stationName from station,userinfo where userInfo.corpId=station.corpId and userInfo.userName='" + username + "'and userInfo.userPass='" + userpassword + "'", conn);
                //DataSet ds = new DataSet();
                //sda.Fill(ds);
               // GridView1.DataSource = ds.Tables[0];
                sda.Fill(dt);
                // GridView1.DataSource = dt;
                // GridView1.DataBind();
            }
            catch
            {
                Response.Write("数据库读取错误");
            }
            finally
            {
              AddNode((TreeNode)null);
           
            }
            
        }
    }
    //protected void AddTreeNode(TreeNode pNode)
    //{
    //    TreeNode tn1 = new TreeNode();
    //    DataView dv = new DataView(ds.Tables[0]);
    //    //过滤parentId，得到当前节点的所有子节点
    //    //dv.RowFilter = "typeNum=" + typeNum;
    //    foreach (DataRowView drv in dv)
    //    {
    //        if (pNode == null)
    //        {

    //            tn1.Text = drv["moniType"].ToString(); //节点上要显示的名称
    //        //    tn1.NavigateUrl = drv["bz"].ToString();  //点击节点名称，跳转到指定url页面
    //            TreeView1.Nodes.Add(tn1); //将根节点加入到TreeView中去
    //            tn1.Expanded = true;
    //            //递归调用
    //            AddTreeNode(tn1);    //添加父节点
    //        }
    //        else
    //        {
    //            TreeNode tn2 = new TreeNode();
    //            tn2.Text = drv["stationName"].ToString();
    //        //    tn2.NavigateUrl = drv["bz"].ToString();
    //            pNode.ChildNodes.Add(tn2);
    //            tn1.Expanded = true;
    //            //递归调用
    //            AddTreeNode(tn2);   //添加子节点
    //        }
    //    }
    //}


    protected void AddNode(TreeNode pNode)
    {
        int i = dt.Rows.Count;        
        for (int a = 0; a < i; a++)
        {
             TreeNode tn1 = new TreeNode();
           // if (TreeView1.Nodes.Count==0)            
            tn1.Text = dt.Rows[a]["moniType"].ToString(); //节点上要显示的名称 
            tn1.Expanded = true;
            TreeView1.Nodes.Add(tn1); //将根节点加入到TreeView中去    
            TreeNode tn2 = new TreeNode();
            tn2.Text = dt.Rows[a]["stationName"].ToString();
            tn1.ChildNodes.Add(tn2);
            tn1.Expanded = true;


        }
        }
    
}