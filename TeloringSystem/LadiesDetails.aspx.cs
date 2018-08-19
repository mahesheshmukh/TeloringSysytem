using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
//using CrystalDecisions.CrystalReports.Engine;
//using CrystalDecisions.Shared;
using System.Net;
using System.Net.Http;
using System.IO;
//using Microsoft.Reporting.WebForms;

public partial class LadiesDetails : System.Web.UI.Page
{

    #region "Variables"

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\login.mdf;Integrated Security=True;User Instance=True;"); 
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

    string MshapeKey = "SKzhN56U1Amsh06Bs8x8IstfOoBAp1qvRkmjsn4O8Iz9SbkQiP";

    #endregion "Variables"

    #region "Events"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        if (!IsPostBack)
        {   
            ShowViewDetails();
            this.BindGrid(string.Empty);
            calReportFrom.SelectedDate = DateTime.Now;
            calReportTo.SelectedDate = DateTime.Now;
            txtReportFrom.Text = calReportFrom.SelectedDate.ToShortDateString();
            txtReportTo.Text = calReportTo.SelectedDate.ToShortDateString();
           
        }
    }

    protected void mesurehpl_Click(object sender, EventArgs e)
    {
        ShowAddEditPanel();
    }

    protected void viewhpl_Click(object sender, EventArgs e)
    {
        ShowViewDetails();
    }
    
    protected void reporthpl_Click(object sender, EventArgs e)
    {   
        ReportPanel.Visible = true;
        ReportView.Visible = true;
        MesurmentPanel.Visible = false;
        ViewPanel.Visible = false;
        BillPanel.Visible = false;
    }

    protected void billhpl_Click(object sender, EventArgs e)
    {
        BillPanel.Visible = true;
        MesurmentPanel.Visible = false;
        ViewPanel.Visible = false;
        ReportPanel.Visible = false;
        txtBill.Text = "";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtcusName.Text != "")
        {
            string query = string.Empty;
            if (!string.IsNullOrEmpty(hidCustId.Text) && Convert.ToInt32(hidCustId.Text) > 0)
            {
                query = "";
                query = "UPDATE LadiesDetails SET CustName='" + txtcusName.Text +
                "',MobNo='" + txtmobno.Text +
                "',DressType='" + txtDresstype.Text +
                "',DressCount='" + txtDressCount.Text +
                "',DressCost='" + this.txtTotal.Text +
                "',RemCost='" + txtPaid.Text +
                "',TuxPoint='" + this.txtTuxP.Text +
                "',WaistLength='" + this.txtWaistL.Text +
                "',FullLenght='" + this.txtFullL.Text +
                "',ShortLenght='" + this.txtShortL.Text +
                "',Chest='" + this.txtChest.Text +
                "',Waist='" + this.txtWaist.Text +
                "',Seat='" + this.txtSeat.Text +
                "',Shoulder='" + this.txtSholder.Text +
                "',SLB='" + this.txtSLB.Text +
                "',Neck='" + this.txtNeck.Text +
                "',BackNeck='" + this.txtBackN.Text +
                "',KneeLenght='" + this.txtKneeL.Text +
                "',LenghtBottom='" + this.txtLB.Text +
                "',Thighness='" + this.txtThigh.Text +
                "',Elbow='" + this.txtElbow.Text +
                "',OtherDetails='" + this.txtOtherD.Text +
                "',CurrentDate='" + this.txtCDate.Text +
                "',DiliveryDate='" + this.txtDDate.Text +
                "' WHERE CustId=" + hidCustId.Text;

            }
            else
            {

                query = "INSERT INTO LadiesDetails(CustName,RegId,MobNo,DressType,DressCount,DressCost,RemCost,TuxPoint,WaistLength,FullLenght,ShortLenght,Chest,Waist,Seat,Shoulder,SLB,Neck,BackNeck,KneeLenght,LenghtBottom,Thighness,Elbow,OtherDetails,CurrentDate,DiliveryDate) values ('" + this.txtcusName.Text + "', '" + Session["Id"] + "','" + this.txtmobno.Text + "','" + this.txtDresstype.Text + "', '" + this.txtDressCount.Text + "', '" + this.txtPaid.Text + "','" + this.txtTotal.Text + "','" + this.txtTuxP.Text + "','" + this.txtWaistL.Text + "', '" + this.txtFullL.Text + "', '" + this.txtShortL.Text + "', '" + this.txtChest.Text + "','" + this.txtWaist.Text + "', '" + this.txtSeat.Text + "', '" + this.txtSholder.Text + "', '" + this.txtSLB.Text + "', '" + this.txtNeck.Text + "', '" + this.txtBackN.Text + "', '" + this.txtKneeL.Text + "', '" + this.txtLB.Text + "', '" + this.txtThigh.Text + "', '" + this.txtElbow.Text + "', '" + this.txtOtherD.Text + "', '" + this.txtCDate.Text + "', '" + this.txtDDate.Text + "');"; query = "insert into LadiesDetails(CustName,RegId,MobNo,DressType,DressCount,DressCost,RemCost,TuxPoint,WaistLength,FullLenght,ShortLenght,Chest,Waist,Seat,Shoulder,SLB,Neck,BackNeck,KneeLenght,LenghtBottom,Thighness,Elbow,OtherDetails,CurrentDate,DiliveryDate) values ('" + this.txtcusName.Text + "', '" + Session["Id"] + "','" + this.txtmobno.Text + "','" + this.txtDresstype.Text + "', '" + this.txtDressCount.Text + "', '" + this.txtPaid.Text + "','" + this.txtTotal.Text + "','" + this.txtTuxP.Text + "','" + this.txtWaistL.Text + "', '" + this.txtFullL.Text + "', '" + this.txtShortL.Text + "', '" + this.txtChest.Text + "','" + this.txtWaist.Text + "', '" + this.txtSeat.Text + "', '" + this.txtSholder.Text + "', '" + this.txtSLB.Text + "', '" + this.txtNeck.Text + "', '" + this.txtBackN.Text + "', '" + this.txtKneeL.Text + "', '" + this.txtLB.Text + "', '" + this.txtThigh.Text + "', '" + this.txtElbow.Text + "', '" + this.txtOtherD.Text + "', '" + this.txtCDate.Text + "', '" + this.txtDDate.Text + "');";
            }
            con.Open();
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            clearMesurmentdetails();
            Calendar1.Visible = false;
            Calendar2.Visible = false;
            this.BindGrid(string.Empty);
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Customer details saved sucessfully!!!')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please enter Customer Name!!!')</script>");
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserType.aspx");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        clearMesurmentdetails();
        Calendar1.Visible = false;
        Calendar2.Visible = false;
    }

    protected void btnExpand_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
        Calendar2.Visible = false;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtCDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtDDate.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }
    protected void btnExpand1_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
        Calendar1.Visible = false;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindGrid(txtSearch.Text.Trim());
    }

    protected void btnCleargrid_Click(object sender, EventArgs e)
    {
        txtSearch.Text = "";
        BindGrid(string.Empty);
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid(string.Empty); //bindgridview will get the data source and bind it again
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid(string.Empty);
    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            con.Open();
            string CustId = GridView1.Rows[e.RowIndex].Cells[0].Text;
            string query = string.Format("DELETE FROM LadiesDetails WHERE CustId='" + CustId + "' and RegId = '" + Convert.ToString(Session["Id"]) + "'");
            cmd = new SqlCommand(query, con);
            int result = cmd.ExecuteNonQuery();
            if (result == 0)
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Record not found.!!!')</script>");
            else
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Record deleted successfully.!!!')</script>");
            con.Close();
            BindGrid(string.Empty);
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Error occured while deleting record')</script>");
        }
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        string CustId = GridView1.Rows[e.NewEditIndex].Cells[0].Text;
        string query = string.Format("SELECT * FROM LadiesDetails WHERE CustId='" + CustId + "' and RegId = '" + Convert.ToString(Session["Id"]) + "'");
        con.Open();
        cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows && dr.Read())
        {
            ShowAddEditPanel();
            btnSave.Text = "Update";
            hidCustId.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("CustId")));
            txtcusName.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("CustName")));
            txtmobno.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("MobNo")));
            txtDresstype.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("DressType")));
            txtPaid.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("RemCost")));
            txtTotal.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("DressCost")));
            txtDressCount.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("DressCount")));
            txtTuxP.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("TuxPoint")));
            txtWaist.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Waist")));
            txtFullL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("FullLenght")));
            txtShortL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("ShortLenght")));
            txtChest.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Chest")));
            txtWaistL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("WaistLength")));
            txtSeat.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Seat")));
            txtSholder.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Shoulder")));
            txtNeck.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Neck")));
            txtSLB.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("SLB")));
            txtBackN.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("BackNeck")));
            txtOtherD.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("OtherDetails")));
            txtKneeL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("KneeLenght")));
            txtLB.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("LenghtBottom")));
            txtThigh.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Thighness")));
            txtElbow.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Elbow")));
            txtCDate.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("CurrentDate")));
            txtDDate.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("DiliveryDate")));
        }
    }

    #endregion "Events"

    #region "Private Functions"

    private void clearMesurmentdetails()
    {
        hidCustId.Text = "0";
        btnSave.Text = "Save";
        txtcusName.Text = "";
        txtmobno.Text = "";
        txtDresstype.Text = "";
        txtPaid.Text = "";
        txtTotal.Text = "";
        txtDressCount.Text = "";
        txtTuxP.Text = "";
        txtWaist.Text = "";
        txtFullL.Text = "";
        txtShortL.Text = "";
        txtChest.Text = "";
        txtWaist.Text = "";
        txtWaistL.Text = "";
        txtSeat.Text = "";
        txtSholder.Text = "";
        txtNeck.Text = "";
        txtSLB.Text = "";
        txtBackN.Text = "";
        txtOtherD.Text = "";
        txtKneeL.Text = "";
        txtLB.Text = "";
        txtThigh.Text = "";
        txtElbow.Text = "";
        txtCDate.Text = "";
        txtDDate.Text = "";
    }

    private void BindGrid(string searchText)
    {
        con.Open();
        using (cmd = new SqlCommand())
        {
            cmd.CommandText = "SELECT CustId,CustName,MobNo,DressType,DressCount,DressCost,RemCost,OtherDetails,CurrentDate,DiliveryDate FROM LadiesDetails WHERE CustName LIKE '%' + @CustName + '%' and RegId = '" + Session["Id"] + "'";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@CustName", searchText);
            dt = new DataTable();
            using (da = new SqlDataAdapter(cmd))
            {
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        con.Close();
    }

    private void ShowAddEditPanel()
    {
        clearMesurmentdetails();
        MesurmentPanel.Visible = true;
        helppnl.Visible = false;
        ViewPanel.Visible = false;
        ReportPanel.Visible = false;
        BillPanel.Visible = false;
        Calendar1.Visible = false;
        Calendar2.Visible = false;
    }

    private void ShowViewDetails()
    {
        ViewPanel.Visible = true;
        MesurmentPanel.Visible = false;
        ReportPanel.Visible = false;
        BillPanel.Visible = false;
        helppnl.Visible = false;
    }

    #endregion "Private Functions"
    protected void Helphpl_Click(object sender, EventArgs e)
    {
        ViewPanel.Visible = false;
        MesurmentPanel.Visible = false;
        ReportPanel.Visible = false;
        BillPanel.Visible = false;
        helppnl.Visible = true;
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        if (txtmobnosms.Text != "" && txtmsg.Text != "")
        {
            WebRequest request = WebRequest.Create("https://webaroo-send-message-v1.p.mashape.com/sendMessage?message=" + txtmsg.Text + "&phone=" + txtmobnosms.Text);
            request.Headers.Add("X-Mashape-Key", "wQ1D9n3JxUmsh4bQi9jbIkCi9Gisp1cT5SkjsnF6HpXQcC0QXj");
            WebResponse response = request.GetResponse();
            lblError.Text = "Message sent sucessfully...";
        }
        else
        {
            lblError.Text = "Please enter Phone number and Message.";
        }

    }

   /* public void send(string uid, string password, string message, string no)
    {

        try
        {
            WebRequest request = WebRequest.Create("https://webaroo-send-message-v1.p.mashape.com/sendMessage?message=Tujya code madhun msg&phone=8554870814");
            request.Headers.Add("X-Mashape-Key", MshapeKey);
            WebResponse response = request.GetResponse();
        }
        catch (Exception ex)
        {
        }
    }*/


  /*  protected void btnprintbill_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.CommandText = "SELECT * FROM LadiesDetails WHERE RegId = '" + Session["Id"] + "' AND CustId = '" + txtBill.Text + "'";
        cmd.Connection = con;
        txtBill.Text = "";
        dt = new DataTable();
        using (da = new SqlDataAdapter(cmd))
        {
            da.Fill(dt);
            ReportDocument doc = new ReportDocument();
            doc.Load(Server.MapPath("BillReport.rpt"));
            doc.SetDataSource(dt);

            BillViewer.ReportSource = doc;
            doc.ExportToDisk(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, @"D:\ASD.pdf");
            doc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "My Report");
            doc.ExportToStream(ExportFormatType.PortableDocFormat);
            //MessageBox.Show("Exported Successful");

        }
        ReportPanel.Visible = false;
        MesurmentPanel.Visible = false;
        ViewPanel.Visible = false;
        BillPanel.Visible = true;
        helppnl.Visible = false;
    }
*/

    protected void calReportFrom_SelectionChanged(object sender, EventArgs e)
    {
        txtReportFrom.Text = calReportFrom.SelectedDate.ToShortDateString();
        calReportFrom.Visible = false;
    }
    protected void calReportTo_SelectionChanged(object sender, EventArgs e)
    {
        txtReportTo.Text = calReportTo.SelectedDate.ToShortDateString();
        calReportTo.Visible = false;
    }
  /*  protected void btnShowReport_Click(object sender, EventArgs e)
    {
        calReportTo.Visible = false;
        calReportFrom.Visible = false;
        ReportView.Visible = true;
        con.Open();
        cmd.CommandText = "SELECT * FROM LadiesDetails WHERE DATEADD(dd,0,DateDiff(dd,0,CurrentDate)) Between '" + txtReportFrom.Text + "' and '" + txtReportTo.Text + "'";
        cmd.Connection = con;
        dt = new DataTable();
        using (da = new SqlDataAdapter(cmd))
        {
            da.Fill(dt);
            ReportDocument doc = new ReportDocument();
            doc.Load(Server.MapPath("CrystalReport.rpt"));
            doc.SetDataSource(dt);
            ReportViewer1.SizeToReportContent = true;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/LadiesDetailsReport.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("LadiesDetailsSet_LadiesDetails", dt));
            ReportViewer1.LocalReport.Refresh();
        }
    }*/
    protected void btnReportCalFrom_Click(object sender, EventArgs e)
    {
        calReportFrom.Visible = true;
    }
    protected void btnReportCalTo_Click(object sender, EventArgs e)
    {
        calReportTo.Visible = true;
    }
}
