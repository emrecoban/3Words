<html>
<head>
<!-- #include file="inc/dt.asp" -->

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<link rel="stylesheet" type="text/css" href="css/style_2.css" />
</head>
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
			<a href="default.asp"><img border="0" src="images/Untitled-1_05.gif" width="154" height="46" alt="3Kelime - Anasayfa"></a></td>
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
<%
if not session("girdikmi")="girdik" then
%>
<title>3Kelime - 3 Kelime De Ben</title>
	  <td width="173" height="27" colspan="3" valign="middle" background="images/Untitled-1_09.gif" alt="">
        <div align="center" class="stil6"><span class="stil7">Hakkınızda ki <strong>3</strong> Kelime.</span><br>
      Siz de merak etmiyor musunuz ?</div>
      <br></td>
<%
else
%>
<title>3Kelime - Cevaplar</title>
<!-- #include file="inc/member_home.asp" -->
<%
end if
%>
		<td>
			<img src="images/spacer.gif" width="1" height="517" alt=""><br></td>
	</tr>
</table>
<!-- #include file="inc/copy.asp" -->
</body>
</html>