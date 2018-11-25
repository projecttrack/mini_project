<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Programmer.aspx.cs" Inherits="WebApplication1.Admin.Add_Programmer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br />
  <center>
       <h2>Add Programmer</h2>
<table class="style1">
        <tr>
            <td class="style1">
                Employee Name</td>
            <td class="style1">
                <asp:TextBox ID="txt_empname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_empname" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="txt_emppassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_emppassword" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="txt_cemppassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_cemppassword" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_emppassword" ControlToValidate="txt_cemppassword" 
                    Display="Dynamic" ErrorMessage="!" ForeColor="Red" ValidationGroup="emp"></asp:CompareValidator>
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
                <asp:Button ID="btn_empsubmit" runat="server" Text="Submit" Width="100px" 
                    onclick="btn_submit_Click" ValidationGroup="emp" />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>
