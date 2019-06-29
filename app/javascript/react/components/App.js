import React from 'react';
import { Router, browserHistory, Route, IndexRoute } from 'react-router';
import BracketForm from './BracketForm'
import BracketIndexContainer from './BracketIndexContainer'
import BracketShowTile from './BracketShowTile'

const App = props => {
  return(

  <Router history={browserHistory}>
    <Route path='/' component={BracketIndexContainer} />
    <Route path='/brackets' component={BracketForm} />
    <Route path='/brackets/:id' component={BracketShowTile} />
  </Router>

  )
}

export default App
