<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Header" Runat="Server">
    <br />
<table style="width: 100%; height: 237px;">
        <tr>
            <td style="width: 98px; height: 302px;">
                </td>
            <td style="width: 205px; height: 302px;">
                <asp:Label ID="lblnew" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtname" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TabIndex="4"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="Email"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
                    ID="txtemail" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TabIndex="5"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblphone" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="Phone No."></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtphnno" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TabIndex="6"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblnewpass" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpass" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TextMode="Password" TabIndex="8"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblconpass" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="Confirm Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcopass" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TextMode="Password" TabIndex="9"></asp:TextBox>
                </td>
            <td style="width: 6px; height: 302px;">
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |<br />
                |</td>
            <td style="width: 94px; height: 302px;">
                <asp:Label ID="lblUname" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="User Name"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="lblpass" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="#990033" Text="Password"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td style="width: 221px; height: 302px;">
                <asp:TextBox ID="username" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TabIndex="1"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:TextBox ID="password" runat="server" Font-Size="15pt" ForeColor="Black" 
                    TextMode="Password" TabIndex="2"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Size="17pt" 
                    ForeColor="#0033CC" Text="Login" Width="140px" BorderColor="#B5B5B5" 
                    Font-Names="Cambria" onclick="Button1_Click" TabIndex="3" />
            </td>
        </tr>
        <tr>
            <td style="width: 98px">
                &nbsp;</td>
            <td style="width: 205px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BorderColor="#B5B5B5" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="17pt" ForeColor="#0033CC" 
                    Height="33px" onclick="btncancel_Click" Text="Cancel" Width="100px" 
                    TabIndex="11"/>
                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnreg" runat="server" 
                    BorderColor="#B5B5B5" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="17pt" ForeColor="#0033CC" Height="33px" 
                    Text="Register" Width="113px" onclick="btnreg_Click" TabIndex="10" />
            </td>
            <td style="width: 6px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 221px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 98px">
                &nbsp;</td>
            <td style="width: 205px">
                &nbsp;</td>
            <td style="width: 6px">
                &nbsp;</td>
        </tr>
    </table>
 
 <script type="text/javascript">function noBack(){window.history.forward(0);};noBack();window.onload=noBack;window.onunload=function(){void(0)} window.onload = window.history.forward(0);  </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Middle" Runat="Server">
</asp:Content>




