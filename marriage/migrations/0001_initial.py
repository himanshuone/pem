# Generated by Django 3.2.17 on 2023-03-19 08:10

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Gallery',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('EventID', models.IntegerField()),
                ('EventName', models.CharField(max_length=255)),
                ('EventDesc', models.TextField()),
                ('DisplayImage', models.ImageField(upload_to='pics')),
                ('HeaderImage', models.ImageField(upload_to='pics')),
                ('InPortfolio', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Services',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ServiceID', models.IntegerField()),
                ('ServiceName', models.CharField(max_length=255)),
                ('ServiceDesc', models.TextField()),
                ('ServiceOneLiner', models.TextField()),
                ('HeaderImage', models.ImageField(upload_to='pics')),
                ('LogoImage', models.ImageField(upload_to='pics')),
            ],
        ),
        migrations.CreateModel(
            name='Stories',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ClientNames', models.CharField(max_length=255)),
                ('StoryName', models.CharField(max_length=255)),
                ('Date', models.DateField()),
                ('Location', models.CharField(max_length=155)),
                ('LogoImage', models.ImageField(upload_to='pics')),
                ('StoryID', models.IntegerField()),
                ('StoryContent', models.TextField()),
                ('HeaderImage', models.ImageField(upload_to='pics')),
            ],
        ),
    ]
