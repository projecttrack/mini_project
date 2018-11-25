<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="Allot_Module.aspx.cs" Inherits="WebApplication1.Team_Leader.Allot_Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
    {
        height: 26px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <h2> Allot To Programmers</h2><br />
     <asp:GridView ID="grv_allot" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="moddivid" onrowdeleting="grv_allot_RowDeleting" 
              CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Division name" DataField="divname" />
                        <asp:BoundField HeaderText="Description" DataField="description" />
                        <asp:CommandField DeleteText="Allot" ShowDeleteButton="True" />
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
                 <h4> <asp:Label ID="lbl_msg1" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
                </center>
                <br />
                <br />
               
      <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel2" runat="server" Visible="true">
 
   <center >
    <table class="style1">
        
            <h2>
                Allot Members</h2>
            <tr>
                <td class="style2">
                    Division name</td>
                <td>
                    <asp:TextBox ID="txt_div_allot" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Employee Name</td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddl_empname" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddl_empname_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Already Assigned"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Start Date</td>
                <td>
                    <asp:TextBox ID="txt_startdate" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="ce_txt_From" runat="server" TargetControlID="txt_startdate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    End Date</td>
                <td class="style5">
                    <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_enddate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn_allot" runat="server" onclick="btn_allot_Click" 
                        Text="Submit" Width="112px" />
                </td>
            </tr>
       
    </table>
    </center>
          </asp:Panel>
       </div>
      <div class="sidebarnew">
      <center>
      <center>
    <h2>Allotted list</h2><br />
    <asp:GridView ID="grv_split" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="moddivid" CellPadding="4" ForeColor="#333333" 
              GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Division name" DataField="divname" />
                        <asp:BoundField HeaderText="Description" DataField="description" />
                        <asp:BoundField HeaderText="Employee Name" DataField="Ename" />
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
                </center>
                
                </center>
      </div>
      </div>
      <div class="clr"></div>
</asp:Content>
