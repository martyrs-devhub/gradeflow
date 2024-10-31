<?php
session_start();
error_reporting(0);
include('includes/config.php');

if (strlen($_SESSION['alogin']) == "") {   
    header("Location: index.php"); 
} else {
    if (isset($_POST['submit'])) {
        $classname = $_POST['classname'];
        $classnamenumeric = $_POST['classnamenumeric']; 
        $section = $_POST['section'];

        // MySQLi approach
        $sql = "INSERT INTO tblclasses (ClassName, ClassNameNumeric, Section) VALUES ('$classname', '$classnamenumeric', '$section')";
        if ($conn->query($sql) === TRUE) {
            $msg = "Class Created successfully";
        } else {
            $error = "Something went wrong. Please try again";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SMS Admin Create Class</title>
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
    <link rel="stylesheet" href="css/prism/prism.css" media="screen">
    <link rel="stylesheet" href="css/main.css" media="screen">
    <script src="js/modernizr/modernizr.min.js"></script>
    <style>
        .errorWrap { padding: 10px; background: #fff; border-left: 4px solid #dd3d36; }
        .succWrap { padding: 10px; background: #fff; border-left: 4px solid #5cb85c; }
    </style>
</head>
<body class="top-navbar-fixed">
    <div class="main-wrapper">
        <?php include('includes/topbar.php'); ?>
        <div class="content-wrapper">
            <div class="content-container">
                <?php include('includes/leftbar.php'); ?>
                <div class="main-page">
                    <div class="container-fluid">
                        <div class="row page-title-div">
                            <div class="col-md-6">
                                <h2 class="title">Create Student Class</h2>
                            </div>
                        </div>
                        <div class="row breadcrumb-div">
                            <div class="col-md-6">
                                <ul class="breadcrumb">
                                    <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                                    <li><a href="#">Classes</a></li>
                                    <li class="active">Create Class</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <section class="section">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="panel">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h5>Create Student Class</h5>
                                            </div>
                                        </div>
                                        <?php if ($msg) { ?>
                                            <div class="alert alert-success left-icon-alert" role="alert">
                                                <strong>Well done!</strong> <?php echo htmlentities($msg); ?>
                                            </div>
                                        <?php } else if ($error) { ?>
                                            <div class="alert alert-danger left-icon-alert" role="alert">
                                                <strong>Oh snap!</strong> <?php echo htmlentities($error); ?>
                                            </div>
                                        <?php } ?>
                                        <div class="panel-body">
                                            <form method="post">
                                                <div class="form-group has-success">
                                                    <label for="success" class="control-label">Class Name</label>
                                                    <input type="text" name="classname" class="form-control" required="required" id="success">
                                                    <span class="help-block">Eg- Third, Fourth, Sixth, etc.</span>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="success" class="control-label">Class Name in Numeric</label>
                                                    <input type="number" name="classnamenumeric" required="required" class="form-control" id="success">
                                                    <span class="help-block">Eg- 1, 2, 4, 5, etc.</span>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="success" class="control-label">Section</label>
                                                    <input type="text" name="section" class="form-control" required="required" id="success">
                                                    <span class="help-block">Eg- A, B, C, etc.</span>
                                                </div>
                                                <button type="submit" name="submit" class="btn btn-success btn-labeled">Submit<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/jquery-ui/jquery-ui.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/pace/pace.min.js"></script>
    <script src="js/lobipanel/lobipanel.min.js"></script>
    <script src="js/iscroll/iscroll.js"></script>
    <script src="js/prism/prism.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<?php ?>