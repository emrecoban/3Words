<%
if not session("girdikmi")="girdik" then
%>

<%
else
%>
<span class="stil4">(<a href="default.asp">cevaplar</a> / <a href="options.asp">ayarlar</a> / <a href="exit.asp">çıkış</a>)</span>
<%
end if
%>