# Generated by Django 4.1 on 2022-10-20 21:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('InOut_app', '0017_alter_producto_imagen'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Gop',
        ),
        migrations.RenameField(
            model_name='usuario',
            old_name='apellido',
            new_name='Apellido',
        ),
        migrations.RenameField(
            model_name='usuario',
            old_name='nombre',
            new_name='Nombre',
        ),
        migrations.RenameField(
            model_name='usuario',
            old_name='clave',
            new_name='Password',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='correo',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='usuario',
        ),
        migrations.AddField(
            model_name='usuario',
            name='Ciudad',
            field=models.CharField(default='defualt', max_length=20),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='usuario',
            name='Direccion',
            field=models.CharField(default='default', max_length=100),
            preserve_default=False,
        ),
        migrations.DeleteModel(
            name='Venta',
        ),
        migrations.AddField(
            model_name='usuario',
            name='Correo',
            field=models.EmailField(default='defualt', max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='usuario',
            name='Usuario',
            field=models.CharField(default='default', max_length=120),
            preserve_default=False,
        ),
    ]
