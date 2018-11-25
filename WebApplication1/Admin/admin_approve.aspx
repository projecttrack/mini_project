<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="admin_approve.aspx.cs" Inherits="WebApplication1.admin_approve" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            width: 356px;
        }
        .style4
        {
            height: 26px;
            width: 356px;
        }
        .style5
        {
        width: 200px;
    }
        .style6
        {
            height: 26px;
            width: 200px;
        }
        .style7
        {
            width: 477px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <br />
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Image ID="Image1" runat="server" src="../images/page2_img4.jpg" Height="78px" 
                    Width="107px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" style="color: #000000; font-size: medium;">
                ADMINSTRATOR</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style6">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            
            <td  colspan ="3">
            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Height="138px" onrowdeleting="GridView1_RowDeleting" DataKeyNames="clreqid" 
                    onrowediting="GridView1_RowEditing" Width ="500px" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                        <asp:BoundField HeaderText="Product Name" DataField="proname" />
                        <asp:BoundField HeaderText="Description" DataField="prodescription" />
                        <asp:BoundField DataField="frontend" HeaderText="Front End" />
                        <asp:BoundField DataField="backend" HeaderText="Back End" />
                        <asp:BoundField DataField="senddate" HeaderText="Expected Completion" />
                        <asp:CommandField DeleteText="Approve" ShowDeleteButton="True" />
                        <asp:CommandField EditText="Cancel" ShowEditButton="True" />
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
               
             <center> <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4></center> 
               
            </td>
           
        </tr>
       
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     </center>
   
    
            <table class="style1">
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:Label ID="Label1" runat="server" Text="Select Project Manager"></asp:Label>
                    </td>
                    <td>
             &nbsp;   <asp:DropDownList ID="ddl_analyst" runat="server">
                </asp:DropDownList>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>
                    </td>
                    <td>
              &nbsp;  <asp:TextBox ID="txt_startdate" runat="server" onBlur="CompareDates();"></asp:TextBox>
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
                            alert("From date cannot be greater than To date");
                            return false;
                        }
                    }
</script>

                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="style7">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>
                    </td>
                    <td>
               &nbsp; <asp:TextBox ID="txt_enddate" onBlur="CompareDates();" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_enddate"  Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                <asp:Button ID="btn_approve" runat="server" onclick="btn_approve_Click" 
                    Text="Approve" Width="137px" />
                    </td>
                </tr>
            </table>
          
      

</asp:Content>
