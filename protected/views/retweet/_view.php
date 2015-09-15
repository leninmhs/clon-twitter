<div class="view">

		<b><?php echo CHtml::encode($data->getAttributeLabel('id_retweet')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_retweet),array('view','id'=>$data->id_retweet)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('retweet')); ?>:</b>
	<?php echo CHtml::encode($data->retweet); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('usuario')); ?>:</b>
	<?php echo CHtml::encode($data->usuario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_creacion')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_creacion); ?>
	<br />


</div>