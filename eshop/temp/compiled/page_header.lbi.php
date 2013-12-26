<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
</script>
<div class="logo">
<div class="logo_a">
<div class="logoleft"><a href="index.php"><img src="themes/kicshop_langrand/images/logo.gif" width="342" height="86" alt=""></a></div>
<div class="logolefta" id="welcome"><?php echo $this->smarty_insert_scripts(array('files'=>'transport.js,utils.js')); ?>
   <font id="ECS_MEMBERZONE"><?php 
$k = array (
  'name' => 'member_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </font></div>
<div class="logoleftb"><a href="user.php" target="_blank">My account</a> | <a href="user.php?act=order_list" target="_blank">My order</a> | <a href="article_cat.php?id=3" target="_blank">Help center</a> | <a href="#" onclick="window.external.addFavorite('http://www.ok-moban.com/','北京OK模板之家')">Add to Favorites</a> </div>
</div>

<div class="dhbj">
<div class="dh">
<div class="dhb">
<div class="menu_box">
	<div class="menu" id="chromemenu">
		<ul>
			<li class="m_2" onMouseOver="this.className='m_2_h'" onMouseOut="this.className='m_2'"><a href="index.php" <?php if ($this->_var['navigator_list']['config']['index'] == 1): ?>class="cur" <?php endif; ?>><?php echo $this->_var['lang']['home']; ?></a></li>
			<?php $_from = $this->_var['navigator_list']['middle']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav');$this->_foreach['nav_middle_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_middle_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav']):
        $this->_foreach['nav_middle_list']['iteration']++;
?>
			<li class="m_2" onMouseOver="this.className='m_2_h'" onMouseOut="this.className='m_2'"><a href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?> <?php if ($this->_var['nav']['active'] == 1): ?> class="cur"<?php endif; ?> ><?php echo $this->_var['nav']['name']; ?></a></li>
			 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</ul>
	</div>
</div>
</div>
<div class="dhgouwu"><?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
<div class="dgwz">&nbsp;<?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?><a href="flow.php" class="huangc" target="_blank">&nbsp;&nbsp;&nbsp;Settlement</a></div>
</div>
</div>
</div>

<div class="so">
<form id="searchForm" name="searchForm" method="get" action="search.php" onSubmit="return checkSearchForm()">
<DIV class=sov>
<INPUT id="keyword"  value="" name="keywords"></DIV>
<DIV class=soan><A onClick="javascript:document.searchForm.submit();" style="cursor:pointer;"><IMG src="themes/kicshop_langrand/images/soanniu.jpg" border=0></A></DIV>
</form>
<DIV class=sogjc>&nbsp;&nbsp;&nbsp;&nbsp;<B>Hot search terms:</B>
<?php $_from = $this->_var['searchkeywords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'val');if (count($_from)):
    foreach ($_from AS $this->_var['val']):
?><a href="search.php?keywords=<?php echo urlencode($this->_var['val']); ?>"><?php echo $this->_var['val']; ?></a> &nbsp;&nbsp;<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></DIV>
</DIV>
</div>
<div style="clear:both;"></div>
</div>