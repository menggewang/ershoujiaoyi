<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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
        
        <script language="javascript">
            function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    }
		    
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<%--<form action="<%=path %>/catelogAdd.action" name="formAdd" method="post">--%>
				     <%--<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">--%>
						<%--<tr bgcolor="#EEF4EA">--%>
					        <%--<td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>商品类别添加</span></td>--%>
					    <%--</tr>--%>
						<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
						    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
						         <%--分类名称：--%>
						    <%--</td>--%>
						    <%--<td width="75%" bgcolor="#FFFFFF" align="left">--%>
						        <%--<input type="text" name="catelogName" size="20"/>--%>
						    <%--</td>--%>
						<%--</tr>--%>
						<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
						    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
						        <%--分类描述：--%>
						    <%--</td>--%>
						    <%--<td width="75%" bgcolor="#FFFFFF" align="left">--%>
						        <%--<FCK:editor instanceName="catelogMiaoshu"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">--%>
                                <%--</FCK:editor>--%>
						    <%--</td>--%>
						    <%--</td>--%>
						    <%--</td>--%>
						<%--</tr>--%>
						<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
						    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
						        <%--&nbsp;--%>
						    <%--</td>--%>
						    <%--<td width="75%" bgcolor="#FFFFFF" align="left">--%>
						       <%--<input type="submit" value="提交"/>&nbsp; --%>
						       <%--<input type="reset" value="重置"/>&nbsp;--%>
						       <%--<input type="button" value="取消" onclick="closeOpen()"/>--%>
						    <%--</td>--%>
						<%--</tr>--%>
					 <%--</table>--%>
			<%--</form>--%>

			<div class="panel panel-info">
				<div class="panel-heading">商品类别添加</div>
				<div class="panel-body">
					<form action="<%=path %>/catelogAdd.action" name="formAdd" method="post">
						<table class="table">
							<tr onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
								<td>分类名称：</td>
								<td><input type="text" name="catelogName" size="20"/></td>
							</tr>

						</table>
						<tr onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
							<td> 分类描述：</td>
							<td> <FCK:editor instanceName="catelogMiaoshu"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">
							</FCK:editor></td>
						</tr>
						<tr onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
							<td>&nbsp;</td>
							<td>
								<input type="submit" value="提交"/>&nbsp;
								<input type="reset" value="重置"/>&nbsp;
								<input type="button" value="取消" onclick="closeOpen()"/>
							</td>
						</tr>
						<tr>
							<td>分类名称：</td>
							<td><input type="text" name="catelogName" size="20"/></td>
						</tr>
					</form>
				</div>
			</div>

   </body>
</html>
