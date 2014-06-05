function initCKEDITOR(editorName, typ)
{
	if(typ == "full")
	{
		CKEDITOR.replace( editorName, {
				toolbar: [
						{ name: 'tools', items: [ 'Maximize'] },
						{ name: 'basicstyles', items: [ 'Bold', 'Italic', 'Strike', '-'] },
						{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
				      	{ name: 'clipboard',  items: [ 'Cut', 'Copy', 'Paste', '-', 'Undo', 'Redo' ] },
				    	
				    	'/',
				    	{ name: 'links', items: [ 'Link', 'Unlink' ] },			    	
				    	//{ name: 'insert', items: [  'Table', 'HorizontalRule', 'SpecialChar', 'Youtube'] },
				    	{ name: 'document',  items: [ 'Source'] }
				    	
				    	]
				
			});
	}
	
	if(typ == "min")
	{
		CKEDITOR.replace( editorName, {
				toolbar: [
						{ name: 'tools', items: [ 'Maximize'] },
						{ name: 'basicstyles', items: [ 'Bold', 'Italic'] },
						{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'] },
				      	{ name: 'clipboard',  items: [ 'Cut', 'Copy', 'Paste'] },				    	
				    	'/',
				    	{ name: 'links', items: [ 'Link', 'Unlink' ] },			    	
				    	//{ name: 'insert', items: [  'Table', 'HorizontalRule', 'SpecialChar', 'Youtube'] },
				    	{ name: 'document', items: [ 'Source'] }
				    	
				    	]
				
			});
	}
	
	CKEDITOR.config.contentsCss = ['../css/qnl2.css','../css/bootstrap.min.css'];
	CKEDITOR.config.allowedContent = true;
	CKEDITOR.config.font_style = {
		    element:        'span',
		    styles:         { 'font-family': '#(family)' },
		    overrides:      [ { element: 'font', attributes: { 'face': null } } ]
	};
	
	
	
};

function initCKEDITOR(editorName, typ, lang)
{
	if(typ == "full")
	{
		CKEDITOR.replace( editorName, {
				toolbar: [
						{ name: 'tools', items: [ 'Maximize'] },
						{ name: 'basicstyles', items: [ 'Bold', 'Italic', 'Strike', '-'] },
						{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
				      	{ name: 'clipboard',  items: [ 'Cut', 'Copy', 'Paste', '-', 'Undo', 'Redo' ] },
				    	
				    	'/',
				    	{ name: 'links', items: [ 'Link', 'Unlink' ] },			    	
				    	//{ name: 'insert', items: [  'Table', 'HorizontalRule', 'SpecialChar', 'Youtube'] },
				    	{ name: 'document',  items: [ 'Source'] }				    	
				    	],
				contentsLangDirection: lang=='ar'?'rtl':'ltr',
				contentsLanguage: lang
				
			});
	}
	
	if(typ == "min")
	{
		CKEDITOR.replace( editorName, {
				toolbar: [
						{ name: 'tools', items: [ 'Maximize'] },
						{ name: 'basicstyles', items: [ 'Bold', 'Italic'] },
						{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'] },
				      	{ name: 'clipboard',  items: [ 'Cut', 'Copy', 'Paste'] },				    	
				    	'/',
				    	{ name: 'links', items: [ 'Link', 'Unlink' ] },			    	
				    	//{ name: 'insert', items: [  'Table', 'HorizontalRule', 'SpecialChar', 'Youtube'] },
				    	{ name: 'document', items: [ 'Source'] }				    	
				    	],
				contentsLangDirection: lang=='ar'?'rtl':'ltr',
				contentsLanguage: lang
				
			});
	}
	
	CKEDITOR.config.contentsCss = ['../css/qnl2.css','../css/bootstrap.min.css'];
	CKEDITOR.config.allowedContent = true;
	CKEDITOR.config.font_style = {
		    element:        'span',
		    styles:         { 'font-family': '#(family)' },
		    overrides:      [ { element: 'font', attributes: { 'face': null } } ]
	};
	
	
};


function getHTML(editorName) {

	var objEditor = CKEDITOR.instances[editorName];
	
	return objEditor.getData();
}