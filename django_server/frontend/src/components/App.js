import React from "react";
import ReactDOM from "react-dom";
import DataProvider from "./DataProvider";
import Table from "./Table";
import AddFruit from "./AddFruit.js"
const App = () => (
	<div>
  		<DataProvider endpoint="api/fruits/" 
                	render={data => <Table data={data} />} />
        <AddFruit endpoint="api/fruits/"/>
    </div>
);
const wrapper = document.getElementById("app");
wrapper ? ReactDOM.render(<App />, wrapper) : null;