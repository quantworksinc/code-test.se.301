<template>
  <v-container fluid fill-height>
    <v-layout justify-center align-center>
      <v-flex text-xs-center>
        <v-progress-circular v-if="loading" indeterminate color="primary"></v-progress-circular>
        <template v-if="!loading">
          <h3 class="headline">Gross revenue for year 2018</h3>
          <bar-chart :chartData="chartData"></bar-chart>
        </template>
      </v-flex>
    </v-layout>
  </v-container>
</template>
<script>
import BarChart from '@/components/BarChart.js'
import axios from 'axios'

export default {
  components: {
    BarChart
  },
  data: () => ({
    loading: true,
    chartData: null
  }),
  async mounted () {
    await axios
      .get('/revenue')
      .then(response => {
        this.chartData = response.data.sort((a, b) => a.id - b.id)
        this.loading = false
      })
      .catch(error => {
        console.log(error)
        this.loading = false
      })
  }
}
</script>
