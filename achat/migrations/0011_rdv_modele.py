# Generated by Django 3.1.5 on 2021-04-05 16:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('achat', '0010_rdv'),
    ]

    operations = [
        migrations.AddField(
            model_name='rdv',
            name='modele',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]