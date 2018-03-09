(() => {
  // variables always get declared at the top of the JS file
  let getButtons = document.querySelectorAll('.getButton'),
      postButton = document.querySelector('.postButton'),
      deleteButton = document.querySelector('.deleteButton');

  function fetchData() {
    let url = "api/" + this.id;

    fetch(url)
    .then((resp) => resp.json())
    .then((data) => {
      console.log(data);
    })
    .catch(function(error) {
      console.log(error);
    });
  }

  //event handling always goes at the bottom of the JS file
  getButtons.forEach(button => button.addEventListener('click', fetchData));
  deleteButton.addEventListener('click', deleteData);
  postButton.addEventListener('click', insertRecord);
})();
