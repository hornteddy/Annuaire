<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="fr">
  <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Annuaire</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="css/starter-template.css" rel="stylesheet">
    <script src="js/ie-emulation-modes-warning.js"></script>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Annuaire</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Formulaire</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
		
		<div class="starter-template">
			<h1>Ajout d'un contact</h1>

			<form method="post" action="traitement.php">
				<script>
					function yolo(){
						var txtFile = new XMLHttpRequest();
						txtFile.open("GET", "entreprise.txt", true);
						txtFile.onreadystatechange = function() {
							if (txtFile.readyState === 4) {  // Makes sure the document is ready to parse.
								if (txtFile.status === 200) {  // Makes sure it's found the file.
								document.getElementById('form').innerHTML = txtFile.responseText;
								}
							}
						}
						txtFile.send(null);
					}
					
					function yala(){
						var txtFile = new XMLHttpRequest();
						txtFile.open("GET", "particulier.txt", true);
						txtFile.onreadystatechange = function() {
							if (txtFile.readyState === 4) {  // Makes sure the document is ready to parse.
								if (txtFile.status === 200) {  // Makes sure it's found the file.
									document.getElementById('form').innerHTML = txtFile.responseText;
								}
							}
						}
						txtFile.send(null);
					}
				</script>
				<div class="panel panel-default">
					<div class="panel-heading">Contact de type</div>
					<div class="input-group">
						<span class="input-group-addon">
							<input id="clickMe" class="btn btn-default" type="button" name="type" value="Entreprise" onclick="yolo()" /> 
						</span>
						<span class="input-group-addon">				
							<input id="clickMem" class="btn btn-default" type="button" name="type" value="Particulier" onclick="yala()" /> 
						</span>
					</div>
				</div>
			
				<div id=form></div>

			</form>
		</div>
	</div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
