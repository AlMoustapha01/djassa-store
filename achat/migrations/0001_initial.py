# Generated by Django 3.1.5 on 2021-01-27 22:40

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Marque',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, max_length=255, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'marque',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='ModelePhone',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, max_length=255, null=True)),
                ('created_at', models.DateTimeField(blank=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('id_marque', models.ForeignKey(db_column='id_marque', on_delete=django.db.models.deletion.DO_NOTHING, to='achat.marque')),
            ],
            options={
                'db_table': 'modele_phone',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Phone',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('couleur', models.CharField(blank=True, max_length=255, null=True)),
                ('capacite', models.CharField(blank=True, max_length=255, null=True)),
                ('prix', models.CharField(blank=True, max_length=255, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('id_modele', models.ForeignKey(db_column='id_modele', on_delete=django.db.models.deletion.DO_NOTHING, to='achat.modelephone')),
            ],
            options={
                'db_table': 'phone',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Panier',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('quantite', models.IntegerField(blank=True, null=True)),
                ('total', models.CharField(blank=True, max_length=255, null=True)),
                ('type', models.CharField(blank=True, max_length=255, null=True)),
                ('status', models.BooleanField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('id_phone', models.ForeignKey(db_column='id_phone', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='achat.phone')),
                ('id_users', models.ForeignKey(db_column='id_users', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'panier',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Commande',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('quantite', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('id_phone', models.ForeignKey(db_column='id_phone', on_delete=django.db.models.deletion.DO_NOTHING, to='achat.phone')),
                ('id_users', models.ForeignKey(db_column='id_users', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'commande',
                'managed': True,
            },
        ),
    ]
