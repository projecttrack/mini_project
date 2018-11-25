<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Employee.Master" AutoEventWireup="true" CodeBehind="vw_incentive.aspx.cs" Inherits="WebApplication1.Employee.vw_incentive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<center><h2>View Incentive</h2>

    <asp:GridView ID="grv_incentive" runat="server" AutoGenerateColumns="False">
    <Columns>
    
        <asp:BoundField DataField="modulename" HeaderText="Module Name" />
        <asp:BoundField DataField="divname" HeaderText="Division Name" />
        <asp:BoundField DataField="incentive" HeaderText="Incentive" />
        <asp:BoundField DataField="createdon" HeaderText="Date" />
    
    </Columns>
    </asp:GridView>

</center>
</asp:Content>
