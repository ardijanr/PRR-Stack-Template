import {BrowserRouter as Router,Routes,Route, Link} from 'react-router-dom'
import {Home,Login,Admin} from "./routes/"


function App() {
  return (
    <div className='App'>
    <Router>
      <Routes>
        <Route path="/"  element={<Home/>}/>
        <Route path="/login" element={<Login/>}/>
        <Route path="/admin" element={<Admin/>}/>
      </Routes>

      <div>
        <Link to="/login">Login</Link>
      </div>
      <div>
        <Link to="/admin">Admin</Link>
      </div>
    </Router>
    </div>

    );
}

export default App;
