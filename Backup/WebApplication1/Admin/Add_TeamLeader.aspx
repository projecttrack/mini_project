<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add_TeamLeader.aspx.cs" Inherits="WebApplication1.Admin.Add_TeamLeader" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<br />
<h2>Add Team Leader</h2>
<table class="style1">
        <tr>
            <td>
                Leader Name</td>
            <td>
                <asp:TextBox ID="txt_leadername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_leadername" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="ldr"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="txt_leaderpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_leaderpassword" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="ldr"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="txt_leaderconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_leaderconfirmpassword" Display="Dynamic" 
                    ErrorMessage="*" ForeColor="Red" ValidationGroup="ldr"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="txt_leaderpassword" 
                    ControlToValidate="txt_leaderconfirmpassword" Display="Dynamic" 
                    ErrorMessage="!" ForeColor="Red" ValidationGroup="ldr"></asp:CompareValidator>
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
                <asp:Button ID="btn_tlsubmit" runat="server" Text="Submit" Width="100px" 
                    onclick="btn_submit_tl_Click" ValidationGroup="ldr" />
            </td>
        </tr>
    </table></center>

</asp:Content>
