<%@ page language="java" pageEncoding="UTF-8" import="com.model.TUser" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
           function userDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?userId="+userId;
               }
           }
           function userFreeze(userId)
           {
               if(confirm('您确定冻结吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?freeze=1&userId="+userId;
               }
           }
           function userUse(userId )
           {
               if(confirm('您确定启用吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?freeze=0&userId="+userId;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<%--<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">--%>
				<%--<tr bgcolor="#E7E7E7">--%>
					<%--<td height="14" colspan="10" background="<%=path %>/images/tbg.gif">&nbsp;注册用户维护&nbsp;</td>--%>
				<%--</tr>--%>
				<%--<tr align="center" bgcolor="#FAFAF1" height="22">--%>
					<%--<td width="5%">ID</td>--%>
					<%--<td width="10%">用户名</td>--%>
					<%--<td width="10%">密码</td>--%>
					<%--<td width="10%">真实姓名</td>--%>
					<%--<td width="10%">住址</td>--%>
					<%--<td width="5%">性别</td>--%>
					<%--<td width="15%">联系方式</td>--%>
					<%--<td width="15%">E-mail</td>--%>
					<%--<td width="10%">QQ</td>--%>
					<%--<td width="10%">操作</td>--%>
		        <%--</tr>	--%>
				<%--<s:iterator value="#request.userList" id="user">--%>
				<%--<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<s:property value="#user.userId"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<s:property value="#user.userName"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
					    <%--<s:property value="#user.userPw"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<s:property value="#user.userRealname"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<s:property value="#user.userAddress"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
					    <%--<s:property value="#user.userSex"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<s:property value="#user.userTel"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<s:property value="#user.userEmail"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
					    <%--<s:property value="#user.userQq"/>--%>
					<%--</td>--%>
					<%--<td bgcolor="#FFFFFF" align="center">--%>
						<%--<%--%>
						<%--TUser user = (TUser) request.getAttribute("user") ;--%>
						<%--if( user.getUserDel().equals("freeze") ) {--%>
						<%--%>--%>
						<%--<a href="#" onclick="userUse(<s:property value="#user.userId"/>)" class="pn-loperator"> 启用 </a> | --%>
						<%--<%--%>
						<%--} else {--%>
						<%--%>--%>
						<%--<a href="#" onclick="userFreeze(<s:property value="#user.userId"/>)" class="pn-loperator">冻结</a> | --%>
						<%--<% } %>--%>
						<%--<a href="#" onclick="userDel(<s:property value="#user.userId"/>)" class="pn-loperator">删除</a>--%>
					<%--</td>--%>
				<%--</tr>--%>
				<%--</s:iterator>--%>
			<%--</table>--%>


			<div class="panel panel-info">
				<div class="panel-heading">注册用户维护</div>
				<div class="panel-body">
					<form action="/ershou/adminAdd.action" name="formAdd" method="post">
						<table class="table">
							<tr>
								<td>ID</td>
								<td>用户名</td>
								<td>密码</td>
								<td>真实姓名</td>
								<td>住址</td>
								<td>性别</td>
								<td>联系方式</td>
								<td>E-mail</td>
								<td>QQ</td>
								<td>操作</td>
							</tr>
							<s:iterator value="#request.userList" id="user">
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userId"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userName"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userPw"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userRealname"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userAddress"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userSex"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userTel"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userEmail"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#user.userQq"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<%
											TUser user = (TUser) request.getAttribute("user") ;
											if( user.getUserDel().equals("freeze") ) {
										%>
										<a href="#" onclick="userUse(<s:property value="#user.userId"/>)" class="pn-loperator"> 启用 </a> |
										<%
										} else {
										%>
										<a href="#" onclick="userFreeze(<s:property value="#user.userId"/>)" class="pn-loperator">冻结</a> |
										<% } %>
										<a href="#" onclick="userDel(<s:property value="#user.userId"/>)" class="pn-loperator">删除</a>
									</td>
								</tr>
							</s:iterator>
						</table>
						
					</form>
				</div>
			</div>
	</body>
</html>
