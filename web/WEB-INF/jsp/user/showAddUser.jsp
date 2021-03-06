<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>人事管理系統——添加用戶</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
	<meta http-equiv="description" content="This is my page" />
	<link href="${ctx}/css/css.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${ctx}/js/ligerUI/skins/Aqua/css/ligerui-dialog.css"/>
	<link href="${ctx}/js/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${ctx }/js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="${ctx }/js/jquery-migrate-1.2.1.js"></script>
	<script src="${ctx}/js/ligerUI/js/core/base.js" type="text/javascript"></script>
	<script src="${ctx}/js/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>
	<script src="${ctx}/js/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
	<script src="${ctx}/js/ligerUI/js/plugins/ligerResizable.jss" type="text/javascript"></script>
	<link href="${ctx}/css/pager.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript">

        $(function(){
            /** 員工表單提交 */
            $("#userForm").submit(function(){
                var username = $("#username");
                var userstatus = $("#userstatus");
                var loginname = $("#loginname");
                var password = $("#password");
                var msg = "";
                if ($.trim(username.val()) == ""){
                    msg = "姓名不能為空！";
                    username.focus();
                }else if ($.trim(userstatus.val()) == ""){
                    msg = "狀態不能為空！";
                    userstatus.focus();
                }else if ($.trim(loginname.val()) == ""){
                    msg = "登錄名不能為空！";
                    loginname.focus();
                }else if ($.trim(password.val()) == ""){
                    msg = "密碼不能為空！";
                    password.focus();
                }
                if (msg != ""){
                    $.ligerDialog.error(msg);
                    return false;
                }else{
                    return true;
                }
                $("#userForm").submit();
            });
        });


	</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr><td height="10"></td></tr>
	<tr>
		<td width="15" height="32"><img src="${ctx}/images/main_locleft.gif" width="15" height="32"></td>
		<td class="main_locbg font2"><img src="${ctx}/images/pointer.gif">&nbsp;&nbsp;&nbsp;當前位置：用戶管理  &gt; 添加用戶</td>
		<td width="15" height="32"><img src="${ctx}/images/main_locright.gif" width="15" height="32"></td>
	</tr>
</table>
<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
	<tr valign="top">
		<td>
			<form action="${ctx}/user/addUser" id="userForm" method="post">
				<!-- 隱藏表單，flag表示添加標記 -->
				<input type="hidden" name="flag" value="2">
				<table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
					<tr><td class="font3 fftd">
						<table>
							<tr>
								<td class="font3 fftd">姓&nbsp;名：<input type="text" name="username" id="username" size="20"/></td>
								<td class="font3 fftd">狀&nbsp;態：<input type="text" name="userstatus" id="userstatus" size="20"/></td>
							</tr>

							<tr>
								<td class="font3 fftd">登錄名：<input name="loginname" id="loginname" size="20" /></td>
								<td class="font3 fftd">密&nbsp;碼：<input name="password" id="password" size="20" /></td>
							</tr>

						</table>
					</td></tr>
					<tr><td class="main_tdbor"></td></tr>

					<tr><td align="left" class="fftd"><input type="submit" value="添加">&nbsp;&nbsp;<input type="reset" value="取消 "></td></tr>
				</table>
			</form>
		</td>
	</tr>
</table>
<div style="height:10px;"></div>
</body>
</html>