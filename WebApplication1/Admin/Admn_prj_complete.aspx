<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Admn_prj_complete.aspx.cs" Inherits="WebApplication1.Admin.Admn_prj_complete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="content">
 
    
    
        
  
    <center>
    <asp:GridView ID="grv_vw_modulestatus" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="prj_name" HeaderText="Project Name" />
            <asp:BoundField DataField="exp_completion" HeaderText="Duration Needed" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="per_completed" HeaderText="Percent Completed" />
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
    
        
  
    
      </div>
       <div class="content">
        <div class="content_bg">
        <div class="mainbarnew">
        <center><h2>&nbsp;</h2></center>
        </div>
        <div class="sidebarnew">
        

            <asp:Chart ID="Chart1" runat="server">
                <Series>
                    <asp:Series ChartType="Pie" Name="Series1" ChartArea="ChartArea1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                     <AxisX Title="Project Name"></AxisX>
            <AxisY Title="Percentage"></AxisY>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        

        </div>
        </div>
       </div>
       
</asp:Content>
