<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="Analyst_request.aspx.cs" Inherits="WebApplication1.Analyst.Analyst_request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

<h2>
Analyst Request</h2>
<br />
    <asp:GridView ID="grv_req_team" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="tlreqid" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="modulename" HeaderText="Module Name" />
            <asp:BoundField DataField="teamname" HeaderText="Team Name" />
            <asp:BoundField DataField="daysneeded" HeaderText="Days Needed" />
            <asp:BoundField DataField="reason" HeaderText="Reason" />
            <asp:BoundField DataField="enddate" HeaderText="End Date" />
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
  <center>   <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4></center>
    <br />
    
    
</center>
 <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" Visible="False">
      
<h2>&nbsp;</h2><br />
    
      </asp:Panel>
       </div>
      <div class="sidebarnew">
       <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Request</h2>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Project Name</td>
            <td>
                <asp:DropDownList ID="ddl_prj_name" runat="server">
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
                Days Needed</td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txt_days" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                End Date</td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="ce_txt_From" runat="server" TargetControlID="txt_enddate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Reason</td>
            <td style="margin-left: 240px">
                <asp:TextBox ID="txt_reason" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 240px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 240px">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="93px" 
                    onclick="btn_submit_Click1" />
            </td>
        </tr>
    </table>
      </div>
      </div>
      <div class="clr"></div>
</asp:Content>
