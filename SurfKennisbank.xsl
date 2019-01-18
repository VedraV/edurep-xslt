<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:lom="http://www.imsglobal.org/xsd/imsmd_v1p2" 
	version="1.0" 
	xsi:schemaLocation="http://www.imsglobal.org/xsd/imsmd_v1p2 http://www.imsglobal.org/xsd/imsmd_v1p2p4.xsd http://www.openarchives.org/OAI/2.0/ http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd">
<xsl:output method="xml" indent="yes" encoding="UTF-8" standalone="no"/>

	<xsl:include href="edurep://repositoryToVdexMapping"/>
	<xsl:include href="edurep://validate"/>
	<!--<xsl:include href="edurep://quality"/>-->
	
	 <!-- Collectienaam voor het koppelen van -->
	<xsl:variable name="collectionName">
		<xsl:text>SurfKennisbank</xsl:text>
	</xsl:variable>

	<!-- De door de collectie gebruikte namespace -->
	<xsl:variable name="usedNamespace">
		<xsl:text>lom</xsl:text>
	</xsl:variable>

<xsl:template match="/">
	<xsl:element name="lom:lom" namespace="http://www.imsglobal.org/xsd/imsmd_v1p2">
		<xsl:attribute name="xsi:schemaLocation">http://www.imsglobal.org/xsd/imsmd_v1p2 imsmd_v1p2p4.xsd</xsl:attribute>
		<xsl:apply-templates select="//lom:general"/>
		<xsl:apply-templates select="//lom:lifecycle"/>
		<xsl:apply-templates select="//lom:metametadata"/>
		<xsl:apply-templates select="//lom:technical"/>
		<xsl:apply-templates select="//lom:educational"/>
		<xsl:apply-templates select="//lom:rights"/>
		<xsl:apply-templates select="//lom:relation"/>
		<xsl:apply-templates select="//lom:annotation"/>
		<xsl:apply-templates select="//lom:classification"/>

		<!-- Mapping begrippenkader -->
		<!--<xsl:call-template name="collectionMapping"/>-->
		<!-- Maak een classificatie voor de validatie -->
		<xsl:call-template name="buildClassification"/>
		<!-- Maak een classificatie voor de kwaliteitsmeting -->
		<!--<xsl:call-template name="qualityAssessor"/>-->
		<xsl:call-template name="ensureAccessrights">
			<xsl:with-param name="taxons" select="'RestrictedAccess::beperkte toegang||'"/>
		</xsl:call-template>
	</xsl:element>
</xsl:template>


    <!-- default copy -->
	<xsl:template match="@*|node()">
		<xsl:call-template name="validateValue"/>
	</xsl:template>

</xsl:stylesheet>

