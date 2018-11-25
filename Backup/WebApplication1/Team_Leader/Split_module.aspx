<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="Split_module.aspx.cs" Inherits="WebApplication1.Team_Leader.Split_module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
    {
        width: 222px;
    }
        .style4
    {
        width: 222px;
        height: 26px;
    }
    .style5
    {
        height: 26px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">








    


     <div class="content_bg">
      <div class="mainbarnew">
     <center>
       <h2>&nbsp;</h2>
                <asp:GridView ID="grv_module" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="moduleid" onrowdeleting="grv_module_RowDeleting" 
              CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Module name" DataField="modulename" />
                        <asp:BoundField HeaderText="Description" DataField="description" />
                        <asp:BoundField HeaderText="Information" DataField="info" />
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
       </div>
      <div class="sidebarnew">
      <center>
       <h2>Split Module</h2>
    <table class="style1">
        <tr>
            <td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Division Name</td>
             <td>
                 <asp:TextBox ID="txt_divname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
             <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
                Description</td>
             <td>
                 <asp:TextBox ID="txt_desc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4"></td>
             <td class="style5"></td>
        </tr>
        <tr>
            <td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Documents</td>
             <td class="style5">
                 <asp:FileUpload ID="fup_doc" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
             <td>&nbsp;</td>
        </tr>
        <tr >
            <td class="style3" colspan="2"><asp:Button ID="btn_submit" runat="server" Text="Submit" Width="123px" 
                     onclick="btn_submit_Click" />
            &nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" Text="Allot" Width="79px" 
                    onclick="Button1_Click" /></td>
             
        </tr>
    </table>
                <br />
                
                </center>
      </div>
      </div>
      <div class="clr"></div>

     
</asp:Content>
