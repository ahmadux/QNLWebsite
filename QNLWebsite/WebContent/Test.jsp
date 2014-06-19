<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<html >
<head>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<style>
th
{
	cursor: pointer;
}
</style>
</head>
<body>
<div class="col-xs-6 col-md-3">
<table id="data" class="table table-bordered">
    <tr class="active">
        <th onclick="javascript:doSort('data','ID',true,parseInt);">ID</th>
        <th onclick="javascript:doSort('data','Name',true,function(a){return a.toUpperCase();});">Name</th>
        <th onclick="javascript:doSort('data','Price',true,parseFloat);">Price</th>
        <th onclick="javascript:doSort('data','Arabic',true,function(a){return a;});">Arabic</th>
    </tr>
    <tr>
        <td>1000</td>
        <td>Usman Ahmad</td>
        <td>100.09</td>
        <td>عثمان</td>
    </tr>
    <tr>
        <td>1001</td>
        <td>Testing</td>
        <td>100.08</td>
        <td>عثمان احمد</td>
    </tr>
</table>
</div>
</body>
<script>
var jObj;
var myTableHeaders = [];

$(document).ready(function () {

    
    var i = 0;
    var JString = "";
    var JLine = "";

    $('#data tr th').each(function () {
        myTableHeaders.push($(this).text());
    });

    $('#data tr').each(function () {
        $(this).children('td').each(function () {
            if (JLine != "") JLine += ",";
            JLine += "'" + myTableHeaders[i++].trim() + "':'" + $(this).text().trim() + "'";

        });
        if (JLine != "") {
            if (JString != "") JString += ",";
            JString += "{" + JLine + "}";
        }
        JLine = "";
        i = 0;
    });

    jObj = eval("[" + JString + "]");
});

function doSort(tabID, fld, dir, sortFldFunc) {
    var sort_by = function (field, reverse, primer) {
        var key = function (x) {
            return primer ? primer(x[field]) : x[field]
        };

        return function (a, b) {
            var A = key(a),
                B = key(b);
            return ((A < B) ? -1 : ((A > B) ? 1 : 0)) * [-1, 1][+ !! reverse];
        }
    };
   
    jObj.sort(sort_by(fld, dir, sortFldFunc));
    
    updateTable(tabID, fld);
}

function updateTable(tabID, fld) {
    $('#data tr th').each(function () {
        if (fld == $(this).text()) $(this).addClass('success')
        else $(this).removeClass('success');
    });

    var i = 0;
    var j = -1;
    
    $('#' + tabID + ' tr').each(function () {
    	i = 0;
        $(this).children('td').each(function () {
        	
        	$(this).text(jObj[j][myTableHeaders[i]]);
            i++;
            
        });
        j++;
    });

}
</script>
</html>