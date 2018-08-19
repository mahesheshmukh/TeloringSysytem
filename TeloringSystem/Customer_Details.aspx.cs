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

public partial class Customer_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            ContentPlaceHolder cp = (ContentPlaceHolder)Master.FindControl("toper");
            Button btn = (Button)cp.FindControl("Exits");
            btn.Visible = false;
            if (Session["Username"] != null)
            {
                Response.Redirect("UserType.aspx");
            }
        }

       
    }
}
