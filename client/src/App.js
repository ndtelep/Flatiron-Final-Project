import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './Home';

export default function App(){
  return(
    <div className="start">
    <Router>
      <Routes>
        <Route exact path="/" element={
          <Home />
        }/>
      </Routes>
    </Router>
  </div>
  )
}