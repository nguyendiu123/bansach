

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sửa người dùng</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
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
                              <a class="nav-link collapsed" href="quan_tri_nguoi_dung.php" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản trị người dùng
                                
                            </a>   
                            <a class="nav-link collapsed" href="quan_tri_san_pham.php" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Quản trị sản phẩm
                                
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Quản trị người dùng</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Quản trị hệ thống</a></li>
                            <li class="breadcrumb-item active">Quản trị người dùng</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Danh sách người dùng | <a href="nguoi_dung_them_moi.php">Thêm mới</a>
                            </div>
                            <div class="card-body">
                                <?php
                                    // Viết ra các câu lệnh để load dữ liệu và hiển thị lên Webpage; giúp người quản trị chỉ cần hiệu chỉnh những nội dung mà họ mong muốn
                                        
                                    // 1. Load file cấu hình để kết nối đến máy chủ CSDL, CSDL
                                    include('../config.php');


                                    // 2. Viết câu lệnh truy vấn để lấy ra được DỮ LIỆU MONG MUỐN (TIN TỨC đã lưu trong CSDL)
                                    $nguoi_dung_id = $_GET["id"];

                                    $sql = "
                                              SELECT * 
                                              FROM tbl_nguoi_dung 
                                              WHERE nguoi_dung_id = ".$nguoi_dung_id."
                                              ORDER BY nguoi_dung_id DESC
                                    ";

                                    // 3. Thực thi câu lệnh truy vấn (mục đích trả về dữ liệu các bạn cần)
                                    $nguoi_dung = mysqli_query($ket_noi, $sql);

                                    // 4. Hiển thị ra dữ liệu mà các bạn vừa lấy được
                                    $row = mysqli_fetch_array($nguoi_dung);
                                ;?>
                                <form method="POST" action="nguoi_dung_sua_thuc_hien.php" enctype="multipart/form-data">
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtTennguoidung" name="txtTennguoidung" placeholder="Tên người dùng" value="<?php echo $row['ten_nguoi_dung'];?>" />
                                        <label for="txtTennguoidung">Tên người dùng</label>
                                    </div>   
                                      <div class="form-floating mb-3">
                                        <input class="form-control" id="txtEmail" name="txtEmail" placeholder="Email" value="<?php echo $row['email'];?>" />
                                        <label for="txtEmail">Email</label>
                                    </div>                                  
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="txtMatkhau" name="txtMatkhau" placeholder="Mật khẩu" value="<?php echo $row['mat_khau'];?>" />
                                        <label for="txtMatkhau">Mật khẩu</label>
                                    </div>
                                    <div class="mt-4 mb-0">
                                        <input type="hidden" name="txtID" value="<?php echo $row['nguoi_dung_id'];?>">
                                        <div class="d-grid"><button type="submit">Cập nhật</button></div>
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
