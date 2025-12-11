<?php
namespace Dao\Carretilla;

use Dao\Table;

class Carretilla extends Table
{
    public static function getAll(int $userId)
    {
        $sql = "SELECT * FROM carretilla WHERE userId = :userId;";
        return self::obtenerRegistros($sql, ["userId" => $userId]);
    }
}
?>
