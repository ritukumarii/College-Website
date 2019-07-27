<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="background:white; width:100%;height:50%;">
        <div class="row">
                            <div class="col-md-4"></div>
                           <div  style="margin-top:70px; margin-bottom:70px;  box-shadow:5px 10px 18px #888888; padding:0px;" class="col-md-4">
                                <div style="background:#05969b; padding:15px;"><span style="margin-top:30px; color:#2FD828;  font-weight:600;font-size:200%;">STUDENT LOGIN</span></div>
                              
                               <form id="form2" runat="server" style="background:white;color:#05969b;  padding:30px; width:100%;">
                                  
                                   <label>User Name:</label>
                                       <asp:TextBox ID="txtmail"  runat="server" CssClass="form-control" AutoComplete="off" ></asp:TextBox>

                                   <label>Password:</label>
                                    <asp:TextBox ID="txtpass" runat="server"  CssClass="form-control" AutoComplete="off" type="password"></asp:TextBox>
                                   <h6><a href="forgotpwd.aspx?type=student">Forgot Password?</a></h6>
                                    <asp:Button ID="Button1" runat="server" Text="Login" Style="padding:10px; margin-top:20px;" OnClick="Button1_Click"/>                              

                               </form>
                          </div>
                           <div class="col-md-4"></div> 
            </div>
     </div>


</asp:Content>

