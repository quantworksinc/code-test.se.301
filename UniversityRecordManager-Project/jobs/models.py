from django.db import models

# Create your models here.


# Model to store records into the db.
class Record(models.Model):
    record_year = models.IntegerField()
    u_grad_freshmen = models.IntegerField()
    u_grad_sophomore = models.IntegerField()
    u_grad_junior = models.IntegerField()
    u_grad_senior = models.IntegerField()
    grad_ms_year_one = models.IntegerField()
    grad_ms_year_two = models.IntegerField()

    # u_grad_freshmen = models.IntegerField()
    def __iter__(self):
        for field in self._meta.get_fields():
            value = getattr(self, field.name, None)
            yield (field.name, value)
