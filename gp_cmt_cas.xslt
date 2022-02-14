<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:xalan="http://xml.apache.org/xalan"
		xmlns:math="xalan://java.lang.Math"
                exclude-result-prefixes="xs">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <!--<xsl:output omit-xml-declaration="yes" indent="yes"/>-->
    <xsl:template match="/*">
        <Sbsc xmlns="http://www.portal.com/InfranetXMLSchema"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation='http://www.oracle.com/schema/brm CMT_Subscribers.xsd'>

            <xsl:for-each-group select="ActSbsc" group-by="ACCOUNT_NO">
                <ActSbsc id="{current-grouping-key()}">
                    <Act>
                        <ActNo>
                            CMT_ACCT_2021<xsl:value-of select="ACCOUNT_NO"/>
                        </ActNo>
                        <Curr>050</Curr>
                       <!-- 
                                                    <SubSta> -->
                            <!-- Transform from source format to BRM format F01 = Idle = TBD, F02 = Active = A, F03 = Inactive = I -->
                            <!-- <xsl:variable name="active" select="'A'"/>
                                                             <xsl:variable name="inactive" select="'I'"/>
                            <xsl:variable name="STATUS"/>
                            <xsl:choose>
                                <xsl:when test="STATUS = 'F02'">
                                    <xsl:value-of select="$active"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$inactive"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </SubSta> -->
                        <SubSta>A</SubSta>
                        <BType>
                            <!-- C: Consumer, B: Business -->
                            <xsl:variable name="consumer" select="'C'"/>
                            <xsl:variable name="business" select="'B'"/>
                            <xsl:choose>
                                <xsl:when test="'0'">
                                    <xsl:value-of select="$consumer"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$business"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </BType>
                        <Eff>
                        <xsl:value-of select="EFFECTIVE_T"/>
                        </Eff>
                        <CrtT>
                        <xsl:value-of select='xs:dateTime("1970-01-01T00:00:00") + 20211001123000 * xs:dayTimeDuration("PT0.001S")'/>
                        </CrtT>
                        <GLSgmt>.</GLSgmt>
                        <Locale>en_US</Locale>
                        <xsl:for-each-group select="current-group()" group-by="CONTACT_TYPE">
                            <ANArr id="{current-grouping-key()}">
                                <Add>
                                    <xsl:value-of select="ADDRESS"/>
                                </Add>
                                <City>
                                    <xsl:value-of select="CITY"/>
                                </City>
                                <CntTyp>
                                    <xsl:value-of select="CONTACT_TYPE"/>
                                    <!-- "0=Home Address, 1=Billing Address, 2=Service Address" -->
                                    <xsl:variable name="home" select="'Home Address'"/>
                                    <xsl:variable name="billing" select="'Billing Address'"/>
                                    <xsl:variable name="service" select="'Service Address'"/>
                                    <xsl:choose>
                                        <xsl:when test="'0'">
                                            <xsl:value-of select="$home"/>
                                        </xsl:when>
                                        <xsl:when test="'1'">
                                            <xsl:value-of select="$billing"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="$service"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </CntTyp>
                                <Cnt>Bangaladesh</Cnt>
                                <EAdd>
                                    <xsl:value-of select="EMAIL_ADDR"/>
                                </EAdd>
                                <FNm>
                                    <xsl:value-of select="FIRST_NAME"/>
                                </FNm>
                                <MNm>
                                    <xsl:value-of select="MID_NAME"/>
                                </MNm>
                                <LNm>
                                    <xsl:value-of select="LAST_NAME"/>
                                </LNm>
                                <Sal>
                                    <xsl:value-of select="SALUTATION"/>
                                </Sal>
                                <Stt>
                                    <xsl:value-of select="STATE"/>
                                </Stt>
                                <Tit>
                                    <xsl:value-of select="TITLE"/>
                                </Tit>
                                <Zip>
                                    <xsl:value-of select="ZIP"/>
                                </Zip>
                                <xsl:for-each-group select="current-group()" group-by="CONTACT_NO">
                                    <APhArr>
                                        <xsl:attribute name="id">
                                            <xsl:value-of select="position()"/>
                                        </xsl:attribute>
                                        <Ph>
                                            <xsl:value-of select="CONTACT_NO"/>
                                        </Ph>
                                        <PhTyp>
                                            <!-- "0=Home Address, 1=Billing Address, 2=Service Address" -->
                                            <xsl:variable name="home" select="'H'"/>
                                            <xsl:variable name="work" select="'W'"/>
                                            <xsl:variable name="portable" select="'P'"/>
                                            <xsl:variable name="fox" select="'F'"/>
                                            <xsl:variable name="pager" select="'PG'"/>
                                            <xsl:variable name="pop" select="'PP'"/>
                                            <xsl:variable name="support" select="'S'"/>
                                            <xsl:choose>
                                                <xsl:when test="'60'">
                                                    <xsl:value-of select="$home"/>
                                                </xsl:when>
                                                <xsl:when test="'33'">
                                                    <xsl:value-of select="$work"/>
                                                </xsl:when>
                                                <xsl:when test="'33'">
                                                    <xsl:value-of select="$portable"/>
                                                </xsl:when>
                                                <xsl:when test="'33'">
                                                    <xsl:value-of select="$fox"/>
                                                </xsl:when>
                                                <xsl:when test="'33'">
                                                    <xsl:value-of select="$pager"/>
                                                </xsl:when>
                                                <xsl:when test="'33'">
                                                    <xsl:value-of select="$pop"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="$support"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </PhTyp>
                                    </APhArr>
                                </xsl:for-each-group>
                            </ANArr>
                        </xsl:for-each-group>
                    </Act>       
                </ActSbsc>
            </xsl:for-each-group>
        </Sbsc>
    </xsl:template>
</xsl:stylesheet>

