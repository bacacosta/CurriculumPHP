<form id="editExperience-<?=$experience["id_experience"]?>" action="index.php?site=experience&action=update" method="post">
	<input type="hidden" name="id_experience" value="<?=$experience["id_experience"]?>" />
	<input class="highlight" type="text" name="company" maxlength="45" value="<?=$experience["company"]?>" style="width:<?=$_GET["companyWidth"]?>px;" />
	(<input class="edit" type="text" name="city" maxlength="15" value="<?=$experience["city"]?>" style="width:<?=$_GET["cityWidth"]?>px;" />/<input class="edit" type="text" name="country" maxlength="15" value="<?=$experience["country"]?>" style="width:<?=$_GET["countryWidth"]?>px;" />):
	<input class="edit" type="text" name="start" maxlength="7" value="<?=$experience["start"]?>" style="width:<?=$_GET["startWidth"]?>px;" /> - <input class="edit" type="text" name="end" maxlength="7" value="<?=$experience["end"]?>" style="width:<?=$_GET["endWidth"]?>px;" />
	<div style="margin-left:20px;">
		<span class="highlight">Function:</span> <input class="edit" type="text" name="function" maxlength="45" value="<?=$experience["function"]?>" style="width:<?=$_GET["functionWidth"]?>px;" /><br />
		<span class="highlight">Description:</span>
		<textarea class="edit" name="description" style="height:<?=$_GET["descriptionHeight"]?>px;"><?=$experience["description"]?></textarea>
	</div>
	<div style="text-align:right;"><a href="document.getElementById('editExperience-<?=$experience["id_experience"]?>').submit()">Save</a> <a href="index.php?site=experience">Cancel</a></div>
</form>