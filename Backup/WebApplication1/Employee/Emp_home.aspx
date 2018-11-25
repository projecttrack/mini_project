<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Employee.Master" AutoEventWireup="true" CodeBehind="Emp_home.aspx.cs" Inherits="WebApplication1.Employee.Emp_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 391px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
<h2>Employee Tasks</h2>
<br />
    <asp:GridView ID="grv_emp_tasks" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="moddivid" onrowdeleting="grv_emp_tasks_RowDeleting" 
            onselectedindexchanging="grv_emp_tasks_SelectedIndexChanging" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="modulename" HeaderText="Module Name" />
            <asp:BoundField DataField="divname" HeaderText="Division Name" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="startdate" HeaderText="startdate" />
            <asp:BoundField DataField="duration" HeaderText="duration" />
            <asp:BoundField DataField="enddate" HeaderText="enddate" />
            <asp:CommandField DeleteText="Submit" ShowDeleteButton="True" 
                InsertVisible="False" ShowCancelButton="False" />
            <asp:CommandField SelectText="Request" ShowSelectButton="True" />
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
      <asp:Panel ID="Panel1" runat="server" Visible="False" Height="337px">
      
<center>
<h2>Employee Submit Work</h2>

<br />

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                Document</td>
            <td>
&nbsp;
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
                <asp:Button ID="btn_submit_work" runat="server" onclick="btn_submit_work_Click" 
                    Text="Submit" Width="103px" />
            </td>
        </tr>
    </table>

</center>
    
      </asp:Panel>
       </div>
      <div class="sidebarnew">
      <center>
      <asp:Panel ID="panel2" runat="server" Visible="false">
<h2>Employee Requests</h2>
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
                Division Name</td>
            <td>
                <asp:TextBox ID="txt_divname" runat="server"></asp:TextBox>
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
                End date</td>
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
                Reason</td>
            <td>
                <asp:TextBox ID="txt_reason" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                <asp:Button ID="btn_sub_req" runat="server" onclick="btn_submit_Click" 
                    Text="Submit" Width="92px" />
            </td>
        </tr>
    </table>


    </asp:Panel>
</center>

      </div>
      </div>
      <div class="clr"></div>

</asp:Content>
