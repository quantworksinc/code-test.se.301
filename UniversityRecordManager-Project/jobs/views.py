from django.shortcuts import render

# Create your views here.
# View for Homepage


def homepage(request):
    return render(request, 'jobs/home.html')