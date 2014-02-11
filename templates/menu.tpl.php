<ul id="menu">
	<?foreach ($arr_menu as $item) {?>
	<li class="menuitem"><a href="index.php?site=<?=$item["link"]?>"><?=$item["description"]?></a></li>
	<?}?>
</ul>