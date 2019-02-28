import React, { Component } from "react";
import PropTypes from "prop-types";


class AddFruit extends Component {
  static propTypes = {
    endpoint: PropTypes.string.isRequired,
    close: PropTypes.func.isRequired
  };
  state = {
    fruit_name: "Apples",
    quantity: "",
  };
  handleChange = e => {
  	console.log(e.target.value)
    this.setState({ [e.target.name]: e.target.value });
  };
  handleSubmit = e => {
    e.preventDefault();
    
    const conf = {
      method: "post",
      body: JSON.stringify(this.state),
      headers: new Headers({ "Content-Type": "application/json" })
    };
    fetch(this.props.endpoint, conf).then(response => this.props.close());
  };
  render() {
    const { name, quantity} = this.state;
    return (
      <div className="column">
        <form onSubmit={this.handleSubmit}>
          <div className="field">
            <label className="label">Name</label>
            <div className="control">
            <select name='fruit_name' onChange={this.handleChange} value={this.state.fruit_name}>
			  <option value="Apples">Apples</option>
			  <option value="Bananas">Bananas</option>
			  <option selected value="Oranges">Oranges</option>
			  <option value="Pineapples">Pineapples</option>
			</select>
            </div>
          </div>
          <div className="field">
            <label className="label">Quantity</label>
            <div className="control">
              <input
                className="input"
                type="number"
                name="quantity"
                onChange={this.handleChange}
                value={quantity}
                required
              />
            </div>
          </div>
          <div className="control">
            <button type="submit" className="button is-info">
              Add more fruit!
            </button>
          </div>
        </form>
      </div>
    );
  }
}
export default AddFruit;