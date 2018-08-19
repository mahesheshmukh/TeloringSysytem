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

public partial class UserType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["Username"] != null)
            {
                ContentPlaceHolder ct = (ContentPlaceHolder)Master.FindControl("menucontent");
                HyperLink hlink1 = (HyperLink)ct.FindControl("CLogin");
                String us = Convert.ToString(Session["Username"]);
                hlink1.NavigateUrl = null;
                hlink1.Text = "Welcome/" + us.ToUpper();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }

   
}
