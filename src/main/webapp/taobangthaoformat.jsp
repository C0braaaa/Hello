<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<style>
    table, th, td {
        border:2px solid black;
    }
</style>
<h1>Table</h1>
<table style = "width:25%" >
    <tr>
        <th>1</th>
        <th>2</th>
        <th rowspan="2" colspan="2">3</th>
    </tr>
    <tr>
        <td>4</td>
        <td>5</td>

    </tr>
    <tr>
        <td rowspan="2">6</td>
        <td rowspan="1">7</td>
        <td rowspan="2" colspan="1">8</td>
        <td rowspan="2" colspan="1">9</td>
    </tr>
        <td rowspan="2">10</td>
</table>
</html>