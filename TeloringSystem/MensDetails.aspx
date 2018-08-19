<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="MensDetails.aspx.cs" Inherits="MensDetails" Title="Mens Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/LadiesDetails.css" rel="stylesheet" type="text/css" /> 
    <style type="text/css">
        .style1
        {
            width: 10px;
        }
        .style2
        {
            width: 110px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="menucontent" Runat="Server">
    <div class="menu">  
            <asp:Panel ID="Panel1" runat="server" Height="80px" ForeColor="BurlyWood"
            BackImageUrl="~/images/Green/green4.jpg">
            <table width="100%" Height="100%" style="padding: 5px; text-align: center;">
                <tr>
                    <td align="center">
                        <asp:LinkButton ID="viewhpl" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#00FFCC"
                            Font-Underline="False" OnClick="viewhpl_Click">View Details</asp:LinkButton>
                    </td>
                    <td>
                    </td>
                    <td>
                        <asp:LinkButton ID="billhpl" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="False"
                            ForeColor="#00FFCC" OnClick="billhpl_Click">Print 
                            Bill</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="help" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="False"
                            ForeColor="#00FFCC" onclick="help_Click">Help</asp:LinkButton>
                    </td>
                    </caption> </caption>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Header" Runat="Server">  
    <asp:Panel ID="Mainpnl" runat="server" Width="1150px" Height="100%" CssClass="MesurmentPanel2">
<br />
    <table style="width:auto">
        <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail.png" height="260px" width="260px" 
                    border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
        <tr>
           <td>
                <img alt="" src="images/Mens/MenShirt1.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail1.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser1.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail1.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
        <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt2.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail2.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser2.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail2.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt3.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail3.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser3.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail3.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt4.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail4.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser4.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail4.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt5.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail5.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser5.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail5.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt6.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail6.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser6.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail6.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt7.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail7.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauser7.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenTrauserdetail7.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt8.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail8.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenShirt9.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail9.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
         <tr>
            <td>
                <img alt="" src="images/Mens/MenShirt10.png" height="260px" width="160px" 
                    border="2" />
              <br />
            </td>
            <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail10.png" height="260px" 
                    width="260px" border="2"/>
               <br /> 
                </td>
                <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/MenShirt11.png" height="260px" width="160px" 
                    border="2"/>
                 <br /> 
                 </td>
                     <td class="style1"></td>
            <td align="center">
                <img alt="" src="images/Mens/Menshirtdetail11.png" height="260px" 
                    width="260px" border="2"/>
                 <br /> 
                 </td>
        </tr>
    </table>
</asp:Panel>  
    <asp:Panel ID="MesurmentPanel" runat="server" Width="1150px" Height="100%" CssClass="MesurmentPanel1">
    <br />
        <table class="center" style="width: 1113px">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="right" colspan="2">
                    &nbsp;</td>
                <td align="right" colspan="2">
                    &nbsp;</td>
                <%--<td align="center">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="11pt" 
                        onclick="LinkButton1_Click" ToolTip="Take look how to take measurement">Help</asp:LinkButton>
                </td>--%>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="center" colspan="6">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" 
                        Font-Overline="False" Font-Size="18pt" ForeColor="#990033" 
                        Text="Enter Men's Details"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                <asp:TextBox ID="hidCustId" runat="server" Font-Size="11pt" Visible="false"></asp:TextBox>
                    <asp:Label ID="lblcusName" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Customer Name :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblMob" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Mobile Number :" ForeColor="Black"></asp:Label>
                    <br />
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtcusName" runat="server" Font-Size="11pt" Width="214px" 
                        TabIndex="1"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtmobno" runat="server" Font-Size="11pt" Width="214px" 
                        TabIndex="1"></asp:TextBox>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="lblCDate" runat="server" Font-Bold="True" Font-Size="11pt" 
                            Text="Current Date : " ForeColor="Black"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDDate" runat="server" Font-Bold="True" Font-Size="11pt" 
                            Text="Delivery Date : " ForeColor="Black"></asp:Label>
                        <br />
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtCDate" runat="server" Width="189px" TabIndex="27"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnExpand" runat="server" Font-Bold="True" Height="20px" 
                            onclick="btnExpand_Click" Text="+" ToolTip="Select Date" Width="22px" 
                            TabIndex="32" />
                        <br />
                        <br />
                        <asp:TextBox ID="txtDDate" runat="server" Width="189px" TabIndex="28"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btnExpand1" runat="server" Font-Bold="True" Height="20px" 
                            onclick="btnExpand1_Click" Text="+" ToolTip="Select Date" TabIndex="33" />
                        <br />
                    </td>
                    <td class="style7">
                        <asp:Calendar ID="Calendar1" runat="server" Height="121px" 
                            onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="112px">
                        </asp:Calendar>
                        <br />
                        <asp:Calendar ID="Calendar2" runat="server" 
                            onselectionchanged="Calendar2_SelectionChanged" Visible="False" Width="120px">
                        </asp:Calendar>
                    </td>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="lblPantDetails" runat="server" Font-Bold="True" Font-Size="13pt" 
                        Font-Underline="True" ForeColor="#3366FF" Text="Enter Pant Details"></asp:Label>
                    </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblDressT" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Dress Type :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblPaid" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Paid Rs. :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblMob0" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Remaning :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblDressCount" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="No Of Dress :" ForeColor="Black"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtDresstype" runat="server" Font-Size="11pt" TabIndex="2" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtTotal" runat="server" Font-Size="11pt" TabIndex="3" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPaid" runat="server" Font-Size="11pt" TabIndex="4" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtDressCount" runat="server" Font-Size="11pt" TabIndex="5" 
                        Width="214px"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="lblWaist" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Waist :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblHips" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Hips : " ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblCrotch" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Crotch :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblThighW" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Thigh Width :" ForeColor="Black"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtWaist" runat="server" Font-Size="11pt" TabIndex="17" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtHips" runat="server" Font-Size="11pt" TabIndex="18" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtCrotch" runat="server" Font-Size="11pt" TabIndex="19" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtThighW" runat="server" Font-Size="11pt" TabIndex="20" 
                        Width="214px"></asp:TextBox>
                    <br />
                </td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="lblShirtDetails" runat="server" Font-Bold="True" 
                        Font-Size="13pt" Font-Underline="True" ForeColor="#3366FF" 
                        Text="Enter Shirt Details"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6" align="center">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <br />
                    <asp:Label ID="lblNeck" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Neck :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblWaistL" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Chest :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblSWaist" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Waist :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblSHip" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Hip (Shirt) :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblSholder" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Shoulder :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblsheeveL" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Sleeve Length :" ForeColor="Black"></asp:Label>
                </td>
                <td class="style4">
                    <br />
                    <asp:TextBox ID="txtNeck" runat="server" Font-Bold="False" Font-Size="11pt" 
                        TabIndex="6" Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtChest" runat="server" Font-Size="11pt" TabIndex="7" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSWaist" runat="server" Font-Size="11pt" TabIndex="8" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSHip" runat="server" Font-Size="11pt" TabIndex="9" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtShoulder" runat="server" Font-Size="11pt" TabIndex="10" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSleeveL" runat="server" Font-Size="11pt" TabIndex="11" 
                        Width="214px"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    <br />
                    <asp:Label ID="lblPantL" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Pant Length :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblInseam" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Inseam : " ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblKnee" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Knee :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblHalfH" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Half Hem/Bottom :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblBackR" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Back Rise:" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblFrontR" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Front Rise:" ForeColor="Black"></asp:Label>
                </td>
                <td class="style6">
                    <br />
                    <asp:TextBox ID="txtPantL" runat="server" Font-Size="11pt" TabIndex="21" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtInseam" runat="server" Font-Size="11pt" TabIndex="22" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtKnee" runat="server" Font-Size="11pt" TabIndex="23" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtBottom" runat="server" Font-Size="11pt" TabIndex="24" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtBackR" runat="server" Font-Size="11pt" TabIndex="25" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtFrontR" runat="server" Font-Size="11pt" TabIndex="26" 
                        Width="214px"></asp:TextBox>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblElbow" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Elbow  Width: " ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblShortS" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Short Sleave :" ForeColor="Black"></asp:Label>
                </td>
                <td class="style4" align="char">
                    <asp:TextBox ID="txtElbow" runat="server" Font-Size="11pt" Width="214px" 
                        TabIndex="12"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtShortS" runat="server" Font-Size="11pt" TabIndex="13" 
                        Width="214px"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td colspan="2" align="center">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Button ID="btnBack" runat="server" Font-Bold="True" Font-Size="11pt" 
                        ForeColor="#990033" Height="32px" onclick="btnBack_Click" TabIndex="30" 
                        Text="Back" Width="70px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnClear" runat="server" Font-Bold="True" 
                        Font-Size="11pt" ForeColor="#990033" Height="32px" onclick="btnClear_Click" 
                        TabIndex="31" Text="Clear" Width="70px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSave" runat="server" Font-Bold="True" Font-Size="11pt" 
                        ForeColor="#990033" Height="33px" onclick="btnSave_Click" Text="Save" 
                        Width="70px" TabIndex="29" />
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" >
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblWrist" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Wrist/Cuff :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblWrist0" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Bicep :" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblShirtL" runat="server" Font-Bold="True" Font-Size="11pt" 
                        Text="Shirt Length :" ForeColor="Black"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtWrist" runat="server" Font-Size="11pt" TabIndex="14" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtBicep" runat="server" Font-Size="11pt" TabIndex="15" 
                        Width="214px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtShirtL" runat="server" Font-Size="11pt" TabIndex="16" 
                        Width="214px"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6" >
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    
    <asp:Panel ID="ViewPanel" runat="server" Width="798px" Height="100%" CssClass="ViewDetails1" style="margin-top:10px">
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
            CellPadding="5" Font-Size="15px" ForeColor="Black" OnPageIndexChanging="GridView1_PageIndexChanging"
            Width="824px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing1">
            <RowStyle BackColor="White" Font-Bold="false" Font-Size="20px" Height="45px" />
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
                        <asp:ImageButton ID="ImageButton1" ImageUrl="~/images/pencil.png" Height="28px" Width="28px" Text="Edit"
                            CommandName="Edit" runat="server"></asp:ImageButton>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="" HeaderStyle-BackColor="#7DFBA6" HeaderStyle-Font-Size="18px"
                    HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" ImageUrl="~/images/DeleteRed.png" Height="28px" Width="28px" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                            Text="Delete" CommandName="Delete" runat="server"></asp:ImageButton>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#7DFBA6" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center"
                        VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#00FFCC" Font-Bold="True" ForeColor="Black" />
            <PagerStyle BackColor="#7DFBA6" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#00FFCC" Font-Bold="True" ForeColor="Black" />
            <HeaderStyle BackColor="#00FFCC" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Button ID="btnBackview" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#990033"
            Height="32px" OnClick="btnBack_Click" Text="Back" Width="70px" />
    </asp:Panel>
    
    <asp:Panel ID="ReportPanel" runat="server" Width="798px" Height="663px" CssClass="Reportdetails1">
    
    </asp:Panel>
    <asp:Panel ID="BillPanel" runat="server" Width="1098px" Height="363px">
    <br />
        <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="15pt">Bill</asp:Label>
    </asp:Panel>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="Middle" Runat="Server">
</asp:Content>
