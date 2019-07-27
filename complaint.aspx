<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="complaint.aspx.cs" Inherits="complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container" style="background:#bcbcbc; width:100%;height:50%;">
        <div class="row">
                            <div class="col-md-4"></div>
                           <div  style="margin-top:70px; margin-bottom:50px;" class="col-md-4">
                                <div style="background:#05969b; padding:15px;"><span style="margin-top:30px; color:#2FD828;  font-weight:600;font-size:200%;">COMPLAINT</span></div>
                              
                                <form id="form1" runat="server" style="background:white;color:#05969b; padding:15px; height:200px;">
                                    <asp:Label ID="Label1" runat="server" Text="Any Query/Complaint:" style=" font-weight:200; font-size:130%"></asp:Label>
                                    <asp:TextBox ID="TextBox1" style="margin:0px; margin-top:5px;" Height="70"  runat="server" CssClass="form-control"  TextMode="MultiLine" Rows="5" Columns="80" AutoComplete="off"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" Style="padding:10px; margin-top:20px;" OnClick="Button1_Click" />
                                    </form>
                               </div>
         </div>
    
      </div>
</asp:Content>

