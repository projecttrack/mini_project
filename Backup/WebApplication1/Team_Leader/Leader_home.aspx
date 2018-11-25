<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="Leader_home.aspx.cs" Inherits="WebApplication1.Team_Leader.Leader_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   
    
    <div class="content_bg">
      <div class="mainbarnew">
      <asp:Panel ID="Panel1" runat="server" Visible="true">
      <center>
    <h2>Allot To Team</h2><br />
          <asp:GridView ID="grv_allot" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="modid" onrowdeleting="grv_allot_RowDeleting1">
              <Columns>
                  <asp:BoundField DataField="prj_name" HeaderText="Project Name" />
                  <asp:BoundField DataField="modulename" HeaderText="modulename" />
                  <asp:BoundField DataField="startdate" HeaderText="startdate" />
                  <asp:BoundField DataField="duration" HeaderText="duration" />
                  <asp:BoundField DataField="enddate" HeaderText="enddate" />
                  <asp:CommandField DeleteText="Allot" ShowDeleteButton="True" />
                   <asp:TemplateField>
            <ItemTemplate>
                 <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("document_data") %>' >Download File</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
              </Columns>
          </asp:GridView>
           <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
                </center>
          </asp:Panel>
       </div>
      <div class="sidebarnew">
      <center>
       <h2>Employee List</h2>
    <asp:GridView ID="grv_employee" runat="server" AutoGenerateColumns="False" 
                    Height="121px" Width="327px">
                    <Columns>
                        <asp:BoundField HeaderText="Employee name" DataField="Ename" />
                        <asp:BoundField HeaderText="Designation" DataField="Designation" />
                    </Columns>
                </asp:GridView>
                 <h4> <asp:Label ID="lbl_msg1" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
                <br />
                <table class="style1">
        <tr>
            <td colspan="2">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td>
                Employee Name</td>
            <td>
                <asp:DropDownList ID="ddl_empname" runat="server">
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
                <asp:Label ID="Label2" runat="server" Text="Designation"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_designation" runat="server"></asp:TextBox>
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
                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    Width="97px" onclick="btn_submit_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
                </center>
      </div>
      </div>
      <div class="clr"></div>
</asp:Content>
