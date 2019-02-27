from django.shortcuts import render
from rest_framework.viewsets import ModelViewSet
from app.models import Fruit
from app.serializers import FruitSerializer

# Create your views here.
class FruitViewSet(ModelViewSet):
	"""
    API endpoint that allows Fruits to be viewed or edited.
    """
	queryset = Fruit.objects.all()
	serializer_class = FruitSerializer
