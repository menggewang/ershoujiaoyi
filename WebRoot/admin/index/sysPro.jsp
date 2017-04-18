<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ page import="sun.management.ManagementFactory" %> --%>
<%@ page import="com.sun.management.OperatingSystemMXBean" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />
		<script src="<%=request.getContextPath()%> /js/boostrap.min.js"></script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
	    <%--<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">--%>
		  <%--<tr bgcolor="#EEF4EA">--%>
		    <%--<td colspan="2" background="<%=path %>/images/wbg.gif" class='title'><span>系统基本信息</span></td>--%>
		  <%--</tr>--%>
		  <%--<tr bgcolor="#FFFFFF">--%>
		    <%--<td width="25%" bgcolor="#FFFFFF" align="right">操作系统版本：</td>--%>
		    <%--<td width="75%" bgcolor="#FFFFFF"><%=System.getProperty("os.name") %>&nbsp;&nbsp;<%=System.getProperty("os.version") %></td>--%>
		  <%--</tr>--%>
		  <%--<tr bgcolor="#FFFFFF">--%>
		    <%--<td width="25%" bgcolor="#FFFFFF" align="right">操作系统类型：</td>--%>
		    <%--<td><%=System.getProperty("os.arch") %><!-- x32,x86 --></td>--%>
		  <%--</tr>--%>
		  <%--<tr bgcolor="#FFFFFF">--%>
		    <%--<td width="25%" bgcolor="#FFFFFF" align="right">用户,目录,临时目录：</td>--%>
		    <%--<td><%=application.getRealPath("/")%></td>--%>
		  <%--</tr>--%>
		  <%--<tr bgcolor="#FFFFFF">--%>
		    <%--<td width="25%" bgcolor="#FFFFFF" align="right">JDK版本：</td>--%>
		    <%--<td><%=System.getProperty("java.version") %></td>--%>
		  <%--</tr>--%>
		  <%--<tr bgcolor="#FFFFFF">--%>
		    <%--<td width="25%" bgcolor="#FFFFFF" align="right">JKD安装目录：</td>--%>
		    <%--<td><%=System.getProperty("java.home") %></td>--%>
		  <%--</tr>--%>
		  <%-- <tr bgcolor="#FFFFFF">
		    <td width="25%" bgcolor="#FFFFFF" align="right">总内存/剩余内存：</td>
		    <td>
                <% OperatingSystemMXBean osmb = (OperatingSystemMXBean) ManagementFactory.getOperatingSystemMXBean();%>
				<b><%=osmb.getTotalPhysicalMemorySize() / 1024/1024 %></b>MB&nbsp;&nbsp;/&nbsp;&nbsp;<b><%=osmb.getFreePhysicalMemorySize() / 1024/1024 %></b>MB
            </td>
		  </tr> --%>

			<div class="panel panel-info">
				<div class="panel-heading">系统基本信息</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-bordered table-responsive">
							<colgroup>
								<col class="col-xs-1">
								<col class="col-xs-7">
							</colgroup>
							<thead>
							<tr>
								<th>操作系统版本：	</th>
								<th><%=System.getProperty("os.name") %>&nbsp;&nbsp;<%=System.getProperty("os.version") %></th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<th scope="row">
									操作系统类型：
								</th>
								<td><%=System.getProperty("os.arch") %><!-- x32,x86 --></td>
							</tr>
							<tr>
								<th scope="row">
									用户,目录,临时目录：
								</th>
								<td><%=application.getRealPath("/")%></td>
							</tr>
							<tr>
								<th scope="row">
									JDK版本：
								</th>
								<td><%=System.getProperty("java.version") %></td>
							</tr>
							<tr>
								<th scope="row">
									JKD安装目录：
								</th>
								<td><%=System.getProperty("java.home") %></td>
							</tr>
							</tbody>
						</table>
					</div>

				</div>
			</div>
	</body>
</html>
