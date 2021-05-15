import React from 'react';

const Pending = ({ pending }) => {  
  return (
    <div>
      <h4>Pending</h4>
      {pending.map((todo, i) => {
        return (
          <div className="form-check editing" key={i}>
            <input className="form-check-input" disabled type="checkbox" defaultChecked={todo.completed} />
            <input type="text" className="form-control-plaintext" value={todo.title} />
          </div>
        )
      })}
    </div>
  )
}

export default Pending;
