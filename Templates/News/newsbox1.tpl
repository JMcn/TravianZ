<h5><img src="img/en/t2/newsbox1.gif" alt="newsbox 1"></h5>
<?php

$online = mysql_num_rows(mysql_query("SELECT * FROM " . TB_PREFIX . "users WHERE " . time() . "-timestamp < (60*10) AND tribe!=0 AND tribe!=4 AND tribe!=5"));
$users = mysql_num_rows(mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE "."access=2 OR access=0"));
?>

<div class="news">
<table width="100%" border="0">
<tr>
<td><b>总人数</td>
<td>: <font color="Red"><?php echo $users ?></font></b></td>
</tr>
<tr>
<td align="left"><b>在线人数</td>
<td>: <font color="Red"><?php echo $online ?></font></b></td>
</tr>
<tr>
<td><b>服务器倍速</td>
<td>: <font color="Red"><?php echo SPEED;?> 倍</font></b></td>
</tr>
<tr>
<td><b>行军倍速</td>
<td>: <font color="Red"><?php echo INCREASE_SPEED;?> 倍</font></b></td>
</tr>
<!-- <tr>
<td><b>Evasion Speed</td>
<td>: <font color="Red"><?php echo EVASION_SPEED;?></font></b></td>
</tr> -->
<tr>
<td><b>地图大小</td>
<td>: <font color="Red"><?php echo WORLD_MAX;?>x<?php echo WORLD_MAX;?></font></b></td>
</tr>
<tr>
<td><b>村庄发展速度</td>
<td>: <font color="Red"><?php if(CP == 0){ echo "快"; } else if(CP == 1){ echo "慢"; } ?></font></b></td>
</tr>
<tr>
<td><b>新手保护期</td>
<td>: <font color="Red"><?php echo (PROTECTION/3600);?> hrs</font></b></td>
</tr>
<tr>
<!-- <td><b>Medal Interval</td>
<td>: <font color="Red"><?php if(MEDALINTERVAL >= 86400){ echo ''.(MEDALINTERVAL/86400).' Days'; } else if(MEDALINTERVAL < 86400){ echo ''.(MEDALINTERVAL/3600).' Hours'; } ?></font></b></td>
</tr> -->
<tr>
<td><b>服务器开始时间</td>
<td>: <font color="Red"><?php echo START_DATE;?></font></b></td>
</tr>
</table>
</div>
