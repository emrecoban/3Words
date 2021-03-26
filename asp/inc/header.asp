<%
if not session("girdikmi")="girdik" then
%>
<span class="stil4"><a href="login.asp">giriþ yap</a> veya <a href="register.asp">kayýt ol</a></span>
<%
else
%>
<span class="stil4">hoþgeldin, <a href="<%=session("username")%>"><%=session("username")%></a></span>
<%
end if
%>