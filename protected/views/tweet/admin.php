<?php
$this->breadcrumbs=array(
	'Tweets'=>array('index'),
	'Manage',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
$('.search-form').toggle();
return false;
});
$('.search-form form').submit(function(){
$.fn.yiiGridView.update('tweet-grid', {
data: $(this).serialize()
});
return false;
});
");
?>

<h1>Gestión de Tweets</h1>

<p>
	You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>
		&lt;&gt;</b>
	or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Busqueda Avanzada','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
	<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('booster.widgets.TbGridView',array(
'id'=>'tweet-grid',
'type' => 'striped bordered condensed',
'dataProvider'=>$model->search(),
'filter'=>$model,
'columns'=>array(
		array (
			'header' => 'ID',
			'name' => 'id_tweet',
			'htmlOptions' => array('width' => '80', 'style' => 'font-weight:bold;text-align: center;'),
		),
		'tweet',
		//'foto',
		//'usuario',
		'usuario' => array(
			'name' => 'usuario',
			'header' => 'Nombre Usuario',
			'type'  => 'raw',
			'value' => 'CHtml::link($data->usuario0->nombre_completo, 
					Yii::app()->createUrl("usuario/view",array("id"=>$data->usuario)))',
				
			//'value' => '$data->usuario0->nombre_completo',
			//'filter' => CHtml::listData(EnteEjecutor::model()->findall(), 'id_ente_ejecutor', 'nombre_ente_ejecutor'),
		'filter' => CHtml::listData(Usuario::model()->findall(), 'id_usuario', 'nombre_completo'),
		),
		'fecha_creacion' => array(
			'name' => 'fecha_creacion',
			'header' => 'Fecha',
			'value' => 'Yii::app()->dateFormatter->format("d/M/yy hh:mm a",strtotime($data->fecha_creacion))'
		),
array(
'class'=>'booster.widgets.TbButtonColumn',
),
),
)); ?>
