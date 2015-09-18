<div class="view">


    <b><?php echo CHtml::encode($data->getAttributeLabel('usuario')); ?>:</b>
    <?php echo CHtml::encode($data->usuario); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('nombre_completo')); ?>:</b>
    <?php echo CHtml::encode($data->nombre_completo); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('biografia')); ?>:</b>
    <?php echo CHtml::encode($data->biografia); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('foto_perfil')); ?>:</b>
    <?php echo CHtml::image(Yii::app()->baseUrl . "/images/" . $data->foto_perfil);   //array('height' => 100, 'width' => 100); ?>
    <br />

    <?php
    If (!Seguidor::model()->exists("seguidor = " . Yii::app()->user->id . " AND siguiendo = $data->id_usuario ")) {
//boton seguir
        echo CHtml::ajaxLink('Seguir', Yii::app()->createUrl('seguidor/seguir', array('id' => $data->id_usuario)), array(
            //'type'=>'POST',
            'success' => 'js:function(string){
		$("#btn-seguir-' . $data->id_usuario . '").fadeOut();
		$("#btn-dejarseguir-' . $data->id_usuario . '").fadeIn();
 }'
                ), array(
            'id' => 'btn-seguir-' . $data->id_usuario,
            'class' => 'btn btn-danger small-btn',
        ));
    } else {
//boton siguiendo con mouseOver dejar de seguir
        echo CHtml::ajaxLink('Siguiendo', Yii::app()->createUrl('seguidor/dejarSeguir', array('id' => $data->id_usuario)), array(
            'success' => 'js:function(string){
		$("#btn-seguir-' . $data->id_usuario . '").fadeIn();
		$("#btn-dejarseguir-' . $data->id_usuario . '").fadeOut();
 }'
                ), array(
            'id' => 'btn-dejarseguir-' . $data->id_usuario,
            'class' => 'btn btn-info small-btn',
            'onMouseOver' => '$("#btn-dejarseguir-' . $data->id_usuario . '").text("Dejar de Seguir");',
            'onMouseOut' => '$("#btn-dejarseguir-' . $data->id_usuario . '").text("Siguiendo");',
            'confirm' => 'Estas seguro de querer dejar de seguir a ' . $data->nombre_completo . '?'
        ));
    }


    echo CHtml::ajaxLink('Dejar de Seguir', Yii::app()->createUrl('seguidor/dejarSeguir', array('id' => $data->id_usuario)), array(
        'success' => 'js:function(string){
		$("#btn-seguir-' . $data->id_usuario . '").fadeIn();
		$("#btn-dejarseguir-' . $data->id_usuario . '").fadeOut();
 }'
            ), array(
        'id' => 'btn-dejarseguir-' . $data->id_usuario,
        'class' => 'btn btn-info small-btn',
        'style' => 'display:none;',
        'confirm' => 'Estas seguro de querer dejar de seguir a ' . $data->nombre_completo . '?'
    ));

    echo CHtml::ajaxLink('Seguir', Yii::app()->createUrl('seguidor/seguir', array('id' => $data->id_usuario)), array(
        'success' => 'js:function(string){
		$("#btn-seguir-' . $data->id_usuario . '").fadeOut();
		$("#btn-dejarseguir-' . $data->id_usuario . '").fadeIn();
 }'
            ), array(
        'id' => 'btn-seguir-' . $data->id_usuario,
        'class' => 'btn btn-danger small-btn',
        'style' => 'display:none;',
    ));
    ?>

    <?php /*


      <b><?php echo CHtml::encode($data->getAttributeLabel('id_usuario')); ?>:</b>
      <?php echo CHtml::link(CHtml::encode($data->id_usuario),array('view','id'=>$data->id_usuario)); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('correo')); ?>:</b>
      <?php echo CHtml::encode($data->correo); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:</b>
      <?php echo CHtml::encode($data->password); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('fk_idioma')); ?>:</b>
      <?php echo CHtml::encode($data->fk_idioma); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('fk_pais')); ?>:</b>
      <?php echo CHtml::encode($data->fk_pais); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('fk_pregunta_secreta')); ?>:</b>
      <?php echo CHtml::encode($data->fk_pregunta_secreta); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('respuesta_secreta')); ?>:</b>
      <?php echo CHtml::encode($data->respuesta_secreta); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('telefono')); ?>:</b>
      <?php echo CHtml::encode($data->telefono); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('foto_perfil')); ?>:</b>
      <?php echo CHtml::encode($data->foto_perfil); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('imagen_fondo')); ?>:</b>
      <?php echo CHtml::encode($data->imagen_fondo); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('activo')); ?>:</b>
      <?php echo CHtml::encode($data->activo); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('fecha_creacion')); ?>:</b>
      <?php echo CHtml::encode($data->fecha_creacion); ?>
      <br />

      <b><?php echo CHtml::encode($data->getAttributeLabel('sitioweb')); ?>:</b>
      <?php echo CHtml::encode($data->sitioweb); ?>
      <br />



     */ ?>

</div>
