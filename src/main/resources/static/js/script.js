let btn = document.querySelector(".list-add-btn");
let taskList = document.querySelector(".task-list");
let input = document.querySelector(".list-input");

function createNewCard(text) {
  let newCard = document.createElement("div");
  let deleteBtn = document.createElement("button");
  let cardText = document.createElement("p");

  cardText.className = "task-card-p";
  deleteBtn.className = "task-card-btn";
  newCard.className = "task-card";

  cardText.textContent = text;
  deleteBtn.innerHTML = '<i class="fas fa-minus-circle"></i>';

  newCard.appendChild(cardText);
  newCard.appendChild(deleteBtn);

  deleteBtn.addEventListener("click", function() {
    taskList.removeChild(newCard);
  });

  taskList.appendChild(newCard);
}

btn.addEventListener("click", function(e) {
  e.preventDefault();
  if (!(input.value === "Введите задачу на сегодня" || input.value === "")) {
    createNewCard(input.value);
    input.value = "Введите задачу на сегодня";
  }
});

input.addEventListener("focus", function() {
  input.value = "";
});
input.addEventListener("blur", function() {
  if (input.value === "Введите задачу на сегодня" || input.value === "")
    input.value = "Введите задачу на сегодня";
});

let inputNotes = document.querySelector(".notes-input");
let listNotes = document.querySelector(".notes-list");
let btnNotes = document.querySelector(".notes-btn");

function createNotesCard(text) {
  let notesCard = document.createElement("div");
  let notesDelete = document.createElement("button");
  let notesText = document.createElement("p");

  notesText.className = "task-card-p";
  notesDelete.className = "task-card-btn";
  notesCard.className = "task-card";

  notesText.textContent = text;
  notesDelete.innerHTML = '<i class="fas fa-minus-circle"></i>';

  notesCard.appendChild(notesText);
  notesCard.appendChild(notesDelete);

  notesDelete.addEventListener("click", function() {
    listNotes.removeChild(notesCard);
  });

  listNotes.appendChild(notesCard);
}

btnNotes.addEventListener("click", function(e) {
  e.preventDefault();
  if (
    !(inputNotes.value === "Введите вашу заметку" || inputNotes.value === "")
  ) {
    createNotesCard(inputNotes.value);
    inputNotes.value = "Введите вашу заметку";
  }
});

inputNotes.addEventListener("focus", function() {
  inputNotes.value = "";
});
inputNotes.addEventListener("blur", function() {
  if (inputNotes.value === "Введите вашу заметку" || inputNotes.value === "")
    inputNotes.value = "Введите вашу заметку";
});


