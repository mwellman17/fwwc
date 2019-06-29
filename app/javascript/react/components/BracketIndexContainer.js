import React, { Component } from 'react'
import BracketTile from './BracketTile'

class BracketIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      cdhBrackets: [],
      productionBrackets: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/brackets', { credentials: 'same-origin' })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => {
      return response.json();
    })
    .then(body => {
      this.setState({
        cdhBrackets: body.cdh_brackets,
        productionBrackets: body.production_brackets
       })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }

  render() {

    let cdhBrackets = this.state.cdhBrackets.map(bracket => {
      return(
        <BracketTile
          key={bracket.id}
          id={bracket.id}
          name={bracket.name}
          rank={bracket.rank}
          score={bracket.score}
          possiblePoints={bracket.possible_points}
          flag={bracket.flag}
        />
      )
    })

    let productionBrackets = this.state.productionBrackets.map(bracket => {
      return(
        <BracketTile
          key={bracket.id}
          id={bracket.id}
          name={bracket.name}
          rank={bracket.talent_rank}
          score={bracket.talent_score}
          possiblePoints={bracket.talent_possible_points}
          flag={bracket.flag}
        />
      )
    })

    return(
      <div className="">
        <h1 className="leaderboard">Leaderboard</h1>

        <div className="column small-12 medium-6">
          <h1 className="leaderboard">CDH</h1>
          <ul className="bracket-list">
            {cdhBrackets}
          </ul>
        </div>
        <div className="column small-12 medium-6">
          <h1 className="leaderboard">Production</h1>
          <ul className="bracket-list">
            {productionBrackets}
          </ul>
        </div>

        <div className="column small-12">
          <img className="fox-logo" src='/images/foxfwwc.png' />
        </div>
      </div>
    )
  }
}

export default BracketIndexContainer;
