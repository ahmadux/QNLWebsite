 <script language="javascript" type="text/javascript" src="../scripts/imageDocSelection.js"></script>
<div class="modal fade col-xs-7" id="objectSelectionModal" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="overflow:hidden">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clearSelectionList();">&times;</button>
          <h4 class="modal-title">Upload an Image</h4>
        </div>
        <div class="modal-body selection-form" >
			<input type="hidden" value="${param.f}" id="folderName" name="folderName" />
						
			<div id="folderUp" class="col-xs-12 image-gallery">
			</div>	
			<div class="col-xs-12 image-gallery" id="loadedObjects">	
			</div>        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="clearSelectionList();">Close</button>
          <button type="button" class="btn btn-primary" onclick="openSelectionAttributeModal();">Ok</button>
        </div>
      </div>
    </div>
  </div>
	
	<div class="modal fade col-xs-7" id="selectionAttributeModal" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true" style="overflow:hidden">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clearSelectionAttributeList();">&times;</button>
          <h4 class="modal-title">Caption(s) and Resize</h4>
        </div>
        <div class="modal-body">				
			<div class="col-xs-12  image_gallery_vertical" id="selectedObjects">	
			</div>        	
        </div>
        <div class="modal-footer">        
	        <div class="col-xs-8" id="resizer">
	      		Resize&nbsp;Images&nbsp;to:
	          <input id='formatSize' size="4" type='text' maxlength='3' value='100'>&nbsp;px
	        </div>
	        <div class="col-xs-4">        	     	
	          <button type="button" class="btn btn-default form-inline" data-dismiss="modal" onclick="clearSelectionAttributeList();">Close</button>
	          <button type="button" class="btn btn-primary form-inline" onclick="insertHTML();">Ok</button>
	        </div>
        </div>
      </div>
    </div>
  </div>