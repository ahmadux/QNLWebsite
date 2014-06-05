<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:my="my:my"
	extension-element-prefixes="xsl">
	<xsl:template match="/">
		<html>
			<head>
				<script src="../scripts/bootstrap.min.js"></script>
				<link rel="stylesheet" href="../css/bootstrap.min.css" />
				<style>.indented { margin-left: 10px; margin-right: 10px;} .spaced { padding-top: 10px; padding-bottom: 10 px;}</style>
			</head>
			
			
			<body class="indented">
				<h1>
					<xsl:value-of select="Article/Title" />
				</h1>
			
				<div class="well indented">
					<xsl:value-of select="Article/Abstract" />
				</div>
			
				<div class="indented">
				<h3>Benefit Summary</h3>
				<xsl:value-of select="Article/BenefitSummary"
					disable-output-escaping="yes" />
				</div>
				
				<div class="indented"> 
				<xsl:for-each select="Article/Body/Section">
				<xsl:variable name="i" select="position()" />
				<div class="indented spaced">
					<h4>
						Section <xsl:value-of select="$i" />:<xsl:text>  </xsl:text><xsl:value-of select="SectionHead" />
					</h4>
					<div class="indented">
						<xsl:value-of select="HTML" disable-output-escaping="yes" />
					</div>
				</div>
				</xsl:for-each>
				</div>
				<br />		
				<br />
				<div class="panel panel-info indented">
					<div class="panel-heading">
						<h3 class="panel-title">Related Links</h3>
					</div>
					<div class="panel-body">
						<xsl:for-each select="Article/RelatedLinksBox/LinkItem">							
							<xsl:text disable-output-escaping="yes">&lt;a href="</xsl:text>
							<xsl:value-of select="@Url" />							
							<xsl:text disable-output-escaping="yes">"&gt;</xsl:text>
							<xsl:value-of select="@Title" />
							<xsl:text disable-output-escaping="yes">&lt;/a&gt;</xsl:text>
							<br />
						</xsl:for-each>						
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>