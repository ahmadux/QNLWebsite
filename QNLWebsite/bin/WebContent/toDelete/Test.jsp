<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.10.1/themes/smoothness/jquery-ui.css" />
<script src="scripts/ajaxfileupload.js"></script>
<script>
$(function(){
	$("#input[type=button]").button();
});

function ajaxFileUpload()
{
	$.ajaxFileUpload
	(
		{
			url:'AjaxFileUpload.do?nfn=test',
			secureuri:false,
			fileElementId:'file',
			dataType: 'json',							
			success: function (data, status)
			{
				if(typeof(data.error) != 'undefined')
				{
					if(data.error != '')
					{
						alert(data.error);
					}else
					{
						alert(data.msg);
					}
				}
				
			},
			error: function (data, status, e)
			{
				alert(e);
			}
		}
	)
	
	return false;

}
</script>
<body>
<form method="POST" id="frm" name="frm" enctype="multipart/form-data">	
	<input type="file" name="file" id="file"  accept="image/*" />
	<input type="button" value="Upload" onclick="return ajaxFileUpload();" /> 
</form>
</body>
</html>