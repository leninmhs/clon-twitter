<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */
?>


<div class="form">
    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'login-form',
        'enableClientValidation' => true,
        'clientOptions' => array(
            'validateOnSubmit' => true,
        ),
    ));
    ?>

    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
    <body>

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <div class="container">
            <div class="row vertical-offset-100">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">                                
                            <div class="row-fluid user-row">
                                <center><h1><p style="color: black; font-size:30px;" ><b><span style="color: #81BEF7;">Tweets Banavih</span></b></p></h1></center>
                                <img src="<?php echo Yii:: app()->baseUrl . '/images/clon-twitter.jpg' ?> "  class="img-responsive" alt="Conxole Admin"/>
                                <?php echo $form->error($model, 'username'); ?>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form id="verticalForm" class="well form" action="/clon-twitter/index.php?r=site/login" method="post">

                                <fieldset>
                                    <label class="panel-login">
                                        <div class="login_result"></div>
                                    </label>
                                    <input id="LoginForm_username" class="form-control" type="text" name="LoginForm[username]" placeholder="Usuario"><br>
                                    <input id="LoginForm_password" class="form-control" type="password" name="LoginForm[password]" placeholder="Contraseña">
                                    <!--<input class="form-control" placeholder="Username" id="username" type="text">-->
                                    <!--<input class="form-control" placeholder="Password" id="password" type="password">-->
                                    <br><br>
                                    <input class="btn btn-lg btn-success btn-block" type="submit" id="yw0"  name="yt0" value="Login">
                                    <!--<button  class="btn btn-default" type="submit">Entrar</button>-->
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</div>
<?php $this->endWidget(); ?>


