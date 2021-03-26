<html>
<head>
<!-- #include file="inc/dt.asp" -->




<title>3Kelime - Hata</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<link rel="stylesheet" type="text/css" href="css/style_2.css" /><style type="text/css">
<!--
a:link {
	color: #333333;
}
a:visited {
	color: #CCCCCC;
}
-->
</style></head>
<body bgcolor="#FFFFFF" topmargin="0" marginheight="0">
<!-- ImageReady Slices (Untitled-1) -->
<table id="Table_01" width="901" height="600" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="5">
			<img src="images/Untitled-1_01.gif" width="900" height="5" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td rowspan="4">
			<img src="images/Untitled-1_02.gif" width="59" height="595" alt=""></td>
		<td background="images/Untitled-1_03.gif" width="173" height="27" alt="">
			<!-- #include file="inc/header.asp" --></td>
		<td width="443" height="78" rowspan="3" valign="top" background="images/Untitled-1_04.gif" alt="">
			<!-- #include file="inc/header2.asp" --></td>
		<td rowspan="2">
			<a href="default.asp"><img src="images/Untitled-1_05.gif" width="154" height="46" alt="3Kelime - Anasayfa"></a></td>
		<td rowspan="4">
			<img src="images/Untitled-1_06.gif" width="71" height="595" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="27" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/Untitled-1_07.gif" width="173" height="51" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="19" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/Untitled-1_08.gif" width="154" height="32" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="32" alt=""></td>
	</tr>
	<tr>
	  <td width="173" height="27" colspan="3" valign="middle" background="images/Untitled-1_09.gif" alt="">
        <div align="center" class="stil6">
        <%
		if request.querystring("id")="3" then
		%>
		Böyle bir kimlik sistemde yok veya yanlış !<br>
Lütfen tekrar deneyin.<br>
<a href="javascript:history.back(-1);">Geri dön.</a>
<%
elseif request.querystring("id")="4" then
%>
Daha önce bu kimlik bilgisiyle kayıt yapılmış !<br>
Lütfen farklı kimlik bilgisi deneyin.<br>
<a href="javascript:history.back(-1);">Geri dön.</a>
<%
else
%>
Hatalı veya eksik girdiniz.<br>
Lütfen tekrar deneyin.<br>
<a href="javascript:history.back(-1);">Geri dön.</a>
<%
end if
%>
          
              </div>
      <br></td>
		<td>
			<img src="images/spacer.gif" width="1" height="517" alt=""><br></td>
	</tr>
</table>
<!-- #include file="inc/copy.asp" -->
</body>
</html>