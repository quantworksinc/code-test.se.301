import { Bar } from 'vue-chartjs'
import colors from 'vuetify/es5/util/colors'

export default {
  extends: Bar,
  props: ['chartData'],
  mounted () {
    this.renderChart({
      labels: this.chartData.map(row => row.month),
      datasets: [
        {
          label: 'Revenue in US Dollar ($)',
          backgroundColor: colors.blue.darken3,
          // data: [40, 39, 10, 40, 39, 80, 40, 40, 39, 10, 40, 39]
          data: this.chartData.map(row => row.revenue)
        }
      ]
    }
    , { responsive: true, maintainAspectRatio: false })
  }
}
