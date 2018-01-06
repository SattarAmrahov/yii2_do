<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>

<?php
	if ( Yii::$app->session->hasFlash('success') ) {
		Yii::$app->session->getFlash('success');
	}
?>

<?php $form = ActiveForm::begin(); ?>
	<?= $form->field($model, 'name'); ?>
	<?= $form->field($model, 'email'); ?>
	<?= Html::submitButton('Submit it', ['class' => 'btn btn-success']); ?>
<?php ActiveForm::end(); ?>