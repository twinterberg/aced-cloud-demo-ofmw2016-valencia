<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/sp/verifyActProposalExists"
                xmlns:tns="aced.cloud.demo"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/ProposedActsService/NewActProposalsServices/verifyActProposalExists"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/verifyActProposalExists.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OutputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/verifyActProposalExists"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/NewActProposalsService.wsdl"/>
        <oracle-xsl-mapper:rootElement name="verifyExistenceProposalResponseMessage" namespace="aced.cloud.demo"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SAT FEB 27 10:55:36 CET 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:verifyExistenceProposalResponseMessage>
      <tns:name>
        <xsl:value-of select="/ns0:OutputParameters/ns0:P_ACT_NAME"/>
      </tns:name>
      <tns:proposalExistsYN>
        <xsl:value-of select="/ns0:OutputParameters/ns0:P_ACT_PROPOSED_YN"/>
      </tns:proposalExistsYN>
      <tns:numberOfVotes>
        <xsl:value-of select="/ns0:OutputParameters/ns0:P_NUMBER_OF_VOTES"/>
      </tns:numberOfVotes>
      <tns:registrationDate>
        <xsl:value-of select="/ns0:OutputParameters/ns0:P_REGISTRATION_DATE"/>
      </tns:registrationDate>
      <tns:description>
        <xsl:value-of select="/ns0:OutputParameters/ns0:P_DESCRIPTION"/>
      </tns:description>
      <tns:imageURL>
        <xsl:value-of select="/ns0:OutputParameters/ns0:P_IMAGE_URL"/>
      </tns:imageURL>
    </tns:verifyExistenceProposalResponseMessage>
  </xsl:template>
</xsl:stylesheet>
