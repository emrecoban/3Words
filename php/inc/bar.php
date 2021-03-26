<div id="bar">
	<div id="headbar">
    	<div id="headlogo"><a href="index.php" title="3Kelime - Ana Sayfa">3Kelime</a></div>
        <div id="headmenu">
        	<ul id="topmenu">
            <?php if(@$_SESSION["girisOK"] == "1"){?>
            	<li><a href="exit.php">Çıkış Yap</a></li>
            <?php }else{?>
            	<li><a onclick="kayitBox()" href="#" id="kayitLink">Kayıt Ol</a></li>
            <?php } ?>
            	<li><a href="nedir.php">Nedir?</a></li>
                <li><a href="index.php">Ana Sayfa</a></li>
            </ul>
        </div>
        <div style="clear:left;"></div>
        <div id="kayitBox" style="display:none;">
        	<h1>Kayıt Ol</h1>
            	<div id="gelenSonuc"></div>
                <div id="formEleman">
                    <input type="text" name="reelname" id="reelname" placeholder="Ad Soyad" required="required" />
                    <input type="email" name="mail" id="mail" placeholder="E-Posta" required="required" />
                    <input type="password" name="pass" id="pass" placeholder="****" required="required" />
                    <button id="submitle">Kayıt Ol</button>
                </div>
        </div>
    </div>
</div>