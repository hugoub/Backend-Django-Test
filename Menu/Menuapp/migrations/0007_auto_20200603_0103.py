# Generated by Django 3.0.6 on 2020-06-03 05:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Menuapp', '0006_elegir_menu_cambios'),
    ]

    operations = [
        migrations.RenameField(
            model_name='empleado',
            old_name='whatsapp',
            new_name='id_slack',
        ),
        migrations.AddField(
            model_name='empleado',
            name='user_slack',
            field=models.CharField(default=1, max_length=20),
            preserve_default=False,
        ),
    ]
