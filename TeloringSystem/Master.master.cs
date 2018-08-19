using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }


    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["Username"] = null;
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "", "noBack()", true);
        //Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Redirect("Login.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    protected void SetImageUrl()
    {
        try
        {
            Random rand = new Random();
            int i = rand.Next(1, 5);
            Image1.ImageUrl = "~/images/Add/" + i.ToString() + ".jpg";
        }
        catch (Exception e)
        { }
    }
}
