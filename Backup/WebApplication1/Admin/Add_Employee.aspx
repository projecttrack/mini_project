<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Employee.aspx.cs" Inherits="WebApplication1.Admin.Add_Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.style1
{
    width:420px;
    border:solid 1 px;
    border-color:ActiveBorder
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<br />

        <asp:LinkButton ID="lbl_analyst" runat="server" onclick="lbl_analyst_Click" Height="30px" Font-Size="Medium">Add Analyst</asp:LinkButton>&nbsp;&nbsp;&nbsp;
        <asp:LinkButton
            ID="lbl_tleader" runat="server" onclick="lbl_tleader_Click" Height="30px" Font-Size="Medium">Add Team Leader</asp:LinkButton>&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lbl_team"
                runat="server" onclick="lbl_team_Click" Height="30px" Font-Size="Medium">Add Team</asp:LinkButton>&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbl_progrmr" runat="server" 
            onclick="lbl_progrmr_Click" Height="30px" Font-Size="Medium">Add Programmer</asp:LinkButton>
  




</center>
</asp:Content>
