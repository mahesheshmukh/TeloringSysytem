<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="LadiesDetails.aspx.cs"
    Inherits="LadiesDetails" Title="Ladies Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <script src="JScript/jquery-1.3.2.min.js" type="text/javascript"></script>
    <link href="css/LadiesDetails.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 138px;
        }
        .style3
        {
            width: 220px;
        }
        .style4
        {
            width: 192px;
            height: 184px;
        }
        .style5
        {
            width: 220px;
            height: 184px;
        }
        .style6
        {
            height: 184px;
        }
        .style7
        {
            width: 192px;
            height: 69px;
        }
        .style8
        {
            width: 220px;
            height: 69px;
        }
        .style9
        {
            height: 69px;
        }
        .style10
        {
            width: 192px;
        }
        
        #menu, #menu ul
        {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        #menu li:hover ul, #menu li.over ul
        {
            display: block;
        }
        #menu li:hover ul ul, #menu li.over ul ul
        {
            display: none;
        }
        #menu ul li:hover ul, #menu ul li.over ul
        {
            display: block;
        }
        #menu a:hover
        {
            background-color: #5798B4;
            color: #fff;
        }
        .style11
        {
            width: 241px;
        }
    </style>
    <script type="text/javascript">
        function setImage() {
            var value = $("#ctl00_Header_Image1").attr("imagno");
            alert(value);
            if (value == 1) {
                $("#ctl00_Header_Image1").attr("src", "images/Ledies/LadiesMesurment1.png")
            }
            else if (value == 2) {
            }
            else if (value == 3) {
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="menucontent" runat="Server">

    <div class="menu">
        <asp:Panel ID="Panel1" runat="server" Height="80px" ForeColor="BurlyWood" BackImageUrl="~/images/Green/green4.jpg">
            <table width="100%" height="100%" style="padding: 5px; text-align: center;">
                
                    <td align="center">
                        <asp:LinkButton ID="viewhpl" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#00FFCC"
                            Font-Underline="False" OnClick="viewhpl_Click">View Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="reporthpl" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="False"
                            ForeColor="#00FFCC" OnClick="reporthpl_Click">Reports</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="billhpl" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="False"
                            ForeColor="#00FFCC" OnClick="billhpl_Click">Print 
                            Bill</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="Helphpl" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="False"
                            ForeColor="#00FFCC" OnClick="Helphpl_Click">
                            Help</asp:LinkButton>
                    </td>
        
            </table>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Header" runat="Server">
    <asp:Panel ID="MesurmentPanel" runat="server" Width="1150px" Height="100%" CssClass="MesurmentPanel1">
        <br />
        <table class="center">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="center" colspan="6">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Overline="False"
                        Font-Size="18pt" ForeColor="#990033" Text="Enter Ladies Details"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="hidCustId" runat="server" Font-Size="11pt" Visible="false"></asp:TextBox>
                    <asp:Label ID="lblcusName" runat="server" Font-Bold="True" Font-Size="11pt" Text="Customer Name :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblMob" runat="server" Font-Bold="True" Font-Size="11pt" Text="Mobile Number :"
                        ForeColor="Black"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtcusName" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtmobno" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <td class="style1">
                        &nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lblCDate" runat="server" Font-Bold="True" Font-Size="11pt" Text="Current Date : "
                            ForeColor="Black"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDDate" runat="server" Font-Bold="True" Font-Size="11pt" Text="Delivery Date : "
                            ForeColor="Black"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtCDate" runat="server" Width="189px" ReadOnly="True"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnExpand" runat="server" Font-Bold="True" Height="20px" OnClick="btnExpand_Click"
                            Text="+" ToolTip="Select Date" Width="22px" />
                        <br />
                        <br />
                        <asp:TextBox ID="txtDDate" runat="server" Width="186px" ReadOnly="True"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btnExpand1" runat="server" Font-Bold="True" Height="20px" OnClick="btnExpand1_Click"
                            Text="+" ToolTip="Select Date" />
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" Height="121px" OnSelectionChanged="Calendar1_SelectionChanged"
                            Visible="False" Width="112px"></asp:Calendar>
                        <br />
                        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"
                            Visible="False" Width="120px"></asp:Calendar>
                    </td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="lblDressT" runat="server" Font-Bold="True" Font-Size="11pt" Text="Dress Type :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblPaid" runat="server" Font-Bold="True" Font-Size="11pt" Text="Paid Rs. :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblMob0" runat="server" Font-Bold="True" Font-Size="11pt" Text="Remaning :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblDressCount" runat="server" Font-Bold="True" Font-Size="11pt" Text="No Of Dress :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblTP" runat="server" Font-Bold="True" Font-Size="11pt" Text="Tux Point :"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDresstype" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPaid" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtTotal" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtDressCount" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtTuxP" runat="server" Font-Bold="False" Font-Size="11pt" Width="214px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="lblNeck" runat="server" Font-Bold="True" Font-Size="11pt" Text="Front Neck(FN) :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblShortL0" runat="server" Font-Bold="True" Font-Size="11pt" Text="SL * B : "
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblBNeck" runat="server" Font-Bold="True" Font-Size="11pt" Text="Back Neck :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="11pt" Text="Other Details :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblKneeL" runat="server" Font-Bold="True" Font-Size="11pt" Text="Knee  Lenght(KL) :"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNeck" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSLB" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtBackN" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtOtherD" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtKneeL" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <br />
                    <asp:Label ID="lblWaistL" runat="server" Font-Bold="True" Font-Size="11pt" Text="Waist Length(WL) :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblDressName0" runat="server" Font-Bold="True" Font-Size="11pt" Text="Full Lenght (L):"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblShortL" runat="server" Font-Bold="True" Font-Size="11pt" Text="Short Lenght :"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtWaistL" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtFullL" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtShortL" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="lblLB" runat="server" Font-Bold="True" Font-Size="11pt" Text="Length * Bottom : "
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblThigh" runat="server" Font-Bold="True" Font-Size="11pt" Text="Thighness(TH) :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblElbow" runat="server" Font-Bold="True" Font-Size="11pt" Text="Elbow(EL) : "
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLB" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtThigh" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtElbow" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <br />
                    <asp:Label ID="lblCH" runat="server" Font-Bold="True" Font-Size="11pt" Text="Chest(CH) :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblWaist" runat="server" Font-Bold="True" Font-Size="11pt" Text="Waist(W) :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblWaistL0" runat="server" Font-Bold="True" Font-Size="11pt" Text="Seat(S) : "
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblDressName1" runat="server" Font-Bold="True" Font-Size="11pt" Text="Sholder(SH) :"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtChest" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtWaist" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSeat" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSholder" runat="server" Font-Size="11pt" Width="214px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;
                </td>
                <td colspan="2">
                    <asp:Button ID="btnBack" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#993333"
                        Height="32px" OnClick="btnBack_Click" Text="Back" Width="70px" />
                    &nbsp;<asp:Button ID="btnClear" runat="server" Font-Bold="True" Font-Size="11pt"
                        ForeColor="#993333" Height="32px" OnClick="btnClear_Click" Text="Clear" Width="70px" />
                    <asp:Button ID="btnSave" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#993333"
                        Height="33px" OnClick="btnSave_Click" Text="Save" Width="70px" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="ViewPanel" runat="server" Width="798px" Height="100%" CssClass="ViewDetails1"
        Style="margin-top: 10px">
        <asp:Label ID="Search" runat="server" Text="Search :" Font-Bold="True" Font-Size="20pt"
            ForeColor="#990033"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtSearch" runat="server" Height="21px" ToolTip="Enter Customer Name"
            Width="186px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnSearch" runat="server" Font-Bold="True" ForeColor="#990033" Height="27px"
            OnClick="btnSearch_Click" Text="Search" Width="62px" />
        &nbsp;
        <asp:Button ID="btnCleargrid" runat="server" Font-Bold="True" ForeColor="#990033"
            Height="27px" OnClick="btnCleargrid_Click" Text="Clear" Width="62px" />
        &nbsp;
        <asp:Button ID="mesurehpl" runat="server" Font-Bold="True" ForeColor="#990033" Height="27px"
            OnClick="mesurehpl_Click" Text="Add New Measurement" Width="168px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            Font-Size="15px" OnPageIndexChanging="GridView1_PageIndexChanging" Width="824px"
            OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing1">
            <RowStyle BackColor="White" Font-Size="20px" Height="45px" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="CustId" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Customer Id" InsertVisible="False"
                    ReadOnly="True" SortExpression="CustId">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CustName" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Customer Name" SortExpression="CustName">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MobNo" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Mobile No" SortExpression="MobNo">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DressType" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Dress Type" SortExpression="DressType">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DressCount" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Dress Count" SortExpression="DressCount">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DressCost" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Dress Cost" SortExpression="DressCost">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="RemCost" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Remain Cost" SortExpression="RemCost">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CurrentDate" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Current Date" SortExpression="CurrentDate">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DiliveryDate" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black" HeaderText="Dilivery Date" SortExpression="DiliveryDate">
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/pencil.png" Height="28px" Width="28px" Text="Edit"
                            CommandName="Edit" runat="server"></asp:ImageButton>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/DeleteRed.png" Height="28px" Width="28px" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                            Text="Delete" CommandName="Delete" runat="server"></asp:ImageButton>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BorderColor="#CCFFFF" BorderWidth="2px" />
        </asp:GridView>
        <asp:Button ID="btnBackview" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#990033"
            Height="32px" OnClick="btnBack_Click" Text="Back" Width="70px" />
    </asp:Panel>
    <asp:Panel ID="ReportPanel" runat="server" Width="798px" Height="663px" CssClass="Reportdetails1">
        <asp:Panel ID="ReportFilters" runat="server">
            <table width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblReportFrom" runat="server" Text="From:" Font-Bold="True" 
                            Font-Size="15pt" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="txtReportFrom" runat="server" Height="22px" Width="165px"></asp:TextBox>&nbsp;
                        <asp:Button ID="btnReportCalFrom" runat="server" Font-Bold="True" Height="24px" Text="+"
                            ToolTip="Select Date" Width="22px" OnClick="btnReportCalFrom_Click" />
                        &nbsp;<asp:Calendar ID="calReportFrom" Visible="false" runat="server" OnSelectionChanged="calReportFrom_SelectionChanged">
                        </asp:Calendar>
                    </td>
                    <td>
                        <asp:Label ID="lblReportTo" runat="server" Text="To:" Font-Bold="True" 
                            Font-Size="15pt" ForeColor="Black"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReportTo" runat="server" Height="22px" Width="165px"></asp:TextBox>&nbsp;<asp:Button
                            ID="btnReportCalTo" runat="server" Font-Bold="True" Height="24px" Text="+" ToolTip="Select Date"
                            Width="22px" OnClick="btnReportCalTo_Click" />
                        &nbsp;
                        <asp:Calendar ID="calReportTo" runat="server" 
                            OnSelectionChanged="calReportTo_SelectionChanged" Visible="false">
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td colspan="2" align="center">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="ReportView" runat="server" Visible="false">
        
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetData" 
                TypeName="LadiesDetailsSetTableAdapters.LadiesDetailsTableAdapter">
            </asp:ObjectDataSource>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </asp:Panel>
        <asp:Button ID="btnPreview" runat="server" Text="<" Visible="false" />
        <asp:Button ID="btnNext" Text=">" OnClick="javaScript:setImage()" />
      
    </asp:Panel>
    <asp:Panel ID="BillPanel" runat="server" Width="700px" Height="100%" CssClass="Billdetails1">
        <table style="width: 100%;">
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="lblprintbill" runat="server" Font-Bold="True" Font-Size="12pt" Text="Enter Customer ID :"
                        ForeColor="Black"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtBill" runat="server" Height="27px" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBackprint" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="Black"
                        Height="32px" OnClick="btnBack_Click" Text="Back" Width="95px" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                  
                </td>
                <td class="style8">
                </td>
                <td class="style9">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblmobno" runat="server" Font-Bold="True" Font-Size="12pt" Text="Enter Mobile No :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="12pt" Text="Type Message :"
                        ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtmobnosms" runat="server" Height="27px" Width="200px"></asp:TextBox>
                    *<br />
                    <br />
                    <asp:TextBox ID="txtmsg" runat="server" Height="59px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    *<br />
                    <asp:Label ID="lblError" runat="server" Font-Size="11pt" ForeColor="Red"></asp:Label>
                    <br />
                </td>
                <td class="style6">
                    &nbsp;
                    <br />
                    <br />
                    <asp:Button ID="btnsend" runat="server" Height="32px" Text="Send" Width="94px" OnClick="btnsend_Click"
                        Font-Bold="True" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <asp:Panel ID="helppnl" runat="server" Width="798px" Height="100%" CssClass="MesurmentPanel2">
        <br />
        <table style="width: auto">
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt8.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail8.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt1.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail1.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt9.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail9.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt2.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail2.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt10.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail10.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt3.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail3.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt11.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail11.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt4.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail4.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt12.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail12.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt5.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail5.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt13.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail13.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt6.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail6.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt14.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail14.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="images/Ledies/LadiesShirt7.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail7.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/LadiesShirt15.png" height="260px" width="160px" border="2" />
                    <br />
                </td>
                <td class="style1">
                </td>
                <td align="center">
                    <img alt="" src="images/Ledies/Ladiesshirtdetail15.png" height="260px" width="260px"
                        border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <img alt="" src="images/Ledies/LadiesTrauser.png" height="260px" width="500px" border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <img alt="" src="images/Ledies/LadiesTrauser1.png" height="260px" width="500px" border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <img alt="" src="images/Ledies/LadiesTrauser2.png" height="260px" width="500px" border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <img alt="" src="images/Ledies/LadiesTrauser3.png" height="260px" width="500px" border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <img alt="" src="images/Ledies/LadiesTrauser4.png" height="260px" width="500px" border="2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="10" align="center">
                    <img alt="" src="images/Ledies/LadiesTrauser5.png" height="260px" width="500px" border="2" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Middle" runat="Server">
</asp:Content>
