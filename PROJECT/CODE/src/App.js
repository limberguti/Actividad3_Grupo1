import React from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import LandingPage from './pages/LandingPage.js';
import Pc from './Pc';
import PlayStation from './PlayStation';
import Xbox from './Xbox';
import Nintendo from './Nintendo';

import './App.css';

function App() {
  return (
    <BrowserRouter>
      
      <Routes>
        <Route exact path="/" element={<LandingPage />} />
        <Route path="/pc" element={<Pc />} />
        <Route path="/playstation" element={<PlayStation />} />
        <Route path="/xbox" element={<Xbox />} />
        <Route path="/nintendo" element={<Nintendo />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;


