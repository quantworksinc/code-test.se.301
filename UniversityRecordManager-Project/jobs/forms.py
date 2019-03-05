from django import forms
from .models import Record
from bootstrap_modal_forms.mixins import PopRequestMixin, CreateUpdateAjaxMixin


class UpdateForm(PopRequestMixin, CreateUpdateAjaxMixin, forms.ModelForm):
    class Meta:
        model = Record
        fields = ['record_year', 'u_grad_freshmen', 'u_grad_sophomore', 'u_grad_junior', 'u_grad_senior',
                  'grad_ms_year_one', 'grad_ms_year_two']
