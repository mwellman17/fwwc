import React from 'react';
import { Link } from 'react-router';

const BracketTile = props => {

  return(
    <li>
      <p className="ranking inline">{props.rank}</p>
      <span className="right">
        <p className="name inline"><Link to={`/brackets/${props.id}`} className="name inline">{props.name}</Link></p>
        <p className="score-total inline">{props.score}</p>
        <p className="total inline">{props.possiblePoints}</p>
        <img className="thumbnail inline" src={`/images/${props.flag}`} />
      </span>
    </li>
  )
}

export default BracketTile;
