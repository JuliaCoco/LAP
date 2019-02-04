<?php

/* display a select statement in a html table,
   the column headline will be the column from the select */

function showTableFromQuery($stmt)
{
    echo '<table>';

    $countAttr = $stmt->columnCount();
    $attribute = array();

    for ($i = 0; $i < $countAttr; $i++)
    {
        $attribute[] = $stmt->getColumnMeta($i);
    }

    echo '<tr>';

    for ($i = 0; $i < $countAttr; $i++)
    {
        echo '<td>'.$attribute[$i]['name'].'</td>';
    }
    echo '</tr>';

    while($row = $stmt->fetch(PDO::FETCH_NUM))
    {
        echo '<tr>';
        foreach ($row as $r)
        {
            echo '<td>'.$r.'</td>';
        }
        echo '</tr>';
    }

    echo '</table>';
}