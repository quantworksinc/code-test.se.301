import React, {Component} from "react";
import PropTypes from "prop-types";
import { VictoryBar, VictoryChart, VictoryAxis, VictoryTheme } from 'victory';

class BarChart extends Component {
  static propTypes = {
    data: PropTypes.array.isRequired
  };
  state = {
    data: [],
    chart_data: []
  };
  render() {
    return (
    	!this.props.data.length ? (
    <p>Nothing to show</p>
  ) : (
  <div class='container'>
  	<VictoryChart
    height={175}
    domainPadding={20}
    theme={VictoryTheme.material}
    animate={{
      duration: 2000,
      onLoad: { duration: 1000 }
    }}
    >
    <VictoryAxis
      
    />
    <VictoryAxis
       dependentAxis
    />
    <VictoryBar
        data={this.props.data}
        // data accessor for x values
        x="fruit_name"
        // data accessor for y values
        y="quantity"
      />
      </VictoryChart>
      </div>
  )
  )
  }
}
export default BarChart;