<template>
  <v-container fluid fill-height>
    <v-layout justify-center align-center>
      <v-flex text-xs-center>
        <h3 class="headline">Gross revenue for year 2018</h3>
        <bar-chart></bar-chart>
      </v-flex>
    </v-layout>
  </v-container>
</template>
<script>
import BarChart from '@/components/BarChart.js'
export default {
  components: {
    BarChart
  }
}
</script>
