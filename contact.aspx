<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <div class="contact">
	<div class="container">
		<div class="contact-page">
			<div class="contact-info">
				<h2 class="tittle">CONTACT</h2>
			</div>
			<div class="contact-map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2482.432383990807!2d0.028213999961443994!3d51.52362882484525!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1423469959819"></iframe>
			</div>
			<div class="contact-form">
				<form id="form1" runat="server" >
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="" width="700px"></asp:TextBox> 
						<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="" width="700px"></asp:TextBox> 
						<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone';}" required="" Width="700px"></asp:TextBox>
                        </div>
                    <div class="col-md-1"></div> 
                    <div class="col-md-8">
						<asp:TextBox  id="msg" runat="server" TextMode="MultiLine" Columns="5" Rows="5" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="please">Message</asp:TextBox>
                        </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                    <asp:Button ID="Button1" runat="server" Text="SEND" Style="width:120px; margin:30px;" OnClick="Button1_Click" />  
                        </div>
				</form>
			</div>
		</div>
	</div>
</div>

</asp:Content>

