<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="Tl_request_view.aspx.cs" Inherits="WebApplication1.Team_Leader.Tl_request_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h2>
Request View</h2>
<br />
    <asp:GridView ID="grv_request_view" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="emp_reqid" onrowdeleting="grv_request_view_RowDeleting" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="modulename" HeaderText="Module Name" />
            <asp:BoundField DataField="divname" HeaderText="Division Name" />
            <asp:BoundField DataField="Ename" HeaderText="Employee Name" />
            <asp:BoundField DataField="daysneeded" HeaderText="Days Needed" />
            <asp:BoundField DataField="eenddate" HeaderText="End date" />
            <asp:BoundField DataField="reason" HeaderText="Reason" />
            <asp:CommandField DeleteText="Edit" ShowDeleteButton="True" />
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
    <br />
     <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" Visible="False">
      <center>
    <h2>&nbsp;</h2><br />
          <br />
          <br />
          <br />
                </center>
      </asp:Panel>
       </div>
      <div class="sidebarnew">
      <center>
       <h2>Request Response</h2>
<br />



    <table class="style1">
        <tr>
            <td>
                Days Needed</td>
            <td>
                <asp:TextBox ID="txt_days" runat="server"></asp:TextBox>
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
                End Date</td>
            <td>
                <asp:TextBox ID="txt_edate" runat="server"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="ce_txt_From" runat="server" TargetControlID="txt_edate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="92px" 
                    onclick="btn_submit_Click" />
            </td>
        </tr>
    </table>

                
                </center>
      </div>
      </div>
      <div class="clr"></div>


</center>
</asp:Content>
