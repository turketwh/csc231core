function handleProcessButtonClick1(event) {
    let secondParagraph = document.getElementById("buttonClickStatus");
    secondParagraph.textContent = "The button has been clicked.";
}

function handleProcessButtonClick2(event) {
    console.log(event.pageX);
    console.log(event.pageY);
}

let processButton = document.getElementById("processButton");
processButton.addEventListener('click', handleProcessButtonClick1);
processButton.addEventListener('click', handleProcessButtonClick2);