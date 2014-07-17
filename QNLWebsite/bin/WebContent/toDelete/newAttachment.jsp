<%@page import="com.qnl.facade.*,com.qnl.core.*,java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<META HTTP-EQUIV="EXPIRES" CONTENT="0">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META NAME="AUTHOR" CONTENT="(c) Qatar National Library">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="stylesheet" href='css/admin.css' />
<link rel="stylesheet" href="css/jHtmlArea.css" />


<script src="scripts/jquery-1.8.3.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/custom/jquery-ui-1.9.2.custom.css" />
<script src="scripts/jquery-ui-1.9.2.custom.js" type="text/javascript"></script>
<script src="scripts/jHtmlArea-0.7.5.js" type="text/javascript"></script>

</head>
<body>
	<div style="width: 100%">
		<div class="adminForm">
			<form method=post id="formAdmin" action="FileUploadController.do"
				enctype="multipart/form-data">
				<div class="leftCol">
					<div class="formRow">
						<div class="formLabel">
							Title<font color="red">*</font>
						</div>
						<div class="formField">
							<input type="text" name="title" id="title" maxlength="100"
								placeholder="Arabic" required="required" size="35" />
						</div>
					</div>
					<div class="formRow">
						<div class="formLabel">
							Title (Arabic)<font color="red">*</font>
						</div>
						<div class="formField">
							<input type="text" name="title_ar" id="title_ar" maxlength="100"
								placeholder="Title in Arabic" required="required" size="35"
								dir="rtl" lang="ar_QA" />
						</div>
					</div>
					<div class="formRow">
						<div class="formLabel">Alternate Text</div>
						<div class="formField">
							<input type="text" name="alt_text" id="alt_text" maxlength="100"
								placeholder="Arabic" size="35" />
						</div>
					</div>
					<div class="formRow">
						<div class="formLabel">
							Alternate text (Arabic)<font color="red">*</font>
						</div>
						<div class="formField">
							<input type="text" name="alt_text_ar" id="alt_text_ar"
								maxlength="100" placeholder="Title in Arabic"
								required="required" size="35" dir="rtl" lang="ar_QA" />
						</div>
					</div>

					<div class="formRow">
						<div class="formLabel">
							File Source<font color="red">*</font>
						</div>
						<div class="formField">
							<input type="file" name="src" id="src" />
						</div>
					</div>
					<div class="formRow">
						<div class="formLabel">File Source(Arabic)</div>
						<div class="formField">
							<input type="file" name="src_ar" id="src" />
						</div>
					</div>
					<div class="formRow">
						<input type="submit" value="Save">
					</div>					
				</div>
			</form>
		</div>
	</div>
</body>
<script>		
	$(function() {
		$("input[type=submit]").button();

	});
</script>
</html>
