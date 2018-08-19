using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.OleDb;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\login.mdf;Integrated Security=True;User Instance=True;"); 
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    //protected void Page_Init(object Sender, EventArgs e)
    //{
    //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
    //    Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
    //    Response.Cache.SetNoStore();
    //}

    //protected override void OnPreRender(EventArgs e)
    //{
    //    base.OnPreRender(e);
    //    string strDisAbleBackButton;
    //    strDisAbleBackButton = "<script language=\"javascript\">\n";
    //    strDisAbleBackButton += "window.history.forward(1);\n";
    //    strDisAbleBackButton += "\n</script>";
    //    ScriptManager.RegisterStartupScript(this, this.GetType(), "", "noBack()", true);
    //    //ScriptManager.RegisterClientScriptBlock(this.Page.GetType(), "clientScript", strDisAbleBackButton);
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.SetFocus(username);
        if (Session["Username"] != null)
        {
            //   Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //this.Response.Cache.SetExpires(DateTime.UtcNow.AddSeconds(-4));
            //this.Response.Cache.SetValidUntilExpires(false);
            //this.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //this.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
            //this.Response.Cache.SetNoStore();
            //this.Response.ExpiresAbsolute = DateTime.Now.Subtract(new TimeSpan(1, 0, 0, 0));
            //this.Response.CacheControl = "no-cache";
            //this.Response.Cache.AppendCacheExtension("must-revalidate, proxy-revalidate, post-check=0, pre-check=0");

            this.Response.Redirect("UserType.aspx");

        }
        //else
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "", "noBack()", true);

        if (!IsPostBack)
        {
            //Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            ContentPlaceHolder cp = (ContentPlaceHolder)Master.FindControl("toper");
            Button btn = (Button)cp.FindControl("Exits");
            btn.Visible = false;
           
        }        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = username.Text;
        string pass = password.Text;

        string query = "select Id from Login where Uname='" + name + "' and Pass='" + pass + "'";
        da = new SqlDataAdapter(query, con);
        dt = new DataTable();
        da.Fill(dt);
       
        if (dt.Rows.Count>0)
        {
            Session["Id"] = dt.Rows[0]["Id"].ToString();
            Session["Username"] = username.Text;
            string a = Session["Id"].ToString();
            Response.Redirect("UserType.aspx");
        }
       else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    }


    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtphnno.Text = "";
        txtpass.Text = "";
        txtcopass.Text = "";
        Response.Redirect("Customer_Details.aspx");
    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "" || txtpass.Text == "")
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Fill Required Fields!!!')</script>");
        }

        if (txtpass.Text != txtcopass.Text)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Enter Password & Confirm Password Equal!!!')</script>");
        }

        else
        {
            try
            {
                string query = "insert into Login(Uname,Pass,email,phone) values ('" + this.txtname.Text + "', '" + this.txtpass.Text + "', '" + this.txtemail.Text + "', '" + this.txtphnno.Text + "');";
                con.Open();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Customer_Details.aspx");
            }
            catch (Exception)
            {

            }
        }
    }

 
}