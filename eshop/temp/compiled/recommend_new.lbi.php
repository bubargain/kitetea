<?php if ($this->_var['new_goods']): ?>
<div class="newwaik">
<div class="newnei">
<p class="newwaip"><a href="search.php?intro=new" target="_blank">New Goods</a></p>
<ul id="aaa">
<?php $_from = $this->_var['new_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['goods']['iteration']++;
?>
<li <?php if ($this->_foreach['goods']['iteration'] % 5 == 1): ?>style="margin-left:0px;"<?php else: ?>class="s2"<?php endif; ?> onMouseOver="this.className='s1'" onMouseOut="this.className='s2'">
<a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" width="186" height="186" /><span><?php echo $this->_var['goods']['short_style_name']; ?></span><p class="jinzicu">Preferential price:<?php if ($this->_var['goods']['promote_price'] != ""): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></p><del>original price:<?php echo $this->_var['goods']['market_price']; ?></del></a>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>
</div><div style="clear:both;"></div>
</div>
<?php endif; ?>
