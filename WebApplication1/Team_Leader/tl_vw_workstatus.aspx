<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="tl_vw_workstatus.aspx.cs" Inherits="WebApplication1.Team_Leader.tl_rq_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h2> Work Status</h2>
<br />
    <asp:GridView ID="grv_view_status" runat="server" AutoGenerateColumns="False" 
            onselectedindexchanged="grv_view_status_SelectedIndexChanged" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
    <asp:BoundField DataField="modulename" HeaderText="Module Name" />
        <asp:BoundField DataField="divname" HeaderText="Division Name" />
        <asp:BoundField DataField="percentage" HeaderText="Percent Completed" />
        <asp:BoundField DataField="expduration" HeaderText="Expecting Duration" />
        <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:D}"/>
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
    </asp:GridView>            <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
    <br />
    
</center>


 <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" Visible="true">
      <center>
    <h2>Work Status</h2><br />
    <table class="style1">
        <tr>
            <td>
                Module Name</td>
            <td>
                <asp:DropDownList ID="ddl_modname" runat="server">
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="104px" 
                    onclick="btn_submit_Click" />
            </td>
        </tr>
    </table>
                </center>
      </asp:Panel>
       </div>
      <div class="sidebarnew">
<center>
       <h2>Chart</h2>
                <br />
          <asp:Chart ID="Chart1" runat="server">
              <Series>
                  <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1">
                  </asp:Series>
              </Series>
              <ChartAreas>
                  <asp:ChartArea Name="ChartArea1">
               <AxisX Title="Division Name"></AxisX>
            <AxisY Title="Percentage"></AxisY>
                  </asp:ChartArea>
              </ChartAreas>
          </asp:Chart>
                </center>
      </div>
      </div>
      <div class="clr"></div>
</asp:Content>
