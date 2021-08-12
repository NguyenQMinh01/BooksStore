<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BookStore.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title-text">
                    <div class="title login">Sign in</div>
                </div>
                <div class="form-container">

                    <div class="d-flex" style="height:50px">
                        
                        <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="btn-signin" PostBackUrl="~/SignIn.aspx"/>
                   
                        <asp:Button ID="Button2" runat="server" Text="Sign up" CssClass="btn-signup" PostBackUrl="~/SignUp.aspx"/>
                       
                    </div>
                    <div class="form-login">
                        <label class="mt-3">Username</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-txt"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                        <br />
                        Password
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-txt" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" Text="Sign in" CssClass="btn-form" OnClick="Button3_Click"/>
                    </div>
                </div>
</asp:Content>
