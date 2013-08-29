<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.openarchives.org/OAI/2.0/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
	<xsl:output method="xml" indent="yes" encoding="UTF-8" standalone="no"/>
	
	<!-- Include VDEX mappings -->
	<xsl:include href="edurep://discipline_20060628"/>
	<xsl:include href="edurep://discipline_domains_lb_20110301"/>
	<xsl:include href="edurep://discipline_mathematics_20110923"/>
	<xsl:include href="edurep://domeinoverstijgende_vakken_mbo_2009"/>
	<xsl:include href="edurep://educationallevel_20060628"/>
	<xsl:include href="edurep://educationallevel_20071115"/>
	<xsl:include href="edurep://kerndoelen_po_04_2006"/>
	<xsl:include href="edurep://kerndoelen_onderbouw_vo_20071115"/>
	<xsl:include href="edurep://opleidingsdomeinen_en_studierichtingen_mbo_2010"/>
	<xsl:include href="edurep://referentiekader_taal_en_rekenen_czp_2009"/>
	<xsl:include href="edurep://so_learner_properties_20100304"/>
	<xsl:include href="edurep://vakaanduiding_po_2009"/>
	<xsl:include href="edurep://vakaanduiding_vo_20071115"/>
	
	<!-- Afwijkende VDEX'en voor Opmaat -->
	<xsl:include href="edurep://educationallevel_czp_20090924"/>
	<xsl:include href="edurep://vakaanduidingen_po_so_20090924"/>

	<!-- Map repositories and VDEX -->
	<xsl:template name="collectionMapping">
		<xsl:choose>
			<xsl:when test="$collectionName = 'acadin'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'artik'">
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'biodesk'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'BNL'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_newToOld"/>
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'codenamefuture'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'digibordopschool'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'DigilessenVO'">
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'digimaster'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Digischool'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'eigenwijzer'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'ETV'">
				<xsl:call-template name="vdex_classification_domeinoverstijgende_vakken_mbo_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'ETV_Video'">
				<xsl:call-template name="vdex_classification_domeinoverstijgende_vakken_mbo_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'FreudenthalInstituut'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_referentiekader_taal_en_rekenen_czp_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'geologievannederland'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'gkncontent'">
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'HanzehogeschoolGroningen'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'khan_exercise'">
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'khan_video'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_newToOld"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_newToOld"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'krantindeklas'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_domeinoverstijgende_vakken_mbo_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Leermiddelen_Educatheek'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Leraar24_Dossier'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Leraar24_Video'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'les20'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Lesidee'">
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'LesbankNL'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'metaplus'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_newToOld"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_newToOld"/>
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_newToOld"/>
				<xsl:call-template name="vdex_classification_domeinoverstijgende_vakken_mbo_2009_newToOld"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_newToOld"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_newToOld"/>
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_newToOld"/>
				<xsl:call-template name="vdex_classification_referentiekader_taal_en_rekenen_czp_2009_newToOld"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_newToOld"/>
				<xsl:call-template name="vdex_classification_discipline_domains_lb_20110301_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'NICL'">
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'NME'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'nmegids'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'opmaat'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20090924_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_so_20090924_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'OVC'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'PassieVoorHoreca'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'podium'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'proefjes'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'qmp'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Samenmaken'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Schooltv'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'sme'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_onderbouw_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'StudioVO'">
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Teleblik'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'TaalEnRekenen'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_domeinoverstijgende_vakken_mbo_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_oldToNew"/>
				<xsl:call-template name="vdex_classification_referentiekader_taal_en_rekenen_czp_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'TSS_Mobile_Repository'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'tumult'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'videoserver'">
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'webkwestie'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'wellant'">
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_newToOld"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'wikiwijs_repository'">
				<xsl:call-template name="vdex_classification_discipline_domains_lb_20110301_oldToNew"/>
				<xsl:call-template name="vdex_classification_domeinoverstijgende_vakken_mbo_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_opleidingsdomeinen_en_studierichtingen_mbo_2010_oldToNew"/>
				<xsl:call-template name="vdex_classification_referentiekader_taal_en_rekenen_czp_2009_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_vo_20071115_oldToNew"/>
				<xsl:call-template name="vdex_classification_vakaanduidingen_po_2009_oldToNew"/>
			</xsl:when>
			<xsl:when test="$collectionName = 'Wiskunde_Open_Leermiddelenbank'">
				<xsl:call-template name="vdex_classification_discipline_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_educationallevel_czp_20060628_oldToNew"/>
				<xsl:call-template name="vdex_classification_kerndoelen_po_04_2006_oldToNew"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
