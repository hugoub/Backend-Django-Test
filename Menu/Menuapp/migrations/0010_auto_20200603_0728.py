# Generated by Django 3.0.6 on 2020-06-03 11:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Menuapp', '0009_elegir_menu_uuid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='elegir_menu',
            name='id_menu',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='Menuapp.Menu'),
        ),
    ]
