<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.zkoss.org/jsp/zul" prefix="z" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <z:init class="org.zkoss.zk.ui.util.Composition" arg0="/WEB-INF/pages/zul/plantilla.zul" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="-1" />
        <%
            request.setAttribute(org.zkoss.zk.ui.sys.Attributes.NO_CACHE, Boolean.TRUE);
        %>
        <title>Reporte de cumplimiento de ventas por vendedor</title>
    </head>
    <body> 
        <z:page>
            <z:window self="@{define(left)}" title="Reporte de cumplimiento de ventas por vendedor">

                <z:label style="margin:20px 20px 10px 10px" 
                         value="Período: "/>
                <z:datebox id="createdDatebox1" value="${win$composer.inventoryItem.createdDate}"
                           format="dd/MM/yyyy" constraint="no empty" />
                <z:label style="margin:20px 20px 10px 10px" 
                         value="- "/>
                <z:datebox id="createdDatebox2" value="${win$composer.inventoryItem.createdDate}"
                           format="dd/MM/yyyy" constraint="no empty" />


                <img style="cursor: help" 
                     alt="ayuda"
                     src="images/botonAyuda.gif"
                     title="Es el período de meses anteriores a incluir en el reporte">

                <z:button style="margin:20px 20px 10px 10px;clear:left;float:right"
                          label="Generar Reporte"/>
                <z:grid style="clear:right;float:left; margin:10px">

                    <z:auxhead>
                        <z:auxheader style="text-align:center" 
                                     colspan="10"  label="PROYECCION CONTRA VENTAS"/>
                    </z:auxhead> 
                    <z:auxhead>
                        <z:auxheader style="text-align:left" 
                                     colspan="10"  label="LINEA:"/>
                    </z:auxhead>

                    <z:columns>
                        <z:column hflex="15">Vendedor</z:column>
                        <z:column hflex="6">Proyeccion</z:column>
                        <z:column hflex="6">ventas</z:column>
                        <z:column hflex="4">Cumplimiento %</z:column>

                    </z:columns>
                    <z:rows>
                        <z:row>
                            <z:label value="Juan Perez" />
                            <z:label value="100" />
                            <z:label value="80" />
                            <z:label value="80" />                                                                                
                        </z:row>
                    </z:rows>
                </z:grid>
            </z:window>
            <z:div self="@{define(right)}" width="100%">

            </z:div> 
        </z:page>
    </body>
</html>
