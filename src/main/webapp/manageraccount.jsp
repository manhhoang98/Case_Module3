<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta
          name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no"
  />
  <link rel="icon" href="img/favicon.png" type="image/png" />
  <title>Eiser ecommerce</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="web/css/bootstrap.css" />
  <link rel="stylesheet" href="web/vendors/linericon/style.css" />
  <link rel="stylesheet" href="web/css/font-awesome.min.css" />
  <link rel="stylesheet" href="web/css/themify-icons.css" />
  <link rel="stylesheet" href="web/vendors/owl-carousel/owl.carousel.min.css" />
  <link rel="stylesheet" href="web/vendors/lightbox/simpleLightbox.css" />
  <link rel="stylesheet" href="web/vendors/nice-select/css/nice-select.css" />
  <link rel="stylesheet" href="web/vendors/animate-css/animate.css" />
  <link rel="stylesheet" href="web/vendors/jquery-ui/jquery-ui.css" />
  <!-- main css -->
  <link rel="stylesheet" href="web/css/style.css" />
  <link rel="stylesheet" href="web/css/responsive.css" />
</head>

<body>
<!--================Header Menu Area =================-->
<header class="header_area">
  <div class="top_menu">
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="float-left">
            <p>Phone: +01 256 25 235</p>
            <p>email: info@eiser.com</p>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="float-right">
            <ul class="right_side">
              <li>
                <a href="cart.jsp">
                  Card
                </a>
              </li>

              </li>
              <%--              //Đăng nhập đăng kí (hiển thị)--%>
              <li>
                <c:if test="${sessionScope.acc == null }">
                  <a href="LoginForm/Login.jsp">
                    Login
                  </a>
                </c:if>
                <c:if test="${sessionScope.acc != null }">
                  <a href="">
                    Hello ${sessionScope.acc.name}
                  </a>
                  <a href="/logout">
                    Logout
                  </a>
                </c:if>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="main_menu">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light w-100">
        <!-- Brand and toggle get grouped for better mobile display -->
        <a class="navbar-brand logo_h" href="index.jsp">
          <img src="web/img/logo.png" alt="" />
        </a>
        <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div
                class="collapse navbar-collapse offset w-100"
                id="navbarSupportedContent"
        >
          <div class="row w-100 mr-0">
            <div class="col-lg-7 pr-0">
              <ul class="nav navbar-nav center_nav pull-right">
                <li class="nav-item">
                  <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item active submenu dropdown">
                  <a
                          href="#"
                          class="nav-link dropdown-toggle"
                          data-toggle="dropdown"
                          role="button"
                          aria-haspopup="true"
                          aria-expanded="false"
                  >Shop</a
                  >
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="product.jsp"
                      >Shop Category</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="productdetail.jsp"
                      >Product Details</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="checkout.jsp"
                      >Product Checkout</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="cart.jsp">Shopping Cart</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item submenu dropdown">
                  <a
                          href="#"
                          class="nav-link dropdown-toggle"
                          data-toggle="dropdown"
                          role="button"
                          aria-haspopup="true"
                          aria-expanded="false"
                  >Blog</a
                  >
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="web/blog.html">Blog</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="web/single-blog.html"
                      >Blog Details</a
                      >
                    </li>
                  </ul>
                </li>
                <li class="nav-item submenu dropdown">
                  <a
                          href="#"
                          class="nav-link dropdown-toggle"
                          data-toggle="dropdown"
                          role="button"
                          aria-haspopup="true"
                          aria-expanded="false"
                  >Pages</a
                  >
                  <ul class="dropdown-menu">
                    <li class="nav-item">
                      <a class="nav-link" href="web/tracking.html">Tracking</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="web/elements.html">Elements</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="web/contact.html">Contact</a>
                </li>
                <%--                //Quản lí (quyền admin)--%>
                <c:if test="${sessionScope.acc.id_role ==1}">
                  <li class="nav-item submenu dropdown">
                    <a
                            href="#"
                            class="nav-link dropdown-toggle"
                            data-toggle="dropdown"
                            role="button"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >Manager</a
                    >
                    <ul class="dropdown-menu">
                      <li class="nav-item">
                        <a class="nav-link" href="/manageraccount.jsp">Manager Account</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/managerproduct.jsp">Manager Product</a
                        >
                      </li>
                    </ul>
                  </li>
                </c:if>
              </ul>
            </div>

            <div class="col-lg-5 pr-0">
              <ul class="nav navbar-nav navbar-right right_nav pull-right">
                <li class="nav-item">
                  <a href="#" class="icons">
                    <i class="ti-search" aria-hidden="true"></i>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="/cart" class="icons">
                    <i class="ti-shopping-cart"></i>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="#" class="icons">
                    <i class="ti-user" aria-hidden="true"></i>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="#" class="icons">
                    <i class="ti-heart" aria-hidden="true"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </div>
</header>
<!--================Header Menu Area =================-->

<!--================Home Banner Area =================-->
<section class="banner_area">
  <div class="banner_inner d-flex align-items-center">
    <div class="container">
      <div
              class="banner_content d-md-flex justify-content-between align-items-center"
      >
        <div class="mb-3 mb-md-0">
          <h2>Manager Account</h2>
    <c:if test="${sessionScope.acc != null }">
          <h6>Chào mừng ${sessionScope.acc.name} quay lại quản lí account</h6>
    </c:if>
        </div>
        <div class="page_link">
          <a href="index.jsp">Home</a>
          <a href="cart.jsp">Manager Account</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!--================End Home Banner Area =================-->

<!--================Cart Area =================-->
<section class="cart_area">
  <div class="container">
    <div class="cart_inner">
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Product</th>
            <th scope="col">Img</th>
            <th scope="col">Price</th>
            <th scope="col">Describe</th>
            <th scope="col">Action</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${sanphams}" var="product">
          <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>

            <td>

              <img src="${product.img}"
                          width="100px"
                          height="100px"/>
            </td>
            <td>${product.price}</td>
            <td>${product.describe}</td>
            <td>
              <a style="position: relative" type="button" class="btn btn-warning" href="/edit?id=${o.id_Product}">Edit</a>
              <a style="position: relative" type="button" class="btn btn-danger" href="/edit?id=${o.id_Product}">Edit</a>
            </td>

          </tr>
          </c:forEach>

          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>
<!--================End Cart Area =================-->

<!--================ start footer Area  =================-->
<footer class="footer-area section_gap">
  <div class="container">
    <div class="row">
      <div class="col-lg-2 col-md-6 single-footer-widget">
        <h4>Top Products</h4>
        <ul>
          <li><a href="#">Managed Website</a></li>
          <li><a href="#">Manage Reputation</a></li>
          <li><a href="#">Power Tools</a></li>
          <li><a href="#">Marketing Service</a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-md-6 single-footer-widget">
        <h4>Quick Links</h4>
        <ul>
          <li><a href="#">Jobs</a></li>
          <li><a href="#">Brand Assets</a></li>
          <li><a href="#">Investor Relations</a></li>
          <li><a href="#">Terms of Service</a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-md-6 single-footer-widget">
        <h4>Features</h4>
        <ul>
          <li><a href="#">Jobs</a></li>
          <li><a href="#">Brand Assets</a></li>
          <li><a href="#">Investor Relations</a></li>
          <li><a href="#">Terms of Service</a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-md-6 single-footer-widget">
        <h4>Resources</h4>
        <ul>
          <li><a href="#">Guides</a></li>
          <li><a href="#">Research</a></li>
          <li><a href="#">Experts</a></li>
          <li><a href="#">Agencies</a></li>
        </ul>
      </div>
      <div class="col-lg-4 col-md-6 single-footer-widget">
        <h4>Newsletter</h4>
        <p>You can trust us. we only send promo offers,</p>
        <div class="form-wrap" id="mc_embed_signup">
          <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                method="get" class="form-inline">
            <input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''"
                   onblur="this.placeholder = 'Your Email Address '" required="" type="email">
            <button class="click-btn btn btn-default">Subscribe</button>
            <div style="position: absolute; left: -5000px;">
              <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
            </div>

            <div class="info"></div>
          </form>
        </div>
      </div>
    </div>
    <div class="footer-bottom row align-items-center">
      <p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
      <div class="col-lg-4 col-md-12 footer-social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-dribbble"></i></a>
        <a href="#"><i class="fa fa-behance"></i></a>
      </div>
    </div>
  </div>
</footer>
<!--================ End footer Area  =================-->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="web/js/jquery-3.2.1.min.js"></script>
<script src="web/js/popper.js"></script>
<script src="web/js/bootstrap.min.js"></script>
<script src="web/js/stellar.js"></script>
<script src="web/vendors/lightbox/simpleLightbox.min.js"></script>
<script src="web/vendors/nice-select/js/jquery.nice-select.min.js"></script>
<script src="web/vendors/isotope/imagesloaded.pkgd.min.js"></script>
<script src="web/vendors/isotope/isotope-min.js"></script>
<script src="web/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="web/js/jquery.ajaxchimp.min.js"></script>
<script src="web/js/mail-script.js"></script>
<script src="web/vendors/jquery-ui/jquery-ui.js"></script>
<script src="web/vendors/counter-up/jquery.waypoints.min.js"></script>
<script src="web/vendors/counter-up/jquery.counterup.js"></script>
<script src="web/js/theme.js"></script>
</body>
</html>
