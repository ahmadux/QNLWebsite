<%@tag description="User Login Tag" pageEncoding="UTF-8"%>
<%@tag import="com.qnl.core.User"%>
<%@attribute name="user" required="true" type="com.qnl.core.User" rtexprvalue="true"%>
<% if(user != null){%>
<div id="userInfo" class="userInfo">


	<h3>Welcome, ${user.name}</h3>
	<div class="formBar">
		<a href="MyAccount.jsp">Account</a>&nbsp;|&nbsp;<a
			href="Logout.jsp?rUrl=render.jsp">Logout</a>
	</div>
</div>
<%} else { %>

<div id="loginContainer">
	<a href="#" id="loginButton"><span>Login</span><em></em> </a>
	<div style="clear: both"></div>
	<div id="loginBox">
		<form id="loginForm">
			<fieldset id="body">
				<fieldset>
					<label for="email">Email Address</label> <input type="text"
						name="email" id="email" />
				</fieldset>
				<fieldset>
					<label for="password">Password</label> <input type="password"
						name="password" id="password" />
				</fieldset>
				<input type="submit" id="login" value="Sign in" /> <label
					for="checkbox"><input type="checkbox" id="checkbox" />Remember
					me</label>
			</fieldset>
			<span><a href="#">Forgot your password?</a> </span>
		</form>
	</div>
</div>

<%}%>
