<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts2 File Upload Demo</title>
</head>
<body>
<script src="./jquery-1.4.2.min.js"></script>
<script src="http://malsup.github.com/jquery.form.js" ></script>
	<script type="text/javascript">
		$(document).ready(function() 
		{
			alert("test");
			/* $(".buttonClass").click(   function() 
		    {
				var formdata = new FormData(document.getElementById("fileForm"));  
				$.ajax({
		        	url: "uploadFile.action",
		        	type: "POST",
		        	data: formdata,
		        	processData: false,
		        	contentType: false,
		        	success: function (res) {
		        		alert("Hello world!");
		        	}
		    	});
				
		   }); */
		   var options = {
			        beforeSend : function() {
			               
			        },
			        uploadProgress : function(event, position, total, percentComplete) {
			        },
			        success : function() {
			        },
			        complete : function(response) {
			        },
			        error : function() {
			        }
			};
			$("#fileForm").ajaxForm(options);
		}); 

	</script>
	<center>
		<h1>File Upload 4 with Struts 2</h1>
		<s:form id="fileForm" action="uploadFile"  enctype="multipart/form-data" method="post">
			<s:file id="file" name="fileUpload" label="Select a file to upload" size="30"/>
			<s:submit value="Upload" /> 
		</s:form>
		
	</center>
</body>
</html>