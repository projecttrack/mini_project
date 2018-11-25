<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="admin_client_view.aspx.cs" Inherits="WebApplication1.admin_client_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
    <asp:GridView ID="grv_Request" runat="server" AutoGenerateColumns="False" 
        Height="114px" Width="448px" onrowdeleting="GridView1_RowDeleting" 
    DataKeyNames="clreqid" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Firstname" DataField="Fname" />
            <asp:BoundField HeaderText="Lastname" DataField="Lname" />
            <asp:BoundField HeaderText="Mobile" DataField="Mobile" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField DataField="proname" HeaderText="Project Name" />
            <asp:CommandField DeleteText="View" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView> <h4><asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4></center>
</asp:Content>
