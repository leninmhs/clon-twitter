<?php
$this->breadcrumbs=array(
	'Retweets'=>array('index'),
	'Create',
);

$this->menu=array(
array('label'=>'List Retweet','url'=>array('index')),
array('label'=>'Manage Retweet','url'=>array('admin')),
);
?>

<h1>Create Retweet</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>