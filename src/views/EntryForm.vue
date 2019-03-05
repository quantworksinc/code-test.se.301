<template>
  <v-container fluid fill-height>
    <v-layout align-start justify-center>
      <v-flex xs12 sm5 class="revenue-form">
        <div class="text-xs-center">
          <h3 class="headline">Update Revenue Form</h3>
          <br>
        </div>
        <v-form v-model="valid">
          <v-select
            v-model="month"
            :items="months"
            label="Select Month"
            :rules="monthRules"
            required
            mt-2
          ></v-select>
          <v-text-field
            v-model="revenue"
            label="Set Revenue"
            append-icon="attach_money"
            type="number"
            :rules="revenueRules"
            required
            mt-2
          ></v-text-field>
          <v-btn block @click="updateRevenue()" :disabled="!valid" color="primary">
            Update
          </v-btn>
        </v-form>
        <br>
        <div>
          <v-alert
            :value="success"
            type="success"
            transition="scale-transition"
            dismissible="true"
          >
            Revenue updated successfully!
          </v-alert>
        </div>
        <div>
          <v-alert
            :value="error"
            type="error"
            transition="scale-transition"
            dismissible="true"
          >
            Failed to update revenue. Please try again.
          </v-alert>
        </div>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import axios from 'axios'
export default {
  data: () => ({
    valid: false,
    success: false,
    error: false,
    months: ['January', 'February', 'March', 'April',
      'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December'
    ],
    month: '',
    monthRules: [
      (v) => !!v || 'Month is required'
    ],
    revenue: '',
    revenueRules: [
      (v) => !!v || 'Revenue is required',
      (v) => v >= 0 || 'Revenue cannot be less than 0'
    ]
  }),
  methods: {
    updateRevenue () {
      axios.post('/revenue', {
        month: this.month,
        revenue: parseInt(this.revenue)
      }).then((response) => {
        this.success = true
        this.error = false
      }).catch((error) => {
        console.log(error)
        this.success = false
        this.error = true
      })
    }
  }
}
</script>

<style>
  .revenue-form {
    margin-top: 2rem;
  }
</style>
