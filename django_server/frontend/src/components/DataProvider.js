import React, { Component } from "react";
import PropTypes from "prop-types";
class DataProvider extends Component {
  static propTypes = {
    endpoint: PropTypes.string.isRequired,
    render: PropTypes.func.isRequired,
    isDialogOpen: PropTypes.bool.isRequired
  };
  state = {
      data: [],
      loaded: false,
      placeholder: "Loading...",
      isDialogOpen: true
    };
  get_fruits() {
    fetch(this.props.endpoint)
      .then(response => {
        if (response.status !== 200) {
          return this.setState({ placeholder: "Something went wrong" });
        }
        return response.json();
      })
      .then(data => {
        this.setState({ data: data, loaded: true });
        console.log(this.state.data);
      });
  }
  render() {
    if (this.state.isDialogOpen != this.props.isDialogOpen){
      this.setState({loaded: false});
      console.log("Avais", this.props.isDialogOpen);
      this.get_fruits();
      this.setState({isDialogOpen: this.props.isDialogOpen});
    }
    const { data, loaded, placeholder } = this.state;
    return loaded ? this.props.render(data) : <p>{placeholder}</p>;
  }
}
export default DataProvider;