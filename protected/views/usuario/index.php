<?php
$this->breadcrumbs=array(
	'Usuarios',
);

$this->menu=array(
array('label'=>'Create Usuario','url'=>array('create')),
array('label'=>'Manage Usuario','url'=>array('admin')),
);
?>

<h1>Usuarios</h1>

<?php 

/*$this->widget('booster.widgets.TbListView',array(
'dataProvider'=>$dataProvider,
'itemView'=>'_view',
)); 
*/

$this->widget('booster.widgets.TbListView',array(
'dataProvider'=>$dataProvider,
'itemView'=>'_view',
'template' => '{items} {pager}',
       'pager' => array(
                    'class' => 'ext.infiniteScroll.IasPager', 
                    'rowSelector'=>'.view', 
                    'listViewId' => 'yw0', 
                    'header' => '',
                    'loaderText'=>'Cargando...',
                    'options' => array('history' => false, 'triggerPageTreshold' => 2, 'trigger'=>'Ver más'),
                  )
));



?>
