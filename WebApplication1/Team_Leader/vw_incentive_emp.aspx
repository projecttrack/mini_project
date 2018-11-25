<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="vw_incentive_emp.aspx.cs" Inherits="WebApplication1.Team_Leader.vw_incentive_emp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br />
<center><h2>View Incentive</h2>

    <asp:GridView ID="grv_incentive" runat="server" AutoGenerateColumns="False">
    <Columns>
    <asp:BoundField DataField="Ename" HeaderText="Employee Name" />
        
        <asp:BoundField DataField="total" HeaderText="Total Incentive" />
        
    
    </Columns>
    </asp:GridView>

</asp:Content>
