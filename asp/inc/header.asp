<%
if not session("girdikmi")="girdik" then
%>
<span class="stil4"><a href="login.asp">giri� yap</a> veya <a href="register.asp">kay�t ol</a></span>
<%
else
%>
<span class="stil4">ho�geldin, <a href="<%=session("username")%>"><%=session("username")%></a></span>
<%
end if
%>