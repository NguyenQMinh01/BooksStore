<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="BookStore.Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/store.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
      body{
          background-color: rgb(252, 224, 224);
      }
  </style>
</head>
    
<body>
    <form id="form1" runat="server">
        
     <div class="nav-bar fixed-top bg-body" >
      <div class="row">
          <div class="col-2">
            <a href="Content.aspx" class="none-list-style">Browse Category</a>
          </div>
          <div class="col-7 d-flex">
            <div class="search">
                
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" > </asp:TextBox>
                
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/img/search.png" Width="20px" Height="20px"/>
            </div>
              <div class="header-title">Bookstore</div>
          </div>
          <div class="col-3 d-flex">
            <div id="dang-nhap" class="me-3">
              <a href="SignIn.aspx" class="none-list-style">Sign in</a>
             </div>
            <div id="dang-ky" class="me-3">
              <a href="SignUp.aspx" class="none-list-style">Sign up</a> 
            </div>
              <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Black" NavigateUrl="~/Cart_Store.aspx">
                <div class="cart">
                  <div  id="cart">
                      <i class="fas fa-shopping-cart"></i>
                    Giỏ hàng
                  </div>
                  </asp:HyperLink>
        </div>
     
            
          </div>
      </div>
 
</div>

        <br /><br /><br />
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="container page-product mt-5">
            <div class="d-flex">
                <div class=" img-page-product">
                    <div class="card align-items-sm-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("store_href") %>' Width="300px" Height="400px"/>
                        <div class="card-body"></div>
                    </div>
                </div>
                
                <div class="container w-100 shop-items">
                    <div class="name-product" id="name-product"><h5 class="card-title"><asp:Label ID="store_nameLabel" runat="server" Text='<%# Eval("store_name") %>' ForeColor="Black"/></h5></div>

                    <div class="d-flex">
                      <div class="price"><h3 class="card-title"><asp:Label ID="Label3" runat="server" Text='<%# Eval("store_price") %>' ForeColor="Black" /></h3></div>
                      <p style="margin-left: 10px;">$</p>
                    </div>
                    <div class="transport"><p class="card-text"><asp:Label ID="Label1" runat="server" Text='<%# Eval("store_desciption") %>' ForeColor="Black" /></p></div>
                    <p class="card-text">by <asp:Label ID="Label2" runat="server" Text='<%# Eval("store_writing") %>' ForeColor="Black" /></p>
                    <div class="quantity d-flex mt-4">
                        số lượng
                        <div class="input-quantity">
                          <ul>
                              <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Text="1" Width="40px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                          </ul>
                        </div>
                        
                    </div>
                    <div class="action d-flex mt-4">
                      <ul>
                        <li><asp:Button ID="Button3" runat="server" Text="Add to Cart" Width="180px" Height="50px" BackColor="FloralWhite" BorderColor="Coral" BorderWidth="1px" BorderStyle="Solid"  OnClick="Button3_Click" CommandName="cart"/></li>
                        <li><asp:Button ID="Button4" runat="server" Text="Buy now" Width="180px" Height="50px" BackColor="FloralWhite" BorderColor="Coral" BorderWidth="1px" BorderStyle="Solid" CommandName="buy"/></li>
                      </ul>
                    </div>
                    <div class="d-flex icon fa-2x">
                      <i class="fab fa-facebook"></i>
                      <i class="fab fa-instagram"></i>
                      <i class="fab fa-twitter"></i>
                      <i class="fab fa-youtube"></i>
                      
                    </div>
                </div>

              </div>
              
        </div>

            </ItemTemplate>
        </asp:DataList>
        </div>
        
        <br /><br />
        <footer>
    <div class="container-fluid mt-5">
       <div class="row text-left">
         <div class="col-md-5 col-md-5">
           <h1 class="text-light">Abot Us</h1>
           <p class="text-muted">
             Ban hành Danh mục và quy định việc quản lý, sử dụng vật tư, phương tiện, trang thiết bị chuyên dùng phòng, chống thiên tai
           </p>
           <p class="pt-4 text-muted">
             Quy định chi tiết Nghị quyết số 1024/2020/UBTVQH14 ngày 09 tháng 10 năm 2020 của Ủy ban Thường vụ Quốc hội về việc bổ sung nhóm hàng vật tư, thiết bị y tế vào Danh mục hàng dự trữ quốc gia
             <span>Web rac</span>
           </p>
         </div>
         <div class="col-md-5 col-md-5">
           <h1 class="text-light">New sletter</h1>
           <p class="text-muted ">Stay update</p>
           <form class="form-inline">
             <div class="col ">
               <div class="input-group">
                 <div class="input-group ">
                   <input type="text" class="form-control bg-dark text-white" placeholder="Email">   
                     
                   <span class="badge bg-white " ><button class="btn my-2 my-sm-0 p-1" type="submit"><i class="fas fa-arrow-right"></i></button></span>
                 </div>
               </div>
             </div>
           </form>
         </div>
         <div class="col-md-2 col-sm-12">
           <h4 class="text-light">Follow Us</h4>
           <p class="text-muted">Let us be social</p>
           <div class="column">
             <i class="fab fa-facebook-f"></i>
             <i class="fab fa-instagram"></i>
             <i class="fab fa-twitter"></i>
             <i class="fab fa-youtube"></i>
           </div>
         </div>
       </div>
    </div>
   </footer>
    </form>
    <script src="js/store_feature.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
