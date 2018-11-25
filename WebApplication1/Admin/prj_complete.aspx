<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="prj_complete.aspx.cs" Inherits="WebApplication1.Admin.prj_complete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<br /><h2>
         Completed Projects


</h2>

<br />
    <asp:GridView ID="grv_admn_req_vw" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="prjid" onrowdeleting="grv_admn_req_vw_RowDeleting" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="prj_name" HeaderText="Project Name" />
            <asp:BoundField DataField="email" HeaderText="Analyst Name" />
            <asp:BoundField DataField="createdon" HeaderText="Submited Date" />
            <asp:CommandField DeleteText="Verify" ShowDeleteButton="True" />
            <asp:TemplateField>
            <ItemTemplate>
                 <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("documents") %>'>Download File</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
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
    </asp:GridView>
     <br />

</asp:Content>
