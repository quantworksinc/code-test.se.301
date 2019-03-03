from django.shortcuts import render
from django.contrib.messages.views import SuccessMessageMixin
from django.urls import reverse_lazy
from django.views import generic
from .forms import UpdateForm
from .models import Record
from bootstrap_modal_forms.mixins import PassRequestMixin
from collections import OrderedDict
from fusioncharts import FusionCharts

# Category Dictionary
category_list = {
    "u_grad_freshmen": "Freshmen",
    "u_grad_sophomore": "Sophomores",
    "u_grad_junior": "Juniors",
    "u_grad_senior": "Seniors",
    "grad_ms_year_one": "Master's FY",
    "grad_ms_year_two": "Master's SY"
    }


# Create your views here.
class UpdateFormView(PassRequestMixin, SuccessMessageMixin, generic.CreateView):
    template_name = 'jobs/update_record.html'
    form_class = UpdateForm
    success_message = 'Record Updated!'
    success_url = reverse_lazy('home')
    

# View for Homepage
def homepage(request):
    year_data = Record.objects.values_list('record_year', flat=True).order_by('record_year')
    if request.method == "POST" and request.POST.get('data_year') is not '':
        year_to_display = request.POST.get('data_year')
        chart_data = OrderedDict()
        chart_data["caption"] = "Student Count at North Carolina State University for the Year {}".format(
            year_to_display)
        chart_data["subCaption"] = ""
        chart_data["xAxisName"] = "Student Category"
        chart_data["yAxisName"] = "Count"
        chart_data["numberSuffix"] = ""
        chart_data["theme"] = "carbon"

        data_source = OrderedDict()
        data_source["chart"] = chart_data
        data_source["data"] = []

        keys_to_exclude = ["id", "record_year"]

        # Create JSON Data to pass into Fusioncharts.
        for record in Record.objects.filter(record_year=year_to_display):
            for field, val in record:
                if field not in keys_to_exclude:
                    data = {}
                    data["label"] = category_list[field]
                    data["value"] = val
                    # print(field, val)
                    data_source["data"].append(data)

        # Create an object for the bar chart using the FusionCharts class constructor
        # The chart data is passed to the data_source parameter.
        bar_chart = FusionCharts("column2d", "chart_work", "600", "400", "chart_work-container", "json", data_source)

        # Data filtering for Dropdown

        return render(request, 'jobs/home.html', {
            'output': bar_chart.render(),
            'year_data': year_data,
            'update_flag': True,
        })
    else:
        return render(request, 'jobs/home.html', {
            'year_data': year_data,
            'update_flag': False,
        })
