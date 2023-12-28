from django.shortcuts import render,redirect
from django.http import HttpResponseRedirect
from .models import Stories, Services, Gallery,Testimonials,Contact,Gallery2,MasterImageTable,MasterVideoTable

# Create your views here.
def index(request):
	stories= Stories.objects.all()
	services = Services.objects.all() 
	testimonial = Testimonials.objects.all()
	testimonial_subset = testimonial[0:3]
	services_subset = services[0:4]
	backVideo = MasterVideoTable.objects.filter(VideoPosition ='Back Video', PageName = 'Index' )
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header') 
	aboutUsLogoImage = MasterImageTable.objects.filter(PageName = 'Index', ImagePosition='About Us')
	testimonialBackImage = MasterImageTable.objects.filter(PageName = 'Index', ImagePosition='Testimonial Background')
	aboutUsBackImage = MasterImageTable.objects.filter(PageName = 'Index', ImagePosition='About Us Background')
	gallery = Gallery.objects.all()
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	backImage=MasterImageTable.objects.filter(PageName = 'Gallery', ImagePosition='Back')
	print(backImage.first().Image)

	return render(request, "index.html",{'gallery':gallery, 'headerLogoImage':headerLogoImage.first().Image,'backImage':backImage.first().Image,'stories':stories, 'services':services,'testimonial':testimonial,'testimonial_subset':testimonial_subset,'backVideo':backVideo.first().Video, 'headerLogoImage':headerLogoImage.first().Image, 'aboutUsLogoImage':aboutUsLogoImage.first().Image, 'testimonialBackImage': testimonialBackImage.first().Image, 'aboutUsBackImage': aboutUsBackImage.first().Image,'services_subset': services_subset })

def about(request):
	stories= Stories.objects.all()
	teamRivaazImage = MasterImageTable.objects.filter(PageName = 'About', ImagePosition='Team Rivaaz')
	teamRivaazImage = teamRivaazImage.first().Image
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	backImage = MasterImageTable.objects.filter(PageName = 'About', ImagePosition='Back')
	ourvalues1 = MasterImageTable.objects.filter(PageName = 'About',ImagePosition='Our Values 1')
	ourvalues2 = MasterImageTable.objects.filter(PageName = 'About',ImagePosition='Our Values 2')
	ourvalues3 = MasterImageTable.objects.filter(PageName = 'About',ImagePosition='Our Values 3')
	ourvalues4 = MasterImageTable.objects.filter(PageName = 'About',ImagePosition='Our Values 4')
	return render(request, "about.html",{'stories':stories,'teamRivaazImage':teamRivaazImage, 'headerLogoImage':headerLogoImage.first().Image, 'backImage':backImage.first().Image, 'ourvalues1':ourvalues1.first().Image,'ourvalues2':ourvalues2.first().Image,'ourvalues3':ourvalues3.first().Image,'ourvalues4':ourvalues4.first().Image})

def blog(request):
	return render(request, "blog.html")

def contact(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        Number = request.POST.get('Number')
        message = request.POST.get('message')
        headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
        backImage=MasterImageTable.objects.filter(PageName='Contact', ImagePosition='Back')

        data = Contact(Name=name,Email=email,Number=Number,Message=message)
        data.save()
        return render(request,"contact.html",{'headerLogoImage':headerLogoImage.first().Image,'backImage':backImage.first().Image})
    else:
        headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
        backImage=MasterImageTable.objects.filter(PageName='Contact', ImagePosition='Back')
        return render(request, "contact.html",{'headerLogoImage':headerLogoImage.first().Image,'backImage':backImage.first().Image})

def gallery(request):
	gallery = Gallery.objects.all()
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	backImage=MasterImageTable.objects.filter(PageName = 'Gallery', ImagePosition='Back')
	print(backImage.first().Image)
	return render(request, "gallery.html",{'gallery':gallery, 'headerLogoImage':headerLogoImage.first().Image,'backImage':backImage.first().Image})

def service(request):
	services = Services.objects.all()
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	backImage=MasterImageTable.objects.filter(PageName='Services', ImagePosition='Back')
	return render(request, "service.html",{'services':services, 'headerLogoImage':headerLogoImage.first().Image,'backImage':backImage.first().Image})

def team(request):
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	backImage=MasterImageTable.objects.filter(PageName='Team', ImagePosition='Back')
	pradeepImage=MasterImageTable.objects.filter(PageName='Team',ImagePosition='Pradeep')
	kamleshImage=MasterImageTable.objects.filter(PageName='Team',ImagePosition='Kamlesh')
	priyanshuImage=MasterImageTable.objects.filter(PageName='Team',ImagePosition='Priyanshu')
	section1Image=MasterImageTable.objects.filter(PageName='Team',ImagePosition='Section 1')
	section2Image=MasterImageTable.objects.filter(PageName='Team',ImagePosition='Section 2')
	print(section1Image.first().Image)
	print(section2Image.first().Image)
	return render(request, "team.html",{'headerLogoImage':headerLogoImage.first().Image,'backImage':backImage.first().Image, 'pradeepImage': pradeepImage.first().Image, 'kamleshImage': kamleshImage.first().Image, 'priyanshuImage': priyanshuImage.first().Image,'section1Image': section1Image.first().Image, 'section2Image': section2Image.first().Image	})

def testimonial(request):
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	testimonial = Testimonials.objects.all()
	backImage	=		MasterImageTable.objects.filter(PageName = 'Testimonial', ImagePosition='Back')
	

	return render(request, "testimonial.html",{'testimonial':testimonial, 'headerLogoImage':headerLogoImage.first().Image, 'backImage': backImage.first().Image		})

def img_gallery(request, id=1):
	gallery2 = Gallery2.objects.filter(EventID = id)
	gallery = Gallery.objects.filter(EventID = id)
	event_name = gallery.first().EventName
	event_desc = gallery.first().EventDesc
	header_image = gallery.first().HeaderImage
	headerLogoImage = MasterImageTable.objects.filter(PageName = 'Header', ImagePosition='Header')
	return render(request, "img_gallery.html",{'gallery2':gallery2,'event_name':event_name,'event_desc':event_desc, 'headerLogoImage':headerLogoImage.first().Image, 'header_image': header_image})

def blogpage(request):
	return render(request, "blogPage.html")



#################################################################
#additional def
