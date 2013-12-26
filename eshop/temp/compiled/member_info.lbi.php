<div id="append_parent"></div>
<?php if ($this->_var['user_info']): ?>

<font class="f4_b"><?php echo $this->_var['user_info']['username']; ?></font>, <?php echo $this->_var['lang']['welcome_return']; ?>！
<a href="user.php"><?php echo $this->_var['lang']['user_center']; ?></a>
 <a href="user.php?act=logout"><?php echo $this->_var['lang']['user_logout']; ?></a>

<?php else: ?>
 <?php echo $this->_var['lang']['welcome']; ?>&nbsp;
 <a href="user.php" class="huang"> Login</a>
 <a href="user.php?act=register" class="huang">Register</a>
<?php endif; ?>