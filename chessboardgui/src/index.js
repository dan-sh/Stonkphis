import React, { Component } from 'react';
import { render } from 'react-dom';
import 'chessboard-element';
import './style.css';


class App extends Component {
  constructor() {
    super();
    this.state = {
      name: 'React'
    };
  }

  render() {
    return (
      <div>
        <h1>StonkPhish React chess GUI</h1>
        <p>Here is &lt;chess-board&gt; inside a React app!</p>
        <chess-board 
        position="start"
        draggable-pieces
        ></chess-board>
        <button id="startBtn">Start Position</button>
        <button id="clearBtn">Clear Board</button>
      </div>
    );
  }
}

render(<App/>, document.querySelector('#root'));