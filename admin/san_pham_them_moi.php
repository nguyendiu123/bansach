<?php 
    // Mục đích kiểm tra xem bạn có quyền truy cập trang này không thông qua BIẾN $_SESSION['da_dang_nhap']
    session_start();
    if (!isset($_SESSION["da_dang_nhap"]) ){
        echo "
            <script type='text/javascript'>
                window.alert('Bạn không có quyền truy cập');
            </script>
        ";

        echo "
            <script type='text/javascript'>
                window.location.href='dang_nhap.php';
            </script>
        ";
    }
;?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sản phẩm thêm mới</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
        <script>
          tinymce.init({
            selector: '#txtMoTa'
          });
        </script>
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.php">Nhà sách HVNH</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Nội dung tìm kiếm..." aria-label="Nội dung tìm kiếm..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Tùy chỉnh</a></li>
                        <li><a class="dropdown-item" href="#!">Nhật ký</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Thoát</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Danh mục</div>
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Quản trị hệ thống
                                </a>
                              <a class="nav-link collapsed" href="quan_tri_nguoi_dung.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản trị người dùng
                                
                            </a>   
                            <a class="nav-link collapsed" href="quan_tri_san_pham.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Quản trị sản phẩm
                                
                            </a>
                             </a>
                             <a class="nav-link collapsed" href="quan_tri_don_hang.php" >
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Quản trị đơn hàng
                                
                            </a>
                            
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Quản trị sản phẩm</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Quản trị hệ thống</a></li>
                            <li class="breadcrumb-item active">Quản trị sản phẩm</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Danh sách sản phẩm | <a href="san_pham_them_moi.php">Thêm mới</a>
                            </div>
                            <div class="card-body">
                                <form method="POST" action="san_pham_them_moi_thuc_hien.php" enctype="multipart/form-data">
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtTensanpham" name="txtTensanpham" placeholder="Tên sản phẩm" />
                                        <label for="txtTensanpham">Tên sản phẩm</label>
                                    </div>
                                     <div class="form-floating mb-3">
                                      
                                        <br><select class="form-control" name="cbokhoa">
                                      <option value="1">Khoa Lí Luận Chính Trị</option>
                                      <option value="2">Khoa Ngân Hàng</option>
                                      <option value="3">Khoa Luật</option>
                                      <option value="4">Khoa Kế- Kiểm</option>
                                      <option value="5">Khoa Hệ Thống Thông Tin Quản Lí</option>
                                      <option value="6">Khoa Tài Chính</option>
                                      <option value="7">Bộ Môn Toán</option>
                                      <option value="8">Khoa Ngôn Ngữ</option>
                                      <option value="9">Khoa Quản Trị Kinh Doanh</option>
                                      <option value="10">Khoa Kinh Tế</option>
                                      <option value="11">Khoa Kinh Doanh Quốc Tế</option>
                                      </select>
                                    </div>
                                    
                                    <div class="form-floating mb-3">
                                        <input type="file" class="form-control" id="txtAnhMinhHoa" name="txtAnhMinhHoa" placeholder="Ảnh" />
                                        <label for="txtAnhMinhHoa">Ảnh</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtGia" name="txtGia" placeholder="Gia" />
                                        <label for="txtGia">Giá</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtSoluong" name="txtSoluong" placeholder="Số lượng" />
                                        <label for="txtSoluong">Số lượng</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtNgayxuatban" name="txtNgayxuatban" placeholder="Ngày xuất bản" />
                                        <label for="txtNgayxuatban">Ngày xuất bản</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <textarea class="form-control" id="txtMoTa" name="txtMoTa" placeholder="Mô tả "></textarea>
                                        <label for="txtMoTa">Mô tả</label>
                                        
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtNhaxuatban" name="txtNhaxuatban" placeholder="Nhà xuất bản" />
                                        <label for="txtNhaxuatban">Nhà xuất bản</label>
                                    </div>
                                     <div class="form-floating mb-3">
                                        <input class="form-control" id="txtTacgia" name="txtTacgia" placeholder="Tác giả" />
                                        <label for="txtTacgia">Tác giả</label>
                                    </div>
                                    <div class="mt-4 mb-0">
                                        <button type="submit">Thêm mới</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Nhà sách Học Viện Ngân Hàng</div>
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
