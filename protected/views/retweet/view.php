<?php
$this->breadcrumbs=array(
	'Retweets'=>array('index'),
	$model->id_retweet,
);

$this->menu=array(
array('label'=>'List Retweet','url'=>array('index')),
array('label'=>'Create Retweet','url'=>array('create')),
array('label'=>'Update Retweet','url'=>array('update','id'=>$model->id_retweet)),
array('label'=>'Delete Retweet','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id_retweet),'confirm'=>'Are you sure you want to delete this item?')),
array('label'=>'Manage Retweet','url'=>array('admin')),
);
?>

<h1>View Retweet #<?php echo $model->id_retweet; ?></h1>

<?php $this->widget('booster.widgets.TbDetailView',array(
'data'=>$model,
'attributes'=>array(
		'id_retweet',
		'retweet',
		'usuario',
		'fecha_creacion',
),
)); ?>
