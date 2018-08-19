using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
//using CrystalDecisions.CrystalReports.Engine;
//using CrystalDecisions.Shared;

public partial class MensDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\login.mdf;Integrated Security=True;User Instance=True;"); SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();

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
 /*   protected void reporthpl_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.CommandText = "SELECT * FROM MensDetails WHERE RegId = '" + Session["Id"] + "'";
        cmd.Connection = con;
        dt = new DataTable();
        using (da = new SqlDataAdapter(cmd))
        {
            da.Fill(dt);
            ReportDocument doc = new ReportDocument();
            doc.Load(Server.MapPath("CrystalReport.rpt"));
            doc.SetDataSource(dt);

            CrystalReportViewer1.ReportSource = doc;
            doc.ExportToDisk(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, @"D:\ASD.pdf");
            doc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "My Report");

            doc.ExportToStream(ExportFormatType.PortableDocFormat);
            //MessageBox.Show("Exported Successful");
        }
        ReportPanel.Visible = true;
        MesurmentPanel.Visible = false;
        ViewPanel.Visible = false;
        BillPanel.Visible = false;
    }*/
    protected void billhpl_Click(object sender, EventArgs e)
    {
        BillPanel.Visible = true;
        MesurmentPanel.Visible = false;
        ViewPanel.Visible = false;
        ReportPanel.Visible = false;
        Mainpnl.Visible = false;
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

    protected void help_Click(object sender, EventArgs e)
    {
        BillPanel.Visible = false;
        MesurmentPanel.Visible = false;
        ViewPanel.Visible = false;
        ReportPanel.Visible = false;
        Mainpnl.Visible = true;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
       if (txtcusName.Text != "")
        {
            string query = string.Empty;
            if (!string.IsNullOrEmpty(hidCustId.Text) && Convert.ToInt32(hidCustId.Text) > 0)
            {
                query = "UPDATE MensDetails SET CustName='" + txtcusName.Text +
                "',MobNo='" + txtmobno.Text +
                "',DressType='" + txtDresstype.Text +
                "',DressCount='" + txtDressCount.Text +
                "',DressCost='" + txtTotal.Text +
                "',RemCost='" + txtPaid.Text +
                "',CurrentDate='" + txtCDate.Text+
                "',DiliveryDate='" + txtDDate.Text+
                "',Neck='" + txtNeck.Text+
                "',Chest='" + txtChest.Text +
                "',Waist='" + txtSWaist.Text +
                "',HipShirt='" + txtSHip.Text +
                "',Shoulder='" + txtShoulder.Text +
                "',SleeveLength='" + txtSleeveL.Text +
                "',ElbowWidth='" + txtElbow.Text +
                "',ShortSleve='" + txtShortS.Text +
                "',Wrist='" + txtWrist.Text +
                "',Bicep='" + txtBicep.Text +
                "',ShirtLength='" + txtShirtL.Text +
                "',PWaist='" + txtWaist.Text +
                "',Hips='" + txtHips.Text +
                "',Crotch='" + txtCrotch.Text +
                "',ThighWidth='" + txtThighW.Text +
                "',PantLength='" + txtPantL.Text +
                "',Inseam='" + txtInseam.Text +
                "',Knee='" + txtKnee.Text +
                "',Bottom='" + txtBottom.Text +
                "',BackRise='" + txtBackR.Text +
                "',FrontRise='" + txtFrontR.Text +
                "' WHERE CustId=" + hidCustId.Text;

            }
            else
            {
                //query = "insert into MensDetails(CustName,RegId,MobNo,DressType,DressCount,DressCost,RemCost,TuxPoint,WaistLength,FullLenght,ShortLenght,Chest,Waist,Seat,Shoulder,SLB,Neck,BackNeck,KneeLenght,LenghtBottom,Thighness,Elbow,OtherDetails,CurrentDate,DiliveryDate) values ('" + this.txtcusName.Text + "', '" + Session["Id"] + "','" + this.txtmobno.Text + "','" + this.txtDresstype.Text + "', '" + this.txtDressCount.Text + "', '" + this.txtPaid.Text + "','" + this.txtTotal.Text + "','" + this.txtWaist.Text + "', '" + this.txtSWaist.Text + "', '" + this.txtSHip.Text + "', '" + this.txtShoulder.Text + "','" + this.txtSleeveL.Text + "', '" + this.txtHips.Text + "', '" + this.txtWaist.Text + "', '" + this.txtCrotch.Text + "', '" + this.txtPantL.Text + "', '" + this.txtInseam.Text + "', '" + this.txtKnee.Text + "', '" + this.txtElbow.Text + "', '" + this.txtOtherD.Text + "', '" + this.txtCDate.Text + "', '" + this.txtDDate.Text + "');";
                query = "insert into MensDetails(CustName,RegId,MobNo,DressType,DressCount,DressCost,RemCost,CurrentDate,DiliveryDate,Neck,Chest,Waist,HipShirt,Shoulder,SleeveLength,ElbowWidth,ShortSleave,Wrist,Bicep,ShirtLength,PWaist,Hips,Crotch,ThighWidth,PantLength,Inseam,Knee,Bottom,BackRise,FrontRise) values ('" + this.txtcusName.Text + "', '" + Session["Id"] + "','" + this.txtmobno.Text +
                    "','" + this.txtDresstype.Text + "', '" + this.txtDressCount.Text + "','" + this.txtTotal.Text + "', '" + this.txtPaid.Text + "','" + this.txtCDate.Text + "','" + this.txtDDate.Text + "','" + this.txtNeck.Text + "','" + this.txtChest.Text + "','" + this.txtSWaist.Text + "','" + this.txtSHip.Text + "','" + this.txtShoulder.Text + "','" + this.txtSleeveL.Text + "','" + this.txtElbow.Text + "','" + this.txtShortS.Text + "','" + this.txtWrist.Text + "','" + this.txtBicep.Text + "','" + this.txtShirtL.Text + "','" + this.txtWaist.Text + "','" + this.txtHips.Text + "','" + this.txtCrotch.Text + "','" + this.txtThighW.Text + "','" + this.txtPantL.Text + "','" + this.txtInseam.Text + "','" + this.txtKnee.Text + "','" + this.txtBottom.Text + "','" + this.txtBackR.Text + "','" + this.txtFrontR.Text + "' );";                
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Mainpnl.Visible = true;
        MesurmentPanel.Visible = false;
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
            string query = string.Format("DELETE FROM MensDetails WHERE CustId='" + CustId + "' and RegId = '" + Convert.ToString(Session["Id"]) + "'");
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
        string query = string.Format("SELECT * FROM MensDetails WHERE CustId='" + CustId + "' and RegId = '" + Convert.ToString(Session["Id"]) + "'");
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
            txtCDate.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("CurrentDate")));
            txtDDate.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("DiliveryDate")));
            txtNeck.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Neck")));
            txtChest.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Chest")));
            txtSWaist.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Waist")));
            txtSHip.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("HipShirt")));
            txtShoulder.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Shoulder")));
            txtSleeveL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("SleeveLength")));
            txtElbow.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("ElbowWidth")));
            txtShortS.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("ShortSleave")));
            txtWrist.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Wrist")));
            txtBicep.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Bicep")));
            txtShirtL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("ShirtLength")));
            txtWaist.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("PWaist")));
            txtHips.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Hips")));
            txtCrotch.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Crotch")));
            txtThighW.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("ThighWidth")));
            txtPantL.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("PantLength")));
            txtInseam.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Inseam")));
            txtKnee.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Knee")));
            txtBottom.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("Bottom")));
            txtBackR.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("BackRise")));
            txtFrontR.Text = Convert.ToString(dr.GetValue(dr.GetOrdinal("FrontRise")));
        }
    }

    #region "Private Functions"

    private void BindGrid(string searchText)
    {
        con.Open();
        using (cmd = new SqlCommand())
        {
            cmd.CommandText = "SELECT * FROM MensDetails WHERE CustName LIKE '%' + @CustName + '%' and RegId = '" + Session["Id"] + "'";
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
        txtWaist.Text = "";
        txtSleeveL.Text = "";
        txtSWaist.Text = "";
        txtSHip.Text = "";
        txtShoulder.Text = "";
        txtSleeveL.Text = "";
        txtWaist.Text = "";
        txtHips.Text = "";
        txtCrotch.Text = "";
        txtThighW.Text = "";
        txtPantL.Text = "";
        txtInseam.Text = "";
        txtKnee.Text = "";
        txtElbow.Text = "";
        txtCDate.Text = "";
        txtDDate.Text = "";
        txtNeck.Text = "";
        txtChest.Text = "";
        txtShortS.Text = "";
        txtWrist.Text = "";
        txtBicep.Text = "";
        txtShirtL.Text = "";
        txtBottom.Text = "";
        txtBackR.Text = "";
        txtFrontR.Text = "";
    }

    private void ShowAddEditPanel()
    {
        clearMesurmentdetails();
        MesurmentPanel.Visible = true;
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
        Mainpnl.Visible = false;
    }

    #endregion "Private Functions"    
}
