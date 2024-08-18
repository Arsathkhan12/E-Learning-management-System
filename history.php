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
                                    // Execute the query to fetch the content
                                    $mission_query = mysqli_query($conn, "SELECT * FROM content WHERE title = 'History'") or die(mysqli_error($conn));
                                    
                                    // Check if any rows are returned
                                    if (mysqli_num_rows($mission_query) > 0) {
                                        // Fetch the array from the result set
                                        $mission_row = mysqli_fetch_array($mission_query);
                                        
                                        // Check if the 'content' key exists in the fetched array
                                        if (isset($mission_row['content'])) {
                                            // Echo the content
                                            echo $mission_row['content'];
                                        } else {
                                            // Handle the case where 'content' key is not set
                                            echo "Content not found.";
                                        }
                                    } else {
                                        // Handle the case where no rows are returned
                                        echo "No content available.";
                                    }
                                ?>
                                <hr>
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
