document.querySelector('input[list="items"]').addEventListener('input', onInput);

function onInput(e) {
    var input = e.target,
        val = input.value;
    list = input.getAttribute('list'),
        options = document.getElementById(list).childNodes;

    for (var i = 0; i < options.length; i++) {
        if (options[i].innerText === val) {
            // An item was selected from the list!
            // yourCallbackHere()
            alert('item selected: ' + val);
            break;
        }
    }
}