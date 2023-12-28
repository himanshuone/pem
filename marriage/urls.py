from django.urls import path, re_path
from . import views

# Create your views here.
urlpatterns = [path("", views.index,name="index"),
			   re_path(r'.*Home$',views.index,name="index"),
			   re_path(r'.*About$',views.about, name ="about"),
			#    re_path(r'.*Blog$',views.blog, name ="blog"),
			   re_path(r'.*Contact$',views.contact, name ="contact"),
			   re_path(r'.*Gallery$',views.gallery, name ="gallery"),
			   re_path(r'.*Services$',views.service, name ="service"),
			   re_path(r'.*Team$',views.team, name ="team"),
			   re_path(r'.*Testimonial$',views.testimonial, name ="testimonial"),
			   re_path(r'.*img_gallery\.html/(?P<id>\d+)/$', views.img_gallery, name='img_gallery'),
			   re_path(r'.*blogPage.html$', views.blogpage, name = 'blogpage'),

]