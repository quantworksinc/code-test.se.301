import React, { Component } from "react";
import ReactDOM from "react-dom";
import DataProvider from "./DataProvider";
import BarChart from "./BarChart";
import AddFruit from "./AddFruit.js";
import {
    Alignment,
    Button,
    Classes,
    Colors,
    H5,
    Dialog,
    Navbar,
    NavbarDivider,
    NavbarGroup,
    NavbarHeading,
    Switch,
} from "@blueprintjs/core";

class App extends Component {
  state = {
      isOpen: false
    };
  handleClose = () => {
    this.setState({ isOpen: ! this.state.isOpen});
  };
  render() {
    return (
    <div>
      <Navbar>
          <NavbarGroup align={Alignment.LEFT}>
              <NavbarHeading>Quantworks</NavbarHeading>
              <NavbarDivider />
              <Button className={Classes.MINIMAL} icon="chart" text="Home" />
              <Button className={Classes.MINIMAL} icon="series-add" onClick={this.handleClose} text="Add data" />
          </NavbarGroup>
      </Navbar>
      <DataProvider endpoint="api/fruits/" isDialogOpen={this.state.isOpen}
                  render={data => <BarChart data={data}/>} />
        <div>
    <Dialog isOpen={this.state.isOpen} onClose={this.handleClose}>
        <AddFruit endpoint="api/fruits/" close={this.handleClose}/>
    </Dialog>
</div>
    </div>
    )
  }
}


const wrapper = document.getElementById("app");
wrapper ? ReactDOM.render(<App />, wrapper) : null;