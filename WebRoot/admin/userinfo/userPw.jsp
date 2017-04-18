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
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 var userPwReal="${sessionScope.admin.userPw}";
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("原密码不正确");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("新密码不能空");
                     return ;
                 }
                 if(document.formPw.userPw1.value != document.formPw.userPw2.value)
                 {
                     alert("两次输入的密码不一致");
                     return ;
                 }
                 
                 document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data)
            {
                document.getElementById("indicator").style.display="none";
                alert("修改成功");
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<%--<form method="post" action="<%=path %>/userPwEdit.action" name="formPw">--%>
			<%--<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">--%>
				<%--<tr bgcolor="#EEF4EA">--%>
				    <%--<td colspan="2" background="<%=path %>/images/wbg.gif" class='title'><span>密码修改</span></td>--%>
				<%--</tr>--%>
				<%--<tr bgcolor="#FFFFFF">--%>
				    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
				         <%--登录名：--%>
				    <%--</td>--%>
				    <%--<td width="75%" bgcolor="#FFFFFF">--%>
				        <%--<input type="text" value="${sessionScope.admin.userName }" name="userName" size="20" disabled="disabled"/>--%>
				    <%--</td>--%>
				<%--</tr>--%>
				<%--<tr bgcolor="#FFFFFF">--%>
				    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
				        <%--原密码：--%>
				    <%--</td>--%>
				    <%--<td width="75%" bgcolor="#FFFFFF">--%>
				        <%--<input type="password" name="userPw" id="userPw" size="22"/>--%>
				    <%--</td>--%>
				<%--</tr>--%>
				<%--<tr bgcolor="#FFFFFF">--%>
				    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
				         <%--新密码：--%>
				    <%--</td>--%>
				    <%--<td width="75%" bgcolor="#FFFFFF">--%>
				        <%--<input type="password" id="userPw1" name="userPw1" size="22"/>--%>
				    <%--</td>--%>
				<%--</tr>--%>
				<%--<tr bgcolor="#FFFFFF">--%>
				    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
				        <%--确认密码：--%>
				    <%--</td>--%>
				    <%--<td width="75%" bgcolor="#FFFFFF">--%>
				           <%--<input type="password" name="userPw2" id="userPw2" size="22"/>--%>
				    <%--</td>--%>
				<%--</tr>--%>
				<%--<tr bgcolor="#FFFFFF">--%>
				    <%--<td width="25%" bgcolor="#FFFFFF" align="right">--%>
				        <%--&nbsp;--%>
				    <%--</td>--%>
			        <%--<td width="75%" bgcolor="#FFFFFF">--%>
			             <%--<input type="button" value="修改" onclick="check()"/>--%>
			             <%--&nbsp;&nbsp;&nbsp;--%>
			             <%--<input type="reset" value="重置"/>--%>
			             <%--&lt;%&ndash;<img id="indicator" src="<%=path %>/images/loading.gif" alt="Loading..." style="display:none"/>&ndash;%&gt;--%>
			        <%--</td>--%>
				<%--</tr>--%>
			<%--</table>--%>
			<%--</form>--%>
			
			<div class="panel panel-info">
				<div class="panel-heading">密码修改</div>
				<div class="panel-body">
					<form method="post" action="<%=path %>/userPwEdit.action" name="formPw">
					<div class="table-responsive">
							<table class="table table-bordered table-responsive pw_genggai">
								<tr>
									<td>登录名：</th>
									<td><input type="text" value="${sessionScope.admin.userName }" name="userName" size="20" disabled="disabled"/></th>
								</tr>
								<tr>
									<th scope="row">
										原密码：
									</th>
									<td><input type="password" name="userPw" id="userPw" size="22"/></td>
								</tr>
								<tr>
									<th scope="row">
										新密码：
									</th>
									<td><input type="password" id="userPw1" name="userPw1" size="22"/></td>
								</tr>
								<tr>
									<th scope="row">
										确认密码：
									</th>
									<td><input type="password" name="userPw2" id="userPw2" size="22"/></td>
								</tr>
							</table>

						<div class="add_buttom_group">
							<button type="buttom" class="btn btn-info" onclick="check()" value="修改">修改</button>
							<button type="reset" id="indicator" value="重置" class="btn btn-info"/>重置</button>
						</div>
						</form>
					</div>

				</div>
			</div>
			
   </body>
</html>
