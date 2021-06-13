
let ele = document.getElementById("change");

document.addEventListener("ajax:success" , (response)=> {
    fetch('https://jsonplaceholder.typicode.com/todos/1')
  .then(response => response.json())
  .then(json => console.log(json))
})



