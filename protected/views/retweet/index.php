<?php
$this->breadcrumbs=array(
	'Retweets',
);

$this->menu=array(
array('label'=>'Create Retweet','url'=>array('create')),
array('label'=>'Manage Retweet','url'=>array('admin')),
);
?>

<h1>Retweets</h1>

<?php $this->widget('booster.widgets.TbListView',array(
'dataProvider'=>$dataProvider,
'itemView'=>'_view',
)); ?>
