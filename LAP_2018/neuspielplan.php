<?php

/* include the config for the database connection */
include 'config.php';


/* if the submit button was not pressed, display the form */
if (!isset($_POST['erfassen']))
{
    ?>
    <H1>Spielplan erfassen</H1>
    <form method="post">
        <div class="table">
            <div class="tr">
                Drama:
                <?php
                try
                {
                    /* select values from database and display the values in an select / option element */

                    $query = 'select d.dra_name 
                                  from drama d
                                  where exists (select 1 from event e where e.dra_id = d.dra_id);';
                    $stmt = $con->prepare($query);
                    $stmt->execute();


                    echo '<div class="td">';
                    echo '<select name = "drama">';

                    while($row = $stmt->fetch(PDO::FETCH_NUM))
                    {
                        foreach ($row as $r)
                        {
                            echo '<option value="'.$r.'">'.$r.'</option>';
                        }
                    }
                    echo '</select>';
                    echo '</div>';
                }
                catch (Exception $e)
                {
                    echo $e->getMessage();
                }
                ?>
                <br>
                <div class="td">
                    Anzahl der Aufführungen
                    <input  type="text" name="anzahl">
                </div>
            </div>
            <div class="tr">
                <div class="td">
                    <input type="submit" name="erfassen" value="auswählen">
                </div>
            </div>
        </div>
    </form>
    <?php
}
else
{

    include 'config.php';

    try
    {
        include 'functions.php';
        $query = 'select e.eve_termin as "Aufführung"
              from event e, drama d
              where e.dra_id = d.dra_id
                and d.dra_name = ?;';
        $stmt = $con->prepare($query);
        $stmt->bindParam(1, $drama);
        $stmt->execute();
        showTableFromQuery($stmt);
    }
    catch (Exception $e)
    {
        echo $e->getMessage();
    }
}
?>