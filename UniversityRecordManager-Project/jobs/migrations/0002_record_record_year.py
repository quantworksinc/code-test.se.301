# Generated by Django 2.1.7 on 2019-02-27 00:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('jobs', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='record',
            name='record_year',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
    ]
