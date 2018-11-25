<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="tl_submit.aspx.cs" Inherits="WebApplication1.Team_Leader.tl_submit" %>
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
        <br />
<br /><h2>Team Leader Submit</h2>
<br />
    <asp:GridView ID="grv_tlsubmit" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="modulename" HeaderText="Module Name" />
            <asp:BoundField DataField="divname" HeaderText="Division Name" />
            <asp:BoundField DataField="Ename" HeaderText="Employee Name" />
            <asp:TemplateField>
            <ItemTemplate>
                 <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("documents") %>' >Download File</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
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
    



</center>
 <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" Visible="False">
      <center>
    <h2>&nbsp;</h2>
          <br />
                </center>
      </asp:Panel>
       </div>
      <div class="sidebarnew">
      <center>
       <h2>Submit</h2>
                <br />
                <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Module Name</td>
            <td>
                <asp:DropDownList ID="ddl_module" runat="server">
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
                Documents</td>
            <td>
                <asp:FileUpload ID="fup_doc" runat="server" />
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
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="90px" 
                    onclick="btn_submit_Click" />
            </td>
        </tr>
    </table>
                                </center>
      </div>
      </div>
      <div class="clr"></div>
</asp:Content>
