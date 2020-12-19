// Complete the following <TodoList> component to display
// todos and allow for adding and removing of todo items

import React, { useReducer, useState } from 'react';

const initialState = {todos: []};

const todosReducer = (state,action) => {
  console.log(action);
  switch (action.type) {
    case 'ADD_TODO':
      return {todos: [...state.todos, action.payload]};
    case 'REMOVE_TODO':
      let updated_todos = state.todos.filter((item,index) => index !== action.payload)
      return {todos: updated_todos};

 } };


 const TodoList = () => {
  const [state, dispatch] = useReducer(todosReducer, initialState);
  const [todo, setTodo] = useState("");
  
  const handleChange = (event) =>{
    setTodo(event.target.value)
  }

  const addTodo = () => {
    dispatch({type: 'ADD_TODO', payload: todo})
    setTodo("")
  }

  const removeTodo = (index) =>{
    dispatch({type: 'REMOVE_TODO', payload: index})
    setTodo("")
  }
 
  return (
    <div>
      <ul>
      {state.todos.map((item,index) => { 
          return <li key={index}>{item} <button onClick = { () => removeTodo(index)}>Remove Todo</button></li>;
        })}
      </ul>
      <input type="text" name="name" value = {todo} onChange = { (e) => handleChange(e)} />
      <button onClick = {addTodo}> Add todo</button>

    </div>
 ); 
};

export default TodoList;