<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Customer_Home.Master" AutoEventWireup="true" CodeBehind="Customer_Home.aspx.cs" Inherits="WebApplication1.Customer.Customer_Home" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<h2>Customer Home</h2>
        <br />
<br />
<h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
<br />
    <asp:GridView ID="grv_cust_home" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="grv_cust_home_RowDeleting" DataKeyNames="clreqid" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="proname" HeaderText="Project Name" />
            <asp:BoundField DataField="frontend" HeaderText="Front End" />
            <asp:BoundField DataField="backend" HeaderText="Back End" />
            <asp:BoundField DataField="duration" HeaderText="Duration" Visible="False" />
            <asp:BoundField DataField="senddate" HeaderText="Send Date" />
            <asp:BoundField DataField="exp_completion" HeaderText="Expecting Completion" />
            <asp:CommandField DeleteText="Chat" ShowDeleteButton="True" Visible="False" />
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
    
     <h4>   <asp:Label ID="lbl_rej" runat="server" ForeColor="Aqua" Visible="False" ></asp:Label></h4>
    <br />
        <asp:GridView ID="grv_rejectlist" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
         <Columns>
            <asp:BoundField DataField="proname" HeaderText="Project Name" />
            <asp:BoundField DataField="frontend" HeaderText="Front End" />
            <asp:BoundField DataField="backend" HeaderText="Back End" />
            <asp:BoundField DataField="duration" HeaderText="Duration" />
            <asp:BoundField DataField="senddate" HeaderText="Send Date" />
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
</center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
   
  
     
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <asp:Chart ID="Chart1" runat="server">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
               
            
            <AxisX Title="Project Name"></AxisX>
            <AxisY Title="Percentage"></AxisY>
            
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    <table class="style1">
        <tr>
            <td colspan="2">
             <center>  </center> 
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>