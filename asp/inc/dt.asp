<%
dim baglan

set baglan = server.createobject("adodb.connection")
baglan.open "provider=microsoft.jet.oledb.4.0;data Source=" & server.mappath("./data.mdb")
%>