<?php /* @var $this Controller */ ?>
<!DOCTYPE html> 
<html>
    
    <style type="text/css">
        
        body {
            background-image: url("<?php echo Yii::app()->baseUrl; ?>/images/a.jpg")  !important;
            background-color: White !important;
            height: 100% !important;
            width: 100% !important;
            background-size: cover !important;
            /*background-repeat: no-repeat !important;*/
            /*background-position: right bottom  !important;*/
            /*background-attachment:fixed !important;*/
        }
        .navbar-default .nav > li>a, .navbar-default .nav>li>a:focus {
            color: rgba(255,255,255,.7) !important;
        }
        .navbar-default .navbar-nav>li>a {
            color: Black !important;
        }
        .navbar-default.affix .nav > li>a, .navbar-default.affix .nav>li>a:focus {
            color: #222 !important;
        }
        .navbar-default {
            background-color: rgba(255,255,255,.3) !important; 
            border-color: LightSkyBlue !important;
        }
        .navbar-default.affix {
            border-color: rgba(34,34,34,.05) !important;
            background-color: #fff !important;
        }

    </style>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="language" content="en">

        <!-- blueprint CSS framework -->
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print">
        <!--[if lt IE 8]>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection">
        <![endif]-->

        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css">

        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    </head>

    <body>

        <div class="container" id="page">

            <div id="mainmenu">
                <?php
                /* $this->widget('zii.widgets.CMenu',array(
                  'items'=>array(
                  array('label'=>'Home', 'url'=>array('/site/index')),
                  array('label'=>'About', 'url'=>array('/site/page', 'view'=>'about')),
                  array('label'=>'Contact', 'url'=>array('/site/contact')),
                  array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                  array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                  ),
                  )); */



                $this->widget(
                        'booster.widgets.TbNavbar', array(
                    'type' => 'inverse',
                    'brand' => CHtml::encode(Yii::app()->name),
                    'brandUrl' => '#',
                    'collapse' => true, // requires bootstrap-responsive.css
                    'fixed' => false,
                    'fluid' => true,
                    'items' => array(
                        array(
                            'class' => 'booster.widgets.TbMenu',
                            'type' => 'navbar',
                            'items' => array(
//                    array('label' => 'Inicio', 'url' => '#', 'active' => true),
                                array('label' => 'Inicio', 'url' => array('/tweet/index')),
                                array('label' => 'Usuarios', 'url' => array('/usuario/index')),
                            ),
                        ),
//            '<form class="navbar-form navbar-left" action=""><div class="form-group"><input type="text" class="form-control" placeholder="Search"></div></form>',
                        array(
                            'class' => 'booster.widgets.TbMenu',
                            'type' => 'navbar',
                            'htmlOptions' => array('class' => 'pull-right'),
                            'items' => array(
//                    array('label' => //Yii::app()->user->foto_perfil." ".
////				Yii::app()->user->usuario, 
//                                "aqui",'url' => '#'),
                                '---',
                                array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/site/logout'), 'visible' => !Yii::app()->user->isGuest)
                            ),
                        ),
                    ),
                        )
                );


                /*
                  echo CHtml::image(Yii::app()->baseUrl."/images/".Yii::app()->user->getState('foto_perfil'),"texto de alt",              array("height"=>"100", "width"=>"100")  )
                 */
                ?>
            </div><!-- mainmenu -->
            <?php if (isset($this->breadcrumbs)): ?>
                <?php
                $this->widget('zii.widgets.CBreadcrumbs', array(
                    'links' => $this->breadcrumbs,
                ));
                ?><!-- breadcrumbs -->
            <?php endif ?>

<?php echo $content; ?>




        </div><!-- page -->

    </body>
</html>
