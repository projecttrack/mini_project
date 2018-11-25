<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="analyst_home.aspx.cs" Inherits="WebApplication1.analyst_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 384px;
        }
        .style3
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Image ID="Image1" runat="server" src="../images/img1.jpg" Height="84px" 
                    Width="93px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" style="color: #000000; font-size: medium">
               PROJECT MANAGER</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
           
            <td  colspan="3">
            <center>
                <asp:GridView ID="grv_analyst" runat="server" AutoGenerateColumns="False" 
                    Height="121px" DataKeyNames="clreqid" 
                    onselectedindexchanging="grv_analyst_SelectedIndexChanging" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Project Name" DataField="proname" />
                        <asp:BoundField HeaderText="Description" DataField="prodescription" />
                        <asp:BoundField HeaderText="Front End" DataField="frontend" />
                        <asp:BoundField HeaderText="Back End" DataField="backend" />
                        <asp:BoundField HeaderText="Send Date" DataField="senddate" />
                        <asp:BoundField HeaderText="Duration" DataField="duration" />
                        <asp:CommandField SelectText="Split" ShowSelectButton="True" />
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
                 <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
                </center>
            </td>
           
        </tr>
       
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     
     
  
</asp:Content>
