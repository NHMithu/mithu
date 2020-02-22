<?php include "inc/database.php"; ?><!--include database source-->
<?php include "inc/head.php"; ?><!--include head source-->
<!--page body start-->
<div class="">
  <div class="w3-row">
    <div class="w3-col m1 w3-hide-small"><p><br></p></div>
    <div class="w3-col m2 w3-container w3-padding">
      <form action="/search" method="GET">
        <input type="text" class="w3-input w3-border w3-round" placeholder="Search">
      </form>
      <br>
      <p class="rfont w3-small w3-margin-top"><b>ADMIN PANEL</b></p>
      <a href="admin.php" style="text-decoration: none;" > <p class="rfont w3-small w3-bar w3-margin-top w3-text-black"><b>Create new notice >></b></p></a>
      <a href="adminevent.php" style="text-decoration: none;" > <p class="rfont w3-small w3-bar w3-margin-top w3-text-gray w3-hover-text-black"><b>New</b></p></a>
      <a href="admingallery.php" style="text-decoration: none;" > <p class="rfont w3-small w3-bar w3-margin-top w3-text-gray w3-hover-text-black"><b>Upload gallery image</b></p></a>
    </div>
    <div class="w3-col m8 w3-container w3-padding">
      <div class="w3-border w3-padding-large">
        <?php
          if(isset($_POST['new_post'])){
            echo $_SESSION['msgPost'];
            unset($_SESSION['msgPost']);
          }
        ?>
        <p class="rfont"><b>CREATE NOTICE</b></p>
        <hr>
        <div class="">
          <form  action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data">
            <label>Text:</label>
            <textarea type="text" name="text" class="w3-input w3-border" rows="10"></textarea>
            <button class="w3-btn w3-blue w3-right w3-margin-top" name="new_post">POST</button>
            <div class="upload-btn-wrapper w3-margin-top">
              <button class="w3-btn w3-orange">Upload Image</button>
              <input type="file" accept="image/*" name="image" onchange="preview_image(event)">
            </div>
          </form>
          <img id="output_image"/ style="width:200px;"><br>

          <script type='text/javascript'>
            function preview_image(event)
            {
             var reader = new FileReader();
             reader.onload = function()
             {
              var output = document.getElementById('output_image');
              output.src = reader.result;
             }
             reader.readAsDataURL(event.target.files[0]);
            }
          </script>
          </form>
        </div>
      </div>
    </div>
    <div class="w3-col m1 w3-hide-small"><p><br></p></div>
  </div>
  <br>
</div>
<script>
  function hide(){
    document.getElementById('msgPost').style.display="none";
  }
</script>
<!--page body end-->
<?php include "inc/footer.php"; ?><!--include head source-->
