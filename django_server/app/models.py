from django.db import models

# Create your models here.


class Fruits(models.Model):
    APPLES = 'ap'
    PINEAPPLES = 'pn'
    ORANGES = 'or'
    BANANAS = 'bn'
    FRUIT_CHOICES = (
        (APPLES, 'Apples'),
        (PINEAPPLES, 'Pineapples'),
        (ORANGES, 'Oranges'),
        (Bananas, 'Bananas')
    )
    fruit = models.CharField(max_length=2, choices=FRUIT_CHOICES, default=APPLES)
    quantity = models.IntegerField(default=1)