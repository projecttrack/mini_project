<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="View_Module_Staus.aspx.cs" Inherits="WebApplication1.Analyst.View_Module_Staus" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 296px;
        }
        .style2
        {
            height: 26px;
        }
    .style3
    {
        height: 30px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <asp:GridView ID="grv_vw_modulestatus" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="prjid" 
            onrowdeleting="grv_vw_modulestatus_RowDeleting" 
            onselectedindexchanging="grv_vw_modulestatus_SelectedIndexChanging" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="prj_name" HeaderText="Project Name" />
                <asp:BoundField DataField="modulename" HeaderText="Module Name" />
                <asp:BoundField DataField="expduration" HeaderText="Duration Needed" />
                <asp:BoundField DataField="percentage" HeaderText="Percent" />
                <asp:BoundField DataField="date" HeaderText="Date" />
                <asp:CommandField SelectText="Submit" ShowSelectButton="True" />
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
         <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h>
     <br />
    
    </center>


    <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" >
      
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Work Status</h2>
    <table class="style1">
        <tr>
            <td>
                Project&nbsp; Name</td>
            <td>
                <asp:DropDownList ID="ddl_prjname" runat="server">
                </asp:DropDownList>
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
                Percentage Completed</td>
            <td>
                <asp:TextBox ID="txt_cuepercent" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                Expecting Duration</td>
            <td>
                <asp:TextBox ID="txt_expduration" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style3">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="104px" 
                    onclick="btn_submit_Click" />
            </td>
        </tr>
    </table>
      </asp:Panel>
       </div>
      <div class="sidebarnew">
        <table style="border:1px solid black;font-family:Arial">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Select Chart Type</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddl_chart" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddl_chart_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;</td>
        </tr>
        </table>
    <asp:Chart ID="Chart_status" runat="server" Width="350px" Height="267px">
    <Titles>
    <asp:Title Text="Module Status"></asp:Title></Titles>
    <series>
        <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea Name="ChartArea1">
         <AxisX Title="Module Name"></AxisX>
            <AxisY Title="Percentage"></AxisY>
        </asp:ChartArea>
    </chartareas>
</asp:Chart>
    
    
    
      </div>
      </div>
      <div class="clr"></div>
</asp:Content>