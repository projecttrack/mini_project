<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_vw_request.aspx.cs" Inherits="WebApplication1.Admin.Admin_vw_request" %>
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
<br /><h2>
Admin View Requests


</h2>

<br />
    <asp:GridView ID="grv_admn_req_vw" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="analreqid" onrowdeleting="grv_admn_req_vw_RowDeleting" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="proname" HeaderText="Project Name" />
            <asp:BoundField DataField="email" HeaderText="Analyst Mail" />
            <asp:BoundField DataField="reason" HeaderText="Reason" />
            <asp:BoundField DataField="enddate" HeaderText="Enddate" />
            <asp:BoundField DataField="duration" HeaderText="Duration" />
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
      <h4>  <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
</center>
<div class="content_bg">
      <div class="mainbar">
        <div class="article">
          <h2><span>Template License</span></h2>
          <div class="clr"></div>
          <p class="post-data"><a href="#" class="com fr">Comments (3)</a> <span class="date">March 16, 2018</span> &nbsp;|&nbsp; Posted by <a href="#">Owner</a> &nbsp;|&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a></p>
          <img src="images/images_1.jpg" width="613" height="193" alt="image" />
          <p>This is a free CSS website template by <a href="http://www.coolwebtemplates.net/" title="Website Templates">CoolWebTemplates.net</a>. This 
work is distributed under the <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a>, 
which means that you are free to use it for any personal or commercial purpose provided you credit me in the form of a link back to <a href="http://www.coolwebtemplates.net/" title="Website Templates">CoolWebTemplates.net</a>.</p>
          <p class="spec"> <a href="#" class="rm fl">Read more</a></p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2><span>Lorem Ipsum</span> Dolor Sit</h2>
          <div class="clr"></div>
          <p class="post-data"><a href="#" class="com fr">Comments (7)</a> <span class="date">March 15, 2010</span> &nbsp;|&nbsp; Posted by <a href="#">Owner</a> &nbsp;|&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a></p>
          <img src="images/images_2.jpg" width="613" height="193" alt="image" />
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</a> Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam.</p>
          <p>Aenean commodo elit ac ante dignissim iaculis sit amet non velit. Donec magna sapien, molestie sit amet faucibus sit amet, fringilla in urna. Aliquam erat volutpat. Fusce a dui est. Sed in volutpat elit. Nam odio tortor, pulvinar non scelerisque in, eleifend nec nunc. Sed pretium, massa sed dictum dapibus, nibh purus posuere magna, ac porta felis lectus ut neque. Nullam sagittis ante vitae velit facilisis lacinia. Cras vehicula lacinia ornare. Duis et cursus risus. Curabitur consectetur justo sit amet odio viverra vel iaculis odio gravida. Ut imperdiet metus nec erat.</p>
          <p class="spec"><a href="#" class="rm fl">Read more</a></p>
          <div class="clr"></div>
        </div>
        <div class="pagenavi"><span class="pages">Page 1 of 2</span><span class="current">1</span><a href="#" title="2">2</a><a href="#" >&raquo;</a></div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          
             <center>
<h2>
Admin Response</h2>
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
        <div class="gadget">
          <h2><span>Sponsors</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li class="active"><a href="http://www.dreamtemplate.com" title="Website Templates">DreamTemplate</a> <span>Over 6,000+ Premium Web Templates</span></li>
            <li><a href="http://www.templatesold.com" title="WordPress Themes">TemplateSOLD</a> <span>Premium WordPress &amp; Joomla Themes</span></li>
            <li><a href="http://www.imhosted.com" title="Affordable Hosting">ImHosted.com</a> <span>Affordable Web Hosting Provider</span></li>
            <li><a href="http://www.dreamstock.com/">DreamStock</a> <span>Unlimited Amazing Stock Photos</span></li>
            <li><a href="http://www.evrsoft.com" title="Website Builder">Evrsoft</a> <span>Website Builder Software &amp; Tools</span></li>
            <li><a href="http://www.csshub.com/" title="CSS Templates">CSS Hub</a> <span>Premium CSS Templates</span></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="grey"><span>Wise Words</span></h2>
          <div class="clr"></div>
          <div class="testi">
            <p><span class="q"><img src="images/quote_1.gif" width="16" height="14" alt="quote" /></span> We can let circumstances rule us, or we can take charge and rule our lives from within. <span class="q"><img src="images/quote_2.gif" width="16" height="14" alt="quote" /></span></p>
            <p class="title"><strong>Earl Nightingale</strong></p>
          </div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
</asp:Content>
