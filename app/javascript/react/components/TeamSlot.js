import React from 'react';

const TeamSlot = props => {

  return(
		<li className={`team team-top ${props.status}`}>
      {props.pick}<span className="score">{props.points}</span>
    </li>
  )
}

export default TeamSlot;
