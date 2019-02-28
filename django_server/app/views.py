from django.shortcuts import render
from rest_framework.viewsets import ModelViewSet
from app.models import Fruit
from app.serializers import FruitSerializer
from rest_framework.response import Response
import json
from rest_framework import status as response_status
# Create your views here.
class FruitViewSet(ModelViewSet):
	"""
    API endpoint that allows Fruits to be viewed or edited.
    """
	queryset = Fruit.objects.all()
	serializer_class = FruitSerializer

	def create(self, request):
		status = None
		try:
			data = json.loads(request.body)
			try:
				fruit = Fruit.objects.get(fruit_name=data["fruit_name"])
			except Fruit.DoesNotExist:
				fruit = Fruit.objects.create(fruit_name=data["fruit_name"])
			fruit.quantity = fruit.quantity + int(data["quantity"])
			fruit.save()
			status = response_status.HTTP_200_OK
		except:
			status = response_status.HTTP_400_BAD_REQUEST

		return Response(status=status)
