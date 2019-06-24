import React, { Component } from 'react'
import FormTile from './FormTile'
import FIELDS from './Fields'

class BracketForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      bracket: {},
      name: "",
      errors: null,
      success: null
    }
    this.handleChange = this.handleChange.bind(this)
    this.handleNameChange = this.handleNameChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.success = this.success.bind(this)
  }

  handleChange(value, form) {
    let bracket = this.state.bracket
    bracket[form] = value
    this.setState({ bracket: bracket })
  }

  handleNameChange(event) {
    let newName = event.target.value
    this.setState({ name: newName })
  }

  handleSubmit(event) {
    event.preventDefault()
    const body = JSON.stringify({
      bracket: this.state.bracket,
      name: this.state.name
    })
    fetch(`/api/v1/brackets`, {
    method: "POST",
    body: body,
    credentials: 'same-origin',
    headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }
    })
    .then(response => {
      if (response.ok) {
          return response;
      } else {
          let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
          throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      if(body.error){
          this.setState({ errors: body.error })
        } else {
          this.setState({
            bracket: {},
            name: "",
            errors: null
          })
          this.success(body.name, body.winner)
        }
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  success(name, winner) {
  this.setState({ success: `${name} picked ${winner}. Bracket Saved.` })
  setTimeout(
    function() {
      this.setState({ success: null });
    }
    .bind(this),
    3000
  );
}

  render() {
    let formTiles
    if (Object.keys(this.state.bracket).length < 16 && !Object.values(this.state.bracket).includes("")) {
      formTiles = FIELDS.map(field => {

        let handleChange = (event) => {
          let value = event.target.value
          let form = field.field
          this.handleChange(value, form)
        }

        return(
          <FormTile
          key={field.field}
          field={field.field}
          label={field.label}
          options={field.options}
          onChange={handleChange}
          value={this.state.bracket.field}
          />
        )
      })
    } else if (Object.keys(this.state.bracket).length < 24 && !Object.values(this.state.bracket).includes("")) {
      let bracket = this.state.bracket
      let quarterFields = [
        {
          field: "pick_q1",
          label: "Q1",
          options: ["", bracket.pick_1, bracket.pick_2]
        },
        {
          field: "pick_q2",
          label: "Q2",
          options: ["", bracket.pick_3, bracket.pick_4]
        },
        {
          field: "pick_q3",
          label: "Q3",
          options: ["", bracket.pick_5, bracket.pick_6]
        },
        {
          field: "pick_q4",
          label: "Q4",
          options: ["", bracket.pick_7, bracket.pick_8]
        },
        {
          field: "pick_q5",
          label: "Q5",
          options: ["", bracket.pick_9, bracket.pick_10]
        },
        {
          field: "pick_q6",
          label: "Q6",
          options: ["", bracket.pick_11, bracket.pick_12]
        },
        {
          field: "pick_q7",
          label: "Q7",
          options: ["", bracket.pick_13, bracket.pick_14]
        },
        {
          field: "pick_q8",
          label: "Q8",
          options: ["", bracket.pick_15, bracket.pick_16]
        }
      ]
      formTiles = quarterFields.map(field => {

        let handleChange = (event) => {
          let value = event.target.value
          let form = field.field
          this.handleChange(value, form)
        }

        return(
          <FormTile
          key={field.field}
          field={field.field}
          label={field.label}
          options={field.options}
          onChange={handleChange}
          value={this.state.bracket.field}
          />
        )
      })
    } else if (Object.keys(this.state.bracket).length < 28 && !Object.values(this.state.bracket).includes("")) {
      let bracket = this.state.bracket
      let semiFields = [
        {
          field: "pick_s1",
          label: "S1",
          options: ["", bracket.pick_q1, bracket.pick_q2]
        },
        {
          field: "pick_s2",
          label: "S2",
          options: ["", bracket.pick_q3, bracket.pick_q4]
        },
        {
          field: "pick_s3",
          label: "S3",
          options: ["", bracket.pick_q5, bracket.pick_q6]
        },
        {
          field: "pick_s4",
          label: "S4",
          options: ["", bracket.pick_q7, bracket.pick_q8]
        }
      ]
      formTiles = semiFields.map(field => {

        let handleChange = (event) => {
          let value = event.target.value
          let form = field.field
          this.handleChange(value, form)
        }

        return(
          <FormTile
          key={field.field}
          field={field.field}
          label={field.label}
          options={field.options}
          onChange={handleChange}
          value={this.state.bracket.field}
          />
        )
      })
    } else if (Object.keys(this.state.bracket).length < 30 && !Object.values(this.state.bracket).includes("")) {
      let bracket = this.state.bracket
      let finalFields = [
        {
          field: "pick_f1",
          label: "F1",
          options: ["", bracket.pick_s1, bracket.pick_s2]
        },
        {
          field: "pick_f2",
          label: "F2",
          options: ["", bracket.pick_s3, bracket.pick_s4]
        }
      ]
      formTiles = finalFields.map(field => {

        let handleChange = (event) => {
          let value = event.target.value
          let form = field.field
          this.handleChange(value, form)
        }

        return(
          <FormTile
          key={field.field}
          field={field.field}
          label={field.label}
          options={field.options}
          onChange={handleChange}
          value={this.state.bracket.field}
          />
        )
      })
    } else {
      let bracket = this.state.bracket
      let finalFields = [
        {
          field: "winner",
          label: "Winner",
          options: ["", bracket.pick_f1, bracket.pick_f2]
        },
        {
          field: "third",
          label: "Third",
          options: ["", bracket.pick_s1, bracket.pick_s2, bracket.pick_s3, bracket.pick_s4]
        }
      ]
      formTiles = finalFields.map(field => {

        let handleChange = (event) => {
          let value = event.target.value
          let form = field.field
          this.handleChange(value, form)
        }

        return(
          <FormTile
          key={field.field}
          field={field.field}
          label={field.label}
          options={field.options}
          onChange={handleChange}
          value={this.state.bracket.field}
          />
        )
      })
    }
    let errors
    if (this.state.errors){
      errors = (
        <p className="error">{this.state.errors}</p>
      )
    }

    let success
    if (this.state.success){
      success = (
        <p className="success">{this.state.success}</p>
      )
    }

    return(
      <div>
        {errors}
        {success}
        <form className="">
          <label htmlFor="name">Name</label>
          <input onChange={this.handleNameChange} type="text" name="name" id="name" value={this.state.name} />
          {formTiles}
          <input onClick={this.handleSubmit} type="submit" name="submit" id="submit" value="Submit" />
        </form>
      </div>
    )
  }
}

export default BracketForm;
