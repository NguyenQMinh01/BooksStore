<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Content.aspx.cs" Inherits="BookStore.Content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Content.css" rel="stylesheet" />
    

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand1">
        <ItemTemplate>
             <div class="card mt-3 ms-5" style="max-width: 400px;">
                 
                <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%#"Store.aspx?id="+Eval("store_id") %>' Font-Underline="false" ForeColor="Black"> 
              <div class="row g-0">
                <div class="col-md-4">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("store_href") %>' Width="100%" Height="100%"/>
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="store_nameLabel" runat="server" Text='<%# Eval("store_name") %>' ForeColor="Black"/></h5>
                      <h3 class="card-title"><asp:Label ID="Label3" runat="server" Text='<%# Eval("store_price") %>' ForeColor="Black" />$</h3>
                    <p class="card-text"><asp:Label ID="Label1" runat="server" Text='<%# Eval("store_desciption") %>' ForeColor="Black" /></p>
                    <p class="card-text">by <asp:Label ID="Label2" runat="server" Text='<%# Eval("store_writing") %>' ForeColor="Black" /></p>
                      
                  </div>
                </div>
              </div>
                    </asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>
    



</asp:Content>
