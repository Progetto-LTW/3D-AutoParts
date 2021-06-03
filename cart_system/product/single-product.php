<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parts 3D-AutoParts</title>
    <link rel="stylesheet" href="style.css">    
</head>

<body>
    <div class="container">
    <?php
  			include 'config.php';
  			$stmt = $conn->prepare("SELECT * FROM product WHERE id='$_GET[id]'");
  			$stmt->execute();
  			$result = $stmt->get_result();
  			while ($row = $result->fetch_assoc()):
  		?>
        
          <div class="product-image">
            
            <img src="<?= $row['product_image'] ?>" alt="" class="product-pic">
            
          </div>
          
          <div class="product-details">
            <header>
              <h1 class="title"><?= $row['product_name']?></h1>
              
              <div class="price">

                <span class="current"><?= $row['product_price']?> €</span>
              </div>
              <div class="rate">
                <a href="#!" class="active">★</a>
                <a href="#!" class="active">★</a>
                <a href="#!" class="active">★</a>
                <a href="#!">★</a>
                <a href="#!">★</a>
              </div>
            </header>
            <article>
              <h5>Descrizione:</h5>
              <p><?= $row['product_desc']?></p>
            </article>
            <div class="controls">
             
              <div class="size">
                <h5>Codice prodotto: <br> <br> <?= $row['product_code']?> </h5>
              </div>

              <div class="qty">
                <h5>Stampa 3D: <br> <br> <?= $row['product_3d']?> </h5>
              </div>
            </div>
            <?php endwhile; ?>
            <div class="footer">
              <button type="button" >
                <a href="../../3d-form/3d-form.html"style="color:white">
                <img src="image/3d-stampa.png" width="70px" height="50px" alt="">
                 
                Stampa 3D </a>
              </button>
              
            </div>
          </div>
          
        </div>
   
</body>
</html>