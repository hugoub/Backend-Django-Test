# Generated by Django 3.0.6 on 2020-06-02 00:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Menuapp', '0005_auto_20200601_1631'),
    ]

    operations = [
        migrations.AddField(
            model_name='elegir_menu',
            name='cambios',
            field=models.TextField(blank=True, null=True),
        ),
    ]
