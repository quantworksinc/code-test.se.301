from django.db import models

# Create your models here.


class Fruit(models.Model):
    APPLES = 'ap'
    PINEAPPLES = 'pn'
    ORANGES = 'or'
    BANANAS = 'bn'
    FRUIT_CHOICES = (
        (APPLES, 'Apples'),
        (PINEAPPLES, 'Pineapples'),
        (ORANGES, 'Oranges'),
        (BANANAS, 'Bananas')
    )
    fruit_name = models.CharField(max_length=2, choices=FRUIT_CHOICES, default=APPLES)
    quantity = models.IntegerField(default=1)

    def __str__(self):
    	# this is what will be displayed in Django admin
    	return str(self.quantity) + " " + self.get_fruit_name_display()