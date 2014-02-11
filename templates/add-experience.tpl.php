<form id="addExperience" action="index.php?site=experience&action=insert" method="post">
	<input class="highlight" type="text" name="company" maxlength="45" style="width:100px;" />
	(<input class="edit" type="text" name="city" maxlength="15" style="width:100px;" />/<input class="edit" type="text" name="country" maxlength="15" style="width:100px;" />):
	<input class="edit" type="text" name="start" maxlength="7" style="width:100px;" /> - <input class="edit" type="text" name="end" maxlength="7" style="width:100px;" />
	<div style="margin-left:20px;">
		<span class="highlight">Function:</span> <input class="edit" type="text" name="function" maxlength="45" style="width:100px;" /><br />
		<span class="highlight">Description:</span>
		<textarea class="edit" name="description" style="height:100px;"></textarea>
	</div>
	<div style="text-align:right;"><a href="document.getElementById('addExperience').submit()">Save</a> <a href="index.php?site=experience">Cancel</a></div>
</form>