var loadType = "";
var selType = "";
var editor;
var selFields;
var capFld;


function openObjectSelectionModal(initFolder,selectionType,editorName, selFld, capF)
{	
	var ary;
	editor = CKEDITOR.instances[editorName];
	loadType = initFolder;
	selType = selectionType;
	
	selFields = $("#" + selFld);
	selFields.val('');
	capFld =  $("#" + capF);
	
	if(loadType == "images")
		getObjects(loadObjectsInFolderImgs,initFolder);
	else
		getObjects(loadObjectsInFolderDocs,initFolder);
	
    $("#objectSelectionModal").modal('show');
}

function selection(x,obj)
{		
	if(obj.checked)
	{		
		if((selFields.val() == "")||(selType == "single"))
		{			
			if(selType == "single")
			{
				clearSelectionList();
				obj.checked = true;
			}
			selFields.val(x);
		}
		else
			selFields.val(selFields.val() + "," + x);
	}
	else
	{
		selFields.val(selFields.val().replace("," + x,""));
		selFields.val(selFields.val().replace(x + ",",""));
		selFields.val(selFields.val().replace(x,""));
	}	
		
}



function clearSelectionList()
{
	$("input[class=selectFile]").removeAttr('checked');
	selFields.val("");	
}
    
function loadFolderUp(fldr) 
{
	var theHTML = "";
	if((fldr == "images")||(fldr == "documents"))
		theHTML += "<b>Folder:</b><small>&nbsp;" + fldr + "</small>";
	else
	{
		theHTML += "<b>Folder:</b><small>&nbsp;" + fldr + "</small>";
		theHTML += "<br />";
		theHTML += "<div class='col-md-12'>";
		theHTML += "<div class='thumbnail img-rounded' style='text-align:center;height:175px;width:175px;padding:2px'>";
		theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
		theHTML += "<label>";
		theHTML += "<a href='javascript:folderUp(\"" + fldr + "\");'>Folder Up</a>";
		theHTML += "</label>";
		theHTML += "</div>";
		theHTML += "<img src='../images/folderUp.png' alt='Folder Up' title='Folder Up' width='100px'>";
		theHTML += "</div>";
		theHTML += "</div>";
	}
	$("#folderUp").html(theHTML);
}


function loadObjectsInFolderDocs(ary)
{    	
	var theHTML = "";	
	for(var i=0; i< ary.length; i++)
	{
	
		
		theHTML += "<div class='col-xs-12'>";
		
			if(ary[i].dType == "")
			{
				
				theHTML += "<div class='col-xs-12' style='height:35px;'>";
				theHTML += "<div class='col-xs-3' style='height:100%'>";
				theHTML += "<img src='../images/folder.png' alt='Folder Up' title='" + ary[i].name  + "' height='25px' />";
				theHTML += "</div>";
				theHTML += "<div class='col-xs-9' style='height:100%'>";				
				theHTML += "<a href=\"javascript:getObjects(loadObjectsInFolderDocs,'" + ary[i].location + "/" + ary[i].name + "')\">" + ary[i].name +  "</a>";
				theHTML += "</div></div>";
					
			}
			else
			{
				theHTML += "<div class='col-xs-12' style='height:45px;'>";
				theHTML += "<div class='col-xs-3' style='height:100%;'>";
				theHTML += "<img src='../images/extensions/" + ary[i].dType + ".png' alt='' height='25px' title='' />";
				theHTML += "</div>";
				theHTML += "<div class='col-xs-9' style='height:100%'>";				
				theHTML += "<input type='checkbox' class='selectFile' onclick=\"selection('/" + ary[i].location + "/" + ary[i].name + "',this," + i + ");\">";
				theHTML += ary[i].name;
				theHTML += "<br />";
				theHTML += "<small class='text-muted'>" + ary[i].size + "</small>";
				theHTML += "</div></div>";
				
	 		}
	 		theHTML += "</div>";

	  	};
	  		  	  
	  	$("#loadedObjects").html(theHTML);
}
    
  
function loadObjectsInFolderImgs(ary)
  {    	
  	var theHTML = "";
  	
  	for(var i=0; i< ary.length; i++)
  	{
		
  		theHTML += "<div class='col-md-3'><div class='thumbnail img-rounded' style='text-align:center;height:125px;width:125px;padding:1px'>";
  		
  		if(ary[i].height == 0)
  		{
  			theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
  			theHTML += "<label><a href=\"javascript:getObjects(loadObjectsInFolderImgs,'" + ary[i].location + "/" + ary[i].name + "')\">" + ary[i].name + "</a>";    			
  			theHTML += "</label>";
  			theHTML += "</div>";			
 			theHTML += "<img src='../images/folder.png' alt='Open Folder' title='" + ary[i].name + "' width='100px'>";
  		}
  		else
  		{
  			theHTML += "<div style='overflow:hidden;height:100%;width:100%'>";
  			theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
  			theHTML += "<div class='checkbox'>";
  			theHTML += "<label>";
  			theHTML += "<input type='checkbox' class='selectFile' onclick=\"selection('/" + ary[i].location + "/" + ary[i].name + "',this," + i + ");\">";
  			theHTML += ary[i].name;
  			theHTML += "</label>";
  			
  			theHTML += "</div>";
  			theHTML += "<small>";
  			theHTML += "<span class='text-muted'>";
  			theHTML += ary[i].width + "x" + ary[i].height;
  			theHTML += "</span>";
 			theHTML += "</small>";
 			theHTML += "</div>";
 			theHTML += "<div style='overflow: hidden;height:100%;width:100%;text-align:center;vertical-align:middle'>";
 			theHTML += "<a target='_blank' href='../" + ary[i].location + "/" + ary[i].name + "' ><img src='../" + ary[i].location + "/" + ary[i].name + "' alt='...' title='" + ary[i].name + "'></a>";					
 			theHTML += "</div>";
 			theHTML += "</div>";	
 		}
 		theHTML += "</div></div>";

  	};
  	
  	if(theHTML.substring(theHTML.length-6) != "</div>")
 		theHTML += "</div>";;
   	
 	$("#loadedObjects").html(theHTML);
   };

  function getObjects(callback,fldr) {
  	ary = new Array();	
      $.ajax({
      	type : 'GET',
          url  : "_" + loadType + 'Array.jsp?f=' + fldr,
          dataType : 'json',
          success  : function (data) {            
              var obj;
              var i=0;
              $.each( data, function( j, itemData ) {
                 obj = new Object();
                 obj.name = j;
                 if(loadType == "images")
                 {
                 		obj.height = itemData.height;               		
                 		obj.width = itemData.width;
                 }
                 else
                 {
              		obj.size = itemData.size;
              		obj.dType = itemData.dType;
                 }
                 obj.location = itemData.location;               
                 ary[i++] = obj;
              });
             loadFolderUp(fldr);
             callback(ary);
          },
          error    : function ( XMLHttpRequest, textStatus, errorThrown) {
              alert("An error has occured: " + errorThrown);            
              }       
     });
  }

  function folderUp(f)
  {
 
  	var slashPos = f.lastIndexOf("/");
  	if(loadType == "images")
  		getObjects(loadObjectsInFolderImgs, f.substring(0,slashPos));
  	else
  		getObjects(loadObjectsInFolderDocs, f.substring(0,slashPos));
  	
  }

  function clearSelectionAttributeList()
  {
  	clearSelectionList();
  }

  function openSelectionAttributeModal()
  {
  	var theHTML = "";
  	var objs = selFields.val()==""?null:selFields.val().split(",");
  	var objLoc = "";
  	var ht = "50px";
  	//alert(imgs.length + ":" + selFields.val());
  	
  	if(objs == null )
  	{
  		alert("No Objects selected!");
  		return;
  	}
  	
  	for(var i=0; i< objs.length; i++)
  	{
  		if(loadType == "images")
  			objLoc = objs[i];
  		else
  		{
  			objLoc = "/images/extensions/" + objs[i].substring(objs[i].lastIndexOf('.') + 1).toUpperCase() + ".png";
  			ht = "25px";
  			$('#resizer').hide();
  		}
  		  		  		
  		theHTML += "<div class='col-xs-12'><img src='.." + objLoc + "' alt='' title='' style='height:" + ht + "'>&nbsp;&nbsp;<input type='text' class='input_backup captionText' size='35' placeholder='Caption/Alt text' maxlength='50' value='" + objs[i]  + "' /></div>";
  	}
  	
  	$("#selectedObjects").html(theHTML);
  	$("#objectSelectionModal").modal('hide');
  	$("#selectionAttributeModal").modal('show');	
  }

  function getCaptions()
  {
  	var c = new Array();
  	var x=0;
  	
  	$(".captionText").each(function() 
  	{
  		c[x++]= $(this).val();
  	});
  	
  	return c;
  }
  
  function setCaptions()
  {
	  if(capFld != null)
		  capFld.val(getCaptions());
  }

  function insertHTML() 
  {	 
  	
	  if (editor != null)
  	{
	  	if ( editor.mode == 'wysiwyg' )
	  	{
	  		
	  		if(loadType == "images")
	  			editor.insertHtml(getHorizontalList($("#formatSize").val(),$("#formatAlignment").val(),getCaptions()),"unfiltered_html");
	  		else
	  			editor.insertHtml(getVerticalList($("#formatSize").val(),$("#formatAlignment").val(),getCaptions()),"unfiltered_html");
	  		  		
	  	}
	  	else
	  		alert( 'You must be in HTML View mode!' );
  	} 	
	$("#selectionAttributeModal").modal('hide');
  }

 
  function getHorizontalList(sze,algn,caps)
  {
  	var theHTML = "";
  	var imgs = selFields.val().split(",");
  	for(var i=0; i<imgs.length; i++)
 		theHTML += "<a target='_blank' href='.." + imgs[i] + "' ><img src='.." + imgs[i] + "' alt='" + caps[i] + "' height='" + sze + "px'></a>";					

  			
  	return "<div class='image_gallery img-rounded'>" + theHTML + "</div>";
  }

  
  function getVerticalList(sze,algn,caps)
  {
	  var theHTML = "";
	  var docLoc = "";
	  
	  var docs = selFields.val().split(",");
	  for(var i=0; i<docs.length; i++)
	  {
	  	docLoc = "/images/extensions/" + docs[i].substring(docs[i].lastIndexOf('.') + 1).toUpperCase() + ".png";
	  	
	 	theHTML += "<a target='_blank' href='.." + docs[i] + "' ><img src='.." + docLoc + "' alt='" + caps[i] + "' height='25px'>&nbsp;&nbsp;" + caps[i] + "</a>";					
	  }
	 
	 //alert(theHTML);
	  
	 return "<div class='image_gallery_vertical img-rounded'>" + theHTML + "</div>";
  }

