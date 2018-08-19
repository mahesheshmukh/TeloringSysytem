<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserType.aspx.cs" Inherits="UserType" Title="User Type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Header" Runat="Server">
    
    <div style="text-align:center; margin-top:30px;" class="wrapper" >
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="true" Font-Size="18px" Font-Underline="true" ForeColor="Blue" NavigateUrl="~/LadiesDetails.aspx">Goto Ladies Section</asp:HyperLink></td>
            <td>
                 <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="true" Font-Size="18px" Font-Underline="true" ForeColor="Blue" NavigateUrl="~/MensDetails.aspx">Goto Men's Section</asp:HyperLink></td>
        </tr>
        <tr>
        <td>
            <asp:HyperLink runat="server" NavigateUrl="~/LadiesDetails.aspx">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/LadisSection.jpg" 
                    Height="500px" Width="420px" BorderColor="Aqua" BorderWidth="2px"/>
                </asp:HyperLink>    
                    </td>
            <td> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MensDetails.aspx">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/MensSection.jpg" 
                    Height="500px" Width="420px" BorderColor="Aqua" BorderWidth="2px"/>
                  </asp:HyperLink>   
            
                    </td>
        </tr>
        </table>
     </div>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Middle" Runat="Server">
</asp:Content>