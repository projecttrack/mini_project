<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add_analyst.aspx.cs" Inherits="WebApplication1.Admin.Add_analyst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><br />
<h2>Add Project Manager</h2>
<br />
    <table class="style1">
        <tr>
            <td>
                Project Manager Name</td>
            <td>
                <asp:TextBox ID="txt_analystname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txt_analystname" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="an"></asp:RequiredFieldValidator>
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
                Password</td>
            <td>
                <asp:TextBox ID="txt_analystpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txt_analystpassword" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="an"></asp:RequiredFieldValidator>
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
                Confirm Password</td>
            <td>
                <asp:TextBox ID="txt_analyst_cpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txt_analyst_cpassword" Display="Dynamic" 
                    ErrorMessage="*" ForeColor="Red" ValidationGroup="an"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToCompare="txt_analystpassword" 
                    ControlToValidate="txt_analyst_cpassword" Display="Dynamic" ErrorMessage="!" 
                    ForeColor="Red" ValidationGroup="an"></asp:CompareValidator>
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
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_analyst_submit" runat="server" Text="Submit" Width="100px" 
                    onclick="btn_submit_an_Click" ValidationGroup="an" />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>
