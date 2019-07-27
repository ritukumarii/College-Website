<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .myday {
              border: outset 2px #fbfbfb;
              padding:7px;
        }
        .myCalendarDayHeader {
             padding:7px;
             height:25px;
    border-bottom: outset 2px #fbfbfb; 
    border-right: outset 2px #fbfbfb; 
        }
    </style>
     <div class="container" style="background:white; width:100%;height:50%; ">
         <div class="row">
             <div class="col-md-2"></div>
                           <div style="margin:70px;  box-shadow: 5px 10px 18px #888888; padding:0px;" class="col-md-6">
                                <div style="background:#05969b;  padding:15px;"><span style=" color:#2FD828;font-weight:600;font-size:200%;">REGISTER</span></div>
                               <form id="form1" runat="server" style="background:white;color:#05969b; padding:30px;">
                                  
                                   <label>Name:</label><br /><br />
                                   <div class="row">
                                   <div class="col-md-4">
                                       <label>First Name:</label>
                                       <asp:TextBox ID="TextBox1"  runat="server" CssClass="form-control"></asp:TextBox></div>
                                   <div class="col-md-4">
                                       <label>Last name:</label>
                                       <asp:TextBox ID="TextBox2"  runat="server" CssClass="form-control" ></asp:TextBox></div>
                                   <div class="col-md-4">
                                       <label>Middle Name:</label>
                                       <asp:TextBox ID="TextBox3"  runat="server" CssClass="form-control"  ></asp:TextBox></div>
                                    </div>
                                   <label>Email:</label>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                                    <label>Year:</label>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                                   <label>Department:</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="80%" required="please" style="margin-left:0px; margin-top:5px; font-weight:600;">
                                   </asp:DropDownList>
                                   <label>Gender:</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="80%" required="please" style="margin-left:0px; margin-top:5px; font-weight:600;">
                                   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                   
                                   </asp:DropDownList>
                                    <label>Date of Birth:</label>
                                   <div class="row">
                              <div class="col-md-4" style="">
                                  <label>Date:</label>
                          <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" TextMode="Date"  ></asp:TextBox>

                              </div>
                       
                   </div>
                                   <label>Mobile No:</label>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                                   <label>Father's Name:</label>
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>

                                   <label>Mother's Name:</label>
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>

                                    <label>Address:</label> <br /><br />  
                                    <div class="row">
                                    <div class="col-md-6">            
                                   <label>Residential Address:</label>
                                  
                                   <asp:TextBox ID="TextBox7"  runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                   <label>Correspondence Address:</label>
                                   <asp:TextBox ID="TextBox8"  runat="server" CssClass="form-control" AutoComplete="off" ></asp:TextBox>
                                    </div>
                                    </div>

                                   <label>Password:</label>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" AutoComplete="off" Type="password"></asp:TextBox>

                                  <label>Confirm Password:</label>
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" AutoComplete="off" Type="password"></asp:TextBox>
                                   <label>Photo</label>
                                   <asp:FileUpload ID="fu" runat="server" CssClass="form-control" />
                                   <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Style="width:20%;margin-left:40%;" />                              

        
                               </form>
                          </div>
             <div class="col-md-4"></div>
             </div>
     </div>


</asp:Content>

