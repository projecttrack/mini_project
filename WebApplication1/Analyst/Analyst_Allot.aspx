<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="Analyst_Allot.aspx.cs" Inherits="WebApplication1.Analyst.Analyst_Allot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
          <asp:GridView ID="grv_assign" runat="server" AutoGenerateColumns="False" 
              CellPadding="4" ForeColor="#333333" GridLines="None">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:BoundField DataField="modulename" HeaderText="Module Name" />
                  <asp:BoundField DataField="teamname" HeaderText="Team Name" />
                  <asp:BoundField DataField="startdate" HeaderText="Start Date" />
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
           <h4> <asp:Label ID="lbl_msg2" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
           <br />

           <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Allot To Team</h2>
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp; Team name</td>
            <td>
                <asp:DropDownList ID="ddl_team" runat="server">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Module Name</td>
            <td>
                <asp:DropDownList ID="ddl_module" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date</td>
            <td>
                <asp:TextBox ID="txt_startdate" runat="server"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="ce_txt_From" runat="server" TargetControlID="txt_startdate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
            </td>
        </tr>
         <script type="text/javascript">
             function CompareDates() {
                 var str1 = document.getElementById('<%= txt_startdate.ClientID %>').value;
                 var str2 = document.getElementById('<%= txt_enddate.ClientID %>').value;
                 var dt1 = parseInt(str1.substring(0, 2), 10);
                 var mon1 = parseInt(str1.substring(3, 5), 10);
                 var yr1 = parseInt(str1.substring(6, 10), 10);
                 var dt2 = parseInt(str2.substring(0, 2), 10);
                 var mon2 = parseInt(str2.substring(3, 5), 10);
                 var yr2 = parseInt(str2.substring(6, 10), 10);
                 var date1 = new Date(yr1, mon1, dt1);
                 var date2 = new Date(yr2, mon2, dt2);
                 if (date2 < date1) {
                     alert("To date cannot be greater than from date");
                     return false;
                 }
             }
</script>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Date</td>
            <td>
                <asp:TextBox ID="txt_enddate" runat="server" onBlur="CompareDates();"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_enddate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="margin-left: 120px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 120px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 120px">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="147px" 
                    onclick="btn_submit_Click" />
            </td>
        </tr>
    </table>
     </center>
</asp:Content>
