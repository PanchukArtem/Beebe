<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
    <title>Панель керування</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="css/sb-admin-2.css" rel="stylesheet">
</head>

<body id="page-top">
            <?php
                require('panel.php');
            ?>
            <?php
                require('db.php');
            ?>
                <div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Панель керування</h1>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-blue text-uppercase mb-1" style="color: #4e73df">Кількість вуликів</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            <?php
                                            $sql = $mysql->query("SELECT COUNT(`id`) FROM `hive`");
                                            while ($result = mysqli_fetch_array($sql))
                                            {
                                                echo "$result[0]";
                                            }
                                            ?>   
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Кількість точок</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            <?php
                                            $sql = $mysql->query("SELECT COUNT(`id`) FROM `location`");
                                            while ($result = mysqli_fetch_array($sql))
                                            {
                                                echo "$result[0]";
                                            }
                                            ?> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                Кількість меду</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            <?php
                                            $sql = $mysql->query("SELECT SUM(`honey`) FROM `hive`");
                                            while ($result = mysqli_fetch_array($sql))
                                            {
                                                echo "$result[0] <span>кг<span>";
                                            }
                                            ?> 
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Кількість суш</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            <?php
                                            $sql = $mysql->query("SELECT SUM(`comb`) FROM `hive`");
                                            while ($result = mysqli_fetch_array($sql))
                                            {
                                                echo "$result[0]";
                                            }
                                            ?> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">
                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->


                        <div class="col-lg-12 mb-4">

                            <!-- Illustrations
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">test</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;"
                                            src="img/undraw_posting_photo.svg" alt="...">
                                    </div>
                                    <p> <a
                                            target="_blank" rel="nofollow" href="https://undraw.co/">werwerwer</a></p>
                                </div>
                            </div>  -->

                            <!-- Approach -->

                                <table>
                                <td>
                                <?php
                                    $sql = $mysql->query("SELECT * FROM `hive` WHERE `power` = (SELECT MAX(`power`) FROM `hive`)");
                                    while ($result = mysqli_fetch_array($sql))
                                    {
                                    echo "
                                    <div class='card shadow mb-4'>
                                        <div class='card-header py-3'>
                                            <h5 class='m-0 font-weight-bold text-primary'>Найпродуктивніший вулик</h5>
                                            <h6 class='m-0 font-weight-bold'>Код вулика: <strong>{$result['id']}</strong></h6>
                                        </div>
                                        <div class='card-body'>
                                        <div class='col-md-12'>
                                            <div class='mb-1'>Сила сімї: <strong>{$result['power']}</strong></div>
                                            <div class='mb-1'>Мед: <strong>{$result['honey']}</strong>кг.</div>
                                            <div class='mb-1'>Кількість суш: <strong>{$result['comb']}</strong></div>
                                            <div class='mb-1'>Кількість рамок з розплодом: <strong>{$result['frame']}</strong></div>
                                            <div class='mb-1'>Вощина: <strong>{$result['vosh']}</strong></div>
                                         </div>
                                        </div>
                                    </div>";
                                    }
                                ?>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                            <?php
                                $sql = $mysql->query("SELECT * FROM `hive` WHERE `power` = (SELECT MIN(`power`) FROM `hive`)");
                                while ($result = mysqli_fetch_array($sql))
                                {
                                echo "
                                <div class='card shadow mb-4'>
                                    <div class='card-header py-3'>
                                        <h5 class='m-0 font-weight-bold text-primary'>Найменш продуктивний вулик</h5>
                                        <h6 class='m-0 font-weight-bold'>Код вулика: <strong>{$result['id']}</strong></h6>
                                    </div>
                                    <div class='card-body'>
                                    <div class='col-md-12'>
                                        <div class='mb-1'>Сила сімї: <strong>{$result['power']}</strong></div>
                                        <div class='mb-1'>Мед: <strong>{$result['honey']}</strong>кг.</div>
                                        <div class='mb-1'>Кількість суш: <strong>{$result['comb']}</strong></div>
                                        <div class='mb-1'>Кількість рамок з розплодом: <strong>{$result['frame']}</strong></div>
                                        <div class='mb-1'>Вощина: <strong>{$result['vosh']}</strong></div>
                                     </div>
                                    </div>
                                </div>";
                                }
                             ?>
                            </td>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            </br>
            </br>
            </br>
            <?php
                require('footer_paneluser.php');
            ?>
        </div>
    </div>
</body>
</html>