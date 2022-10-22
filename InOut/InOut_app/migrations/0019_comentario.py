# Generated by Django 4.1 on 2022-10-20 22:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('InOut_app', '0018_delete_gop_rename_apellido_usuario_apellido_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comentario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Comentario', models.CharField(max_length=150)),
                ('Producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InOut_app.producto')),
                ('Usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InOut_app.usuario')),
            ],
        ),
    ]
