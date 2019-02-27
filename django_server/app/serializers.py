from rest_framework import serializers
from app.models import Fruit

class FruitSerializer(serializers.ModelSerializer):
	class Meta:
		model = Fruit
		fields = ('fruit_name', 'quantity')