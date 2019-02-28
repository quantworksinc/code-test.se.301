import React, { Component } from "react";
import PropTypes from "prop-types";
class AddFruit extends Component {
  static propTypes = {
    endpoint: PropTypes.string.isRequired
  };
  state = {
    fruit_name: "",
    quantity: "",
  };
  handleChange = e => {
    this.setState({ [e.target.name]: e.target.value });
  };
  handleSubmit = e => {
    e.preventDefault();
    const { name, quantity } = this.state;
    const fruit = {"fruit_name" : name, "quantity" : quantity };
    console.log(fruit);
    const conf = {
      method: "post",
      body: JSON.stringify(fruit),
      headers: new Headers({ "Content-Type": "application/json" })
    };
    fetch(this.props.endpoint, conf).then(response => console.log(response));
  };
  render() {
    const { name, quantity} = this.state;
    return (
      <div className="column">
        <form onSubmit={this.handleSubmit}>
          <div className="field">
            <label className="label">Name</label>
            <div className="control">
              <input
                className="input"
                type="text"
                name="name"
                onChange={this.handleChange}
                value={name}
                required
              />
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
              Send message
            </button>
          </div>
        </form>
      </div>
    );
  }
}
export default AddFruit;