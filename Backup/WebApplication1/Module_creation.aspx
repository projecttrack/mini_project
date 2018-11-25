<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="Module_creation.aspx.cs" Inherits="WebApplication1.Module_creation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><br />
<br />
    <table class="style1">
        <tr>
            <td>
                Project Name</td>
            <td>
                <asp:TextBox ID="txt_prjname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Module Name</td>
            <td>
                <asp:TextBox ID="txt_modname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Description</td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                Additional Info</td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txt_info" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="102px" />
            </td>
        </tr>
    </table>
</center>
</asp:Content>
