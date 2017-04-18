<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

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
			<%--<form action="<%=path %>/adminAdd.action" name="formAdd" method="post">--%>
				     <%--<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">--%>
						<%--<tr bgcolor="#EEF4EA">--%>
					        <%--<td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>管理员添加</span></td>--%>
					    <%--</tr>--%>
						<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
						    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
						         <%--用户名：--%>
						    <%--</td>--%>
						    <%--<td width="75%" bgcolor="#FFFFFF" align="left">--%>
						        <%--<input type="text" name="userName" size="20"/>--%>
						    <%--</td>--%>
						<%--</tr>--%>
						<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
						    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
						        <%--密码：--%>
						    <%--</td>--%>
						    <%--<td width="75%" bgcolor="#FFFFFF" align="left">--%>
						        <%--<input type="password" name="userPw" id="userPw" size="22"/>--%>
						    <%--</td>--%>
						<%--</tr>--%>
						<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
						    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
						        <%--&nbsp;--%>
						    <%--</td>--%>
						    <%--<td width="75%" bgcolor="#FFFFFF" align="left">--%>
						       <%--<input type="submit" value="提交"/>&nbsp;--%>
						       <%--<input type="reset" value="重置"/>&nbsp;--%>
						       <%--<input type="buttom" value="取消" onclick="closeOpen()"/>--%>
						    <%--</td>--%>
						<%--</tr>--%>
					 <%--</table>--%>
			<%--</form>--%>

					<div class="panel panel-info">
						<div class="panel-heading">管理员添加</div>
						<div class="panel-body">
							<form action="<%=path %>/adminAdd.action" name="formAdd" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1" name="userName">用户名：</label>
									<input type="text" name="userName" class="form-control" id="exampleInputEmail1" placeholder="userName">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">密码&nbsp;：</label>
									<input type="password" class="form-control"name="userPw" id="userPw"  id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="add_buttom_group">
									<button type="submit" class="btn btn-info">提交</button>
									<button type="reset" class="btn btn-info">重置</button>
									<button type="buttom" class="btn btn-info" onclick="closeOpen()">取消</button>
								</div>
							</form>
						</div>
					</div>


   </body>
</html>
