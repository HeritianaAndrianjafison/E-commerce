<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList" %>
<%@ page import="model.beans.Produit" %> 

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Gestion de produit</title>
    <script>
            /* Cette fonction permet d'afficher une vignette pour chaque image sélectionnée */
            function readFilesAndDisplayPreview(files) {
                let imageList = document.querySelector('#list'); 
                imageList.innerHTML = "";
                
                for ( let file of files ) {
                    let reader = new FileReader();
                    
                    reader.addEventListener( "load", function( event ) {
                        let span = document.createElement('span');
                        span.innerHTML = '<img height="60" src="' + event.target.result + '" />';
                        imageList.appendChild( span );
                    });

                    reader.readAsDataURL( file );
                }
            }
        </script>
  </head>
  <body> 
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">ADMIN</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="deco">deconnexion <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="home">Acceuil</a>
          </li>
          <li class="nav-item">
            <a style="display: none;" class="nav-link" href="liste_achat.php">Liste des Membrew</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Crud
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="backOffice">Inserer un Produit </a>
              <a class="dropdown-item" href="crud?supr=ok">Suprimer un  Produit </a>
              <a class="dropdown-item" href="crud?maj=ok">Metre a jour un Produit </a>

              <div class="dropdown-divider"></div>
            </div>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="recherche" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">recherce</button>
        </form>
      </div>
    </nav>
    <div class="container" >
      <div class="row">
        <div id="block1" class="col-md-12">
          <h2 class="h2">Inserer nouveau produit</h2>
          <form action="fileuploadservlet" method="POST" enctype="multipart/form-data">
                   <div class="form-group">
                    <label for="categories"></label>
                      Categories:
                        <select name="categorie" id="pet-select" class="form-control" >
                             <c:forEach items="${ categories }" var="categorie" varStatus="status">
                                <option value="${ categorie.getId_categorie() }"><c:out value="${ categorie.getNom_categorie() }" />
                                </option>
                              </c:forEach>
                        </select>
                    </div>
              <p>nom du Produit : 
                  <input class="form-control form-control-lg" type="text" name="nom_produit">
              </p>
              <p>prix du Produit : 
                  <input class="form-control form-control-lg" type="number" name="prix_produit">
              </p>
               <p>
                   <label for="desciption">
                  Description du produit :
                   </label>
                   <br />
                   
                   <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" name="desciption" id="desciption" rows="5" cols="40">
                   </textarea>       
               </p>
              <p>
                image du Produit : <br> 
                 <div class="form-group">
            <div class="row">
               <div class="col-md-4">
                   <div class="form-group">
                        <input type="file" name="file" /> <br> <br>
                        <input type="submit" class ="btn btn-success" value="Upload"  accept="image/*" onchange="readFilesAndDisplayPreview(this.files);" />
                   </div>
               </div> 
            </div>
        </div>
          </form>
        </div>
        <div id="block2" class="col-md-6" style="border:1px solid black; display:none;">
          <h2>Suprimer des produits</h2>
            <form action="supr_categorie.php" method="post">
              <p>
                Choisir le categorie : 
                 <SELECT name="categorie" size="1">

                  </SELECT>
              </p>
              <p><input type="submit" name="envoyer"></p>
            </form>
        </div>
        <div id="block2" class="col-md-6" style="border:1px solid black; display:none;">
          <h2>mettre a jour  un produit</h2>
          <form action="udpate_produit.php" method="post">
              <p>
                Choisir le categorie : 
                 <SELECT name="categorie" size="1">
                       <?php include("liste_categorie.php"); ?>
                  </SELECT>
              </p>
              <p><input type="submit" name="envoyer"></p>
            </form>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
