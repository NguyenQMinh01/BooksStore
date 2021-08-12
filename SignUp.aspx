<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BookStore.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="title-text">
                    <div class="title login">Sign up</div>
                </div>
                <div class="form-container">

                    <div class="d-flex" style="height:50px">
                        
                        <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="btn-signup" PostBackUrl="~/SignIn.aspx"/>
                   
                        <asp:Button ID="Button2" runat="server" Text="Sign up" CssClass="btn-signin" PostBackUrl="~/SignUp.aspx"/>
                       
                    </div>
                    <div class="form-login">
                        <label class="mt-3">Username</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-txt"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        Password
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-txt" TextMode="Password"></asp:TextBox>
                        Repassword
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-txt" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                        
                        <asp:Button ID="Button3" runat="server" Text="Sign up" CssClass="btn-form" OnClick="Button3_Click"/>
                    </div>
                </div>
</asp:Content>
