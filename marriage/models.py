from django.db import models

# Create your models here.

class Stories(models.Model):
	ClientNames= models.CharField(max_length = 255)
	StoryName= models.CharField(max_length = 255)
	Date= models.DateField()
	Location= models.CharField(max_length=155)
	LogoImage= models.ImageField(upload_to='pics')
	StoryID= models.IntegerField()
	StoryContent= models.TextField()
	HeaderImage= models.ImageField(upload_to='pics')

class Services(models.Model):
	ServiceID= models.IntegerField()
	ServiceName= models.CharField(max_length=255)
	ServiceDesc= models.TextField()
	ServiceOneLiner=models.TextField()
	HeaderImage= models.ImageField(upload_to='pics')
	LogoImage= models.ImageField(upload_to='pics')

class Gallery(models.Model):
	EventID= models.IntegerField()
	EventName= models.CharField(max_length=255)
	EventDesc= models.TextField()
	DisplayImage= models.ImageField(upload_to='pics')
	HeaderImage= models.ImageField(upload_to='pics')
	

class Testimonials(models.Model):
	TestimonialID = models.IntegerField()
	ClientNames= models.CharField(max_length=255)
	ClientReview= models.TextField()
	LogoImage= models.ImageField(upload_to='pics')
	ServiceType= models.CharField(max_length=255)


class Contact(models.Model):
    Name = models.CharField(max_length=500)
    Email = models.EmailField(max_length=500)
    Number = models.CharField(max_length=20, default="XXX-XXX-XXXX")
    Message = models.TextField()


class Gallery2(models.Model):
	EventID = models.IntegerField()
	Image = models.ImageField(upload_to='pics')
	InPortfolio = models.CharField(max_length = 1)

class MasterImageTable(models.Model):
	PageName = models.TextField()
	Image = models.ImageField(upload_to='pics')
	ImagePosition = models.TextField()

class MasterVideoTable(models.Model):
	PageName = models.TextField()
	Video = models.FileField(upload_to='videos')
	VideoPosition = models.TextField()