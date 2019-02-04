<!DOCTYPE HTML>
<html>
  <head>
      <title>DB Schule</title>
      <meta charset="utf-8">
      <link href="schule.css" rel="stylesheet"
      type="text/css">
  </head>
<body>
<nav>
    <?php
    include'nav.html';
    ?>
</nav>
<main>
    <?php
    if(isset($_GET['seite']))
    {
        switch($_GET['seite'])
        {
            case 'start':
                include'start.php';
                break;
            case 'funktion':
                include 'funktion.php';
                break;
            case 'neufunktion':
                include 'neufunktion.php';
                break;
            case 'neuperson':
                include 'neuperson.php';
                break;
            default:
                include'start.php';
        }
    } else {
        include 'start.php';
    }

    ?>
</main>
</body>
</html>