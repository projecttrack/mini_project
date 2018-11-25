<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Login.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="WebApplication1.Common.Login_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 44px;
        }
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <h2>
    Login</h2>
    
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
   
    
    <table class="style1">
        <tr>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td>
                <asp:TextBox ID="txt_username" runat="server"  Width="137px" 
                    ontextchanged="txt_username_TextChanged" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td><
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style2" style="margin-left: 80px">
                <asp:TextBox ID="txt_password" runat="server" Width="141px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>

            <td>
                &nbsp;</td>
            <td style="margin-left: 80px">
                <asp:Button ID="btn_login" runat="server" onclick="btn_login_Click" 
                    Text="Login" Width="124px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 80px">
                Not a Member?</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 80px">
                <asp:Button ID="btn_register" runat="server" onclick="btn_register_Click" 
                    Text="Register" Width="123px" />
            </td>
        </tr>
    </table>
</center>
</asp:Content>
