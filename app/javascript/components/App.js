import React from 'react'
import Greeting from './greeting'
import { Route, Routes, NavLink } from 'react-router-dom';

export default function App() {
  return (
    <>
       <NavLink to="/greeting">
           greeting
          </NavLink>
       <Routes>
         <Route path="/greeting" element={<Greeting />} />
      </Routes>
    </>

  )
}
