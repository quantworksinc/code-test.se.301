import { Bar } from 'vue-chartjs'
import colors from 'vuetify/es5/util/colors'

export default {
  extends: Bar,
  mounted () {
    this.renderChart({
      labels: ['January', 'February', 'March', 'April',
        'May', 'June', 'July', 'August',
        'September', 'October', 'November', 'December'],
      datasets: [
        {
          label: 'Revenue in US Dollar ($)',
          backgroundColor: colors.blue.darken3,
          data: [40, 39, 10, 40, 39, 80, 40, 40, 39, 10, 40, 39]
        }
      ]
    }, { responsive: true, maintainAspectRatio: false })
  }
}

// data: () => ({
//   loaded: false,
//   chartdata: null
// }),
// async mounted () {
//   this.loaded = false
//     try {
//       const { userlist } = await fetch('/api/userlist')
//       this.chartData = userlist
//       this.loaded = true
//     } catch (e) {
//       console.error(e)
//     }
// }
// }
