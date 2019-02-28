from django.db import models

# Create your models here.


class Fruit(models.Model):
    
    FRUIT_CHOICES = (
        ('Apples', 'Apples'),
        ('Pineapples', 'Pineapples'),
        ('Oranges', 'Oranges'),
        ('Bananas', 'Bananas')
    )
    fruit_name = models.CharField(max_length=10, choices=FRUIT_CHOICES, default='Apples')
    quantity = models.IntegerField(default=1)

    def __str__(self):
    	# this is what will be displayed in Django admin
    	return str(self.quantity) + " " + self.get_fruit_name_display()