import React from 'react';

const Tile = props => {

  let options = props.options.map(option => {
    return(
      <option value={option} key={option}>{option}</option>
    )
  })

  return(
		<div>
      <label htmlFor={props.field}>{props.label}</label>
      <select onChange={props.onChange} value={props.value} id={props.field}>
        {options}
      </select>
		</div>
  )
}

export default Tile;
