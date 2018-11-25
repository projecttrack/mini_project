<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Team.aspx.cs" Inherits="WebApplication1.Admin.Add_Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br />
  <center>
<h2>Add Team</h2>
<br />
    <table class="style1">
        <tr>
            <td>
                Team Name</td>
            <td>
                <asp:TextBox ID="txt_teamname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txt_teamname" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="team"></asp:RequiredFieldValidator>
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
                Leader</td>
            <td>
                <asp:DropDownList ID="ddl_leader" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="ddl_leader" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" InitialValue="0" ValidationGroup="team"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btn_create_team" runat="server" Text="Create" Width="75px" 
                    onclick="tn_create_Click" ValidationGroup="team" />
            </td>
        </tr>
    </table>
     </center>
</asp:Content>
