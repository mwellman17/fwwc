import React from 'react';
import { Router, browserHistory, Route, IndexRoute } from 'react-router';
import BracketForm from './BracketForm'

const App = props => {
  return(

  <Router history={browserHistory}>
    <Route path='/brackets' component={BracketForm} />
  </Router>

  )
}

export default App
