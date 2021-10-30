<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Đăng nhập hệ thống</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
    
        <div class="modal-dialog ">
            <div class="modal-content">
            <div class="card-header"><h3 class="text-center font-weight-light my-4">Đăng nhập hệ thống</h3></div>
                <div class="modal-body">
                    <form method="POST" action="dang_nhap_kiem_tra.php" id="form-signin" class="form-signin mt-2">
                        <div class="form-label-group">
                            <input type="email" class="form-control" placeholder="Nhập địa chỉ email" name="email"
                                required autofocus>
                        </div>
                        <div class="form-label-group">
                            <br><input type="password" class="form-control" placeholder="Mật khẩu" name="password" required>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <br><input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">Nhớ mật khẩu</label>
                
                        </div>
                        <button class="btn btn-lg btn-block btn-signin text-uppercase text-white" type="submit" name="dangnhap" 
                            style="background: #F5A623">Đăng nhập</button>
                        <hr class="my-4">
                    </form>
                </div>
            </div>
        </div>
  
</body>