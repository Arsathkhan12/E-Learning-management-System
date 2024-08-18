<!-- Modal -->
<div id="directories" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-body">
        <?php
            // Execute the query to fetch the content
            $mission_query = mysqli_query($conn, "SELECT * FROM content WHERE title = 'Directories'") or die(mysqli_error($conn));
            
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
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i> Close</button>
    </div>
</div>
