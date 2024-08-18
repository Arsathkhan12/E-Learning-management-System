<?php include('header_dashboard.php'); ?>
<body id="class_div">
    <?php include('navbar_about.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12" id="content">
                <div class="row-fluid">
                    <!-- block -->
                    <div class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-right"><a href="index.php"><i class="icon-arrow-left"></i> Back</a></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <?php
                                    // Fetch mission content
                                    $mission_query = mysqli_query($conn, "SELECT * FROM content WHERE title = 'mission'") or die(mysqli_error($conn));
                                    
                                    if (mysqli_num_rows($mission_query) > 0) {
                                        $mission_row = mysqli_fetch_array($mission_query);
                                        if (isset($mission_row['content'])) {
                                            echo $mission_row['content'];
                                        } else {
                                            echo "Mission content not found.";
                                        }
                                    } else {
                                        echo "No mission content available.";
                                    }
                                ?>
                                <hr>
                                <?php
                                    // Fetch vision content
                                    $vision_query = mysqli_query($conn, "SELECT * FROM content WHERE title = 'vision'") or die(mysqli_error($conn));
                                    
                                    if (mysqli_num_rows($vision_query) > 0) {
                                        $vision_row = mysqli_fetch_array($vision_query);
                                        if (isset($vision_row['content'])) {
                                            echo $vision_row['content'];
                                        } else {
                                            echo "Vision content not found.";
                                        }
                                    } else {
                                        echo "No vision content available.";
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>
            </div>
        </div>
        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>
</html>
