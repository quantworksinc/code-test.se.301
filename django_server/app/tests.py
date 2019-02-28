from django.test import TestCase, Client
from .models import Fruit
import json
# Create your tests here.
class FruitTests(TestCase):
	def setUp(self):
		self.client = Client()
		self.pineapple = {"fruit_name": "Pineapples", "quantity" : 10}
		self.apple = {"fruit_name": "Apples", "quantity" : 30}
		self.orange = {"fruit_name": "Oranges", "quantity" : 40}
		self.fruits = [self.pineapple, self.apple, self.orange]
		for fruit in self.fruits:
			f = Fruit.objects.create(fruit_name=fruit["fruit_name"], quantity=fruit["quantity"])

	def test_get_all_fruits(self):
		response = self.client.get('/api/fruits/')
		response = json.loads(response.content.decode('utf-8'))
		res = {}
		for response_fruit in response:
			res[response_fruit["fruit_name"]] = response_fruit["quantity"]
		for fruit in self.fruits:
			self.assertEqual(res[fruit["fruit_name"]], fruit["quantity"])

	def test_add_new_fruit(self):
		banana = {"fruit_name": "Bananas", "quantity" : 28}
		response = self.client.post('/api/fruits/', json.dumps(banana), content_type='application/json')
		tested = False
		if response.status_code == 200:
			response = self.client.get('/api/fruits/')
			response = json.loads(response.content.decode('utf-8'))
			for response_fruit in response:
				if response_fruit["fruit_name"] == banana["fruit_name"]:
					self.assertEqual(response_fruit["quantity"], banana["quantity"])
					tested = True
		if not tested:
			self.assertEqual(1, 0)

	def test_update_fruit(self):
		apple = {"fruit_name": "Apples", "quantity" : 20}
		response = self.client.post('/api/fruits/', json.dumps(apple), content_type='application/json')
		tested = False
		if response.status_code == 200:
			response = self.client.get('/api/fruits/')
			response = json.loads(response.content.decode('utf-8'))
			for response_fruit in response:
				if response_fruit["fruit_name"] == apple["fruit_name"]:
					self.assertEqual(response_fruit["quantity"], apple["quantity"] + self.apple["quantity"])
					tested = True
		if not tested:
			self.assertEqual(1, 0)

	def test_adding_to_fruit_using_model(self):
		banana = {"fruit_name": "Bananas", "quantity" : 28}
		f = Fruit.objects.create(fruit_name=banana["fruit_name"], quantity=banana["quantity"])
		self.assertTrue(isinstance(f, Fruit))
		self.assertEqual(f.fruit_name, banana["fruit_name"])
		self.assertEqual(f.quantity, banana["quantity"])
		self.assertEqual(f.__str__(), str(banana["quantity"]) + " " + banana["fruit_name"])