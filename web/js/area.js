function imageClicked(event){
    let x = event.clientX;
    let y = event.clientY;
    console.log("image clicked: x: " + x + ";y: " + y);
}

function setXValue(event) {
    let curBtn = event.target;
    let buttons = document.getElementsByClassName('x-field-button');
    let val = curBtn.getAttribute('value');
    let value_field = document.getElementById('x-value');

    for (let el of buttons) {
        el.removeAttribute('id');
    }
    curBtn.setAttribute('id', 'selected');
    value_field.setAttribute('value', val);
}

function checkYField() {
    let field = document.getElementById('y_field');
    let val = field.value;

    if (val < -3 || val > 5){
        field.style.backgroundColor = 'red';
        return false;
    }
    return true;
}