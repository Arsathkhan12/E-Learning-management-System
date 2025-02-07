<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<body>
    <?php include('navbar_teacher.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('teacher_notification_sidebar.php'); ?>
            <div class="span9" id="content">
                <div class="row-fluid">
                    <!-- breadcrumb -->
                    <ul class="breadcrumb">
                        <?php
                        $school_year_query = mysqli_query($conn, "SELECT * FROM school_year ORDER BY school_year DESC") or die(mysqli_error($conn));
                        if ($school_year_query_row = mysqli_fetch_array($school_year_query)) {
                            $school_year = $school_year_query_row['school_year'];
                        ?>
                            <li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
                            <li><a href="#">School Year: <?php echo $school_year; ?></a><span class="divider">/</span></li>
                            <li><a href="#"><b>Notification</b></a></li>
                        <?php
                        } else {
                            echo "<li><a href='#'><b>My Class</b></a><span class='divider'>/</span></li>";
                            echo "<li><a href='#'>School Year: Not available</a><span class='divider'>/</span></li>";
                            echo "<li><a href='#'><b>Notification</b></a></li>";
                        }
                        ?>
                    </ul>
                    <!-- end breadcrumb -->
                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-left"></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <div class="pull-right">
                                    Check All <input type="checkbox" name="selectAll" id="checkAll" />
                                    <script>
                                        $("#checkAll").click(function() {
                                            $('input:checkbox').not(this).prop('checked', this.checked);
                                        });
                                    </script>
                                </div>
                                <form id="domainTable" action="read_teacher.php" method="post">
                                    <?php
                                    $query = mysqli_query($conn, "SELECT * FROM teacher_notification
                                        LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_notification.teacher_class_id
                                        LEFT JOIN student ON student.student_id = teacher_notification.student_id
                                        LEFT JOIN assignment ON assignment.assignment_id = teacher_notification.assignment_id 
                                        LEFT JOIN class ON teacher_class.class_id = class.class_id
                                        LEFT JOIN subject ON teacher_class.subject_id = subject.subject_id
                                        WHERE teacher_class.teacher_id = '$session_id'
                                        ORDER BY teacher_notification.date_of_notification DESC") or die(mysqli_error($conn));
                                    
                                    $count = mysqli_num_rows($query);
                                    
                                    while ($row = mysqli_fetch_array($query)) {
                                        $assignment_id = $row['assignment_id'];
                                        $get_id = $row['teacher_class_id'];
                                        $id = $row['teacher_notification_id'];

                                        $query_yes_read = mysqli_query($conn, "SELECT * FROM notification_read_teacher WHERE notification_id = '$id' AND teacher_id = '$session_id'") or die(mysqli_error($conn));
                                        $read_row = mysqli_fetch_array($query_yes_read);

                                        $yes = isset($read_row['student_read']) ? $read_row['student_read'] : null;
                                    ?>
                                        <div class="post" id="del<?php echo $id; ?>">
                                            <?php if ($yes !== 'yes') { ?>
                                                <input name="selector[]" type="checkbox" value="<?php echo $id; ?>">
                                            <?php } ?>
                                            <strong><?php echo $row['firstname'] . " " . $row['lastname']; ?></strong>
                                            <?php echo $row['notification']; ?> In <b><?php echo $row['fname']; ?></b>
                                            <a href="<?php echo $row['link'] . '?id=' . $get_id . '&post_id=' . $assignment_id; ?>">
                                                <?php echo $row['class_name']; ?>
                                                <?php echo $row['subject_code']; ?>
                                            </a>
                                            <hr>
                                            <div class="pull-right">
                                                <i class="icon-calendar"></i>&nbsp;<?php echo $row['date_of_notification']; ?>
                                            </div>
                                        </div>
                                    <?php
                                    }
                                    ?>
                                </form>
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
