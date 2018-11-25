<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="Analyst_submit.aspx.cs" Inherits="WebApplication1.Analyst.Analyst_submit" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

<br />
<h2>Analyst Submit</h2>
<br />
    <asp:GridView ID="grv_analyst" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="tlcomplid" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="modulename" HeaderText="Module Name" />
            <asp:BoundField DataField="teamname" HeaderText="Team Name" />
            <asp:BoundField DataField="remarks" HeaderText="Remarks" />
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
    <center> <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4></center>
<br />


 <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" Visible="False">
      
<h2>&nbsp;</h2><br />
    
      </asp:Panel>
       </div>
      <div class="sidebarnew">
       <h2>Submit</h2>
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
                <asp:DropDownList ID="ddl_prjname" runat="server">
                </asp:DropDownList>
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
                Remarks</td>
            <td>
                <asp:TextBox ID="txt_remarks" runat="server"></asp:TextBox>
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
                <asp:FileUpload ID="fup_document" runat="server" />
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
                <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                    Text="Submit" Width="98px" />
            </td>
        </tr>
    </table>
      </div>
      </div>
      <div class="clr"></div>


    

</center>
</asp:Content>
