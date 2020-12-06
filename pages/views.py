# Create your views here.
from django.views.generic import TemplateView


class HomeView(TemplateView):
    template_name = "pages/homepage.html"


class ContactView(TemplateView):
    template_name = "pages/contact_us.html"


class AboutView(TemplateView):
    template_name = "pages/about.html"
