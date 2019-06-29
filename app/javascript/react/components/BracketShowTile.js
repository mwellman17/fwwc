import React, { Component } from 'react'
import { browserHistory } from 'react-router';
import TeamSlot from './TeamSlot'

class BracketShowTile extends Component {
  constructor(props) {
    super(props);
    this.state = {
      bracket: {
        
      }
    }
  }

  render() {

    let bracket = this.state.bracket

    return(
      <div>
        <header className="hero">
        <p className="back-button"><a className="back-button" onClick={browserHistory.goBack}><i className="fa fa-angle-left"></i>Back</a></p>
          <div className="hero-wrap">
            <p>name</p>
            <p className="year inline">score</p>
            <p className="year inline possible-score">possible</p>
         </div>
        </header>

        <section id="bracket">
          <div className="container">
            <div className="split split-one">
              <div className="round round-one current">
                <div className="round-details">Round of 16<br/><span className="date">June 22 - 25</span></div>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_1"
                    status={bracket.pick_1.status}
                    pick={bracket.pick_1.team}
                    points={bracket.pick_1.points}
                  />
                  <TeamSlot
                    key="pick_2"
                    status={bracket.pick_2.status}
                    pick={bracket.pick_2.team}
                    points={bracket.pick_2.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_3"
                    status={bracket.pick_3.status}
                    pick={bracket.pick_3.team}
                    points={bracket.pick_3.points}
                  />
                  <TeamSlot
                    key="pick_4"
                    status={bracket.pick_4.status}
                    pick={bracket.pick_4.team}
                    points={bracket.pick_4.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_5"
                    status={bracket.pick_5.status}
                    pick={bracket.pick_5.team}
                    points={bracket.pick_5.points}
                  />
                  <TeamSlot
                    key="pick_6"
                    status={bracket.pick_6.status}
                    pick={bracket.pick_6.team}
                    points={bracket.pick_6.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_7"
                    status={bracket.pick_7.status}
                    pick={bracket.pick_7.team}
                    points={bracket.pick_7.points}
                  />
                  <TeamSlot
                    key="pick_8"
                    status={bracket.pick_8.status}
                    pick={bracket.pick_8.team}
                    points={bracket.pick_8.points}
                  />
                </ul>
              </div>

              <div className="round round-two current">
                <div className="round-details">Quarter Finals<br/><span className="date">June 27 - 29</span></div>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_q1"
                    status={bracket.pick_q1.status}
                    pick={bracket.pick_q1.team}
                    points={bracket.pick_q1.points}
                  />
                  <TeamSlot
                    key="pick_q2"
                    status={bracket.pick_q2.status}
                    pick={bracket.pick_q2.team}
                    points={bracket.pick_q2.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_q3"
                    status={bracket.pick_q3.status}
                    pick={bracket.pick_q3.team}
                    points={bracket.pick_q3.points}
                  />
                  <TeamSlot
                    key="pick_q4"
                    status={bracket.pick_q4.status}
                    pick={bracket.pick_q4.team}
                    points={bracket.pick_q4.points}
                  />
                </ul>
              </div>

              <div className="round round-three current">
                <div className="round-details">Semi Finals<br/><span className="date">July 2 - 3</span></div>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_s1"
                    status={bracket.pick_s1.status}
                    pick={bracket.pick_s1.team}
                    points={bracket.pick_s1.points}
                  />
                  <TeamSlot
                    key="pick_s2"
                    status={bracket.pick_s2.status}
                    pick={bracket.pick_s2.team}
                    points={bracket.pick_s2.points}
                  />
                </ul>
              </div>
            </div>

            <div className="champion">
              <div className="semis-l">
                <div className="round-details">World Cup Winner<br/><span className="date">July 7</span></div>
                <ul className ="matchup championship current">
                  <TeamSlot
                    key="pick_winner"
                    status={bracket.pick_winner.status}
                    pick={bracket.pick_winner.team}
                    points={bracket.pick_winner.points}
                  />
                </ul>
              </div>
              <img className="winner-flag" src={`/images/${bracket.flag}`} />
              <div className="final">
                <img className="trophy-img" src='/images/trophy.png' />
                <div className="round-details">Final<br/></div>
                <ul className ="matchup championship current">
                  <TeamSlot
                    key="pick_f1"
                    status={bracket.pick_f1.status}
                    pick={bracket.pick_f1.team}
                    points={bracket.pick_f1.points}
                  />
                  <TeamSlot
                    key="pick_f2"
                    status={bracket.pick_f2.status}
                    pick={bracket.pick_f2.team}
                    points={bracket.pick_f2.points}
                  />
                </ul>
              </div>
              <div className="semis-r">
                <div className="round-details">3rd Place Winner<br/><span className="date">July 6</span></div>
                <ul className ="matchup championship current">
                  <TeamSlot
                    key="pick_third"
                    status={bracket.pick_third.status}
                    pick={bracket.pick_third.team}
                    points={bracket.pick_third.points}
                  />
                </ul>
              </div>
            </div>


            <div className="split split-two">

              <div className="round round-three current">
                <div className="round-details">Semi Finals<br/><span className="date">July 2 - 3</span></div>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_s3"
                    status={bracket.pick_s3.status}
                    pick={bracket.pick_s3.team}
                    points={bracket.pick_s3.points}
                  />
                  <TeamSlot
                    key="pick_s4"
                    status={bracket.pick_s4.status}
                    pick={bracket.pick_s4.team}
                    points={bracket.pick_s4.points}
                  />
                </ul>
              </div>

              <div className="round round-two current">
                <div className="round-details">Quarter Finals<br/><span className="date">June 27 - 29</span></div>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_q5"
                    status={bracket.pick_q5.status}
                    pick={bracket.pick_q5.team}
                    points={bracket.pick_q5.points}
                  />
                  <TeamSlot
                    key="pick_q6"
                    status={bracket.pick_q6.status}
                    pick={bracket.pick_q6.team}
                    points={bracket.pick_q6.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_q7"
                    status={bracket.pick_q7.status}
                    pick={bracket.pick_q7.team}
                    points={bracket.pick_q7.points}
                  />
                  <TeamSlot
                    key="pick_q8"
                    status={bracket.pick_q8.status}
                    pick={bracket.pick_q8.team}
                    points={bracket.pick_q8.points}
                  />
                </ul>
              </div>
              <div className="round round-one current">
                <div className="round-details">Round of 16<br/><span className="date">June 22 - 25</span></div>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_9"
                    status={bracket.pick_9.status}
                    pick={bracket.pick_9.team}
                    points={bracket.pick_9.points}
                  />
                  <TeamSlot
                    key="pick_10"
                    status={bracket.pick_10.status}
                    pick={bracket.pick_10.team}
                    points={bracket.pick_10.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_11"
                    status={bracket.pick_11.status}
                    pick={bracket.pick_11.team}
                    points={bracket.pick_11.points}
                  />
                  <TeamSlot
                    key="pick_12"
                    status={bracket.pick_12.status}
                    pick={bracket.pick_12.team}
                    points={bracket.pick_12.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_13"
                    status={bracket.pick_13.status}
                    pick={bracket.pick_13.team}
                    points={bracket.pick_13.points}
                  />
                  <TeamSlot
                    key="pick_14"
                    status={bracket.pick_14.status}
                    pick={bracket.pick_14.team}
                    points={bracket.pick_14.points}
                  />
                </ul>
                <ul className="matchup">
                  <TeamSlot
                    key="pick_15"
                    status={bracket.pick_15.status}
                    pick={bracket.pick_15.team}
                    points={bracket.pick_15.points}
                  />
                  <TeamSlot
                    key="pick_16"
                    status={bracket.pick_16.status}
                    pick={bracket.pick_16.team}
                    points={bracket.pick_16.points}
                  />
                </ul>
              </div>
            </div>
          </div>
        </section>
      </div>
    )
  }
}

export default BracketShowTile;
