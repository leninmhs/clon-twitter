<?php
$this->breadcrumbs=array(
	'Retweets'=>array('index'),
	$model->id_retweet=>array('view','id'=>$model->id_retweet),
	'Update',
);

	$this->menu=array(
	array('label'=>'List Retweet','url'=>array('index')),
	array('label'=>'Create Retweet','url'=>array('create')),
	array('label'=>'View Retweet','url'=>array('view','id'=>$model->id_retweet)),
	array('label'=>'Manage Retweet','url'=>array('admin')),
	);
	?>

	<h1>Update Retweet <?php echo $model->id_retweet; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>