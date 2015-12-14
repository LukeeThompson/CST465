window.onload = function(){
    setupCalculator();
}

function setupCalculator(){
    document.getElementById('compute').onclick = computeValue;
    document.getElementById('clear').onclick= clearClicked;
    document.getElementById('basicMode').onclick = basicClicked;
    document.getElementById('advancedMode').onclick = advancedClicked;
    document.getElementById('sinOperation').onclick = sinClicked;
    document.getElementById('cosOperation').onclick = cosClicked;
    document.getElementById('tanOperation').onclick = tanClicked;
    document.getElementById('sqrtOperation').onclick = sqrtClicked;

    document.getElementById('uxCalcValue').onkeypress = verifyCharacter;
    
    var numbers = document.getElementsByClassName('number');
    for (var i = 0; i < numbers.length; i++) {
        numbers[i].onclick = numberClicked;
    }
        
    var operators = document.getElementsByClassName('operator');
    for (var i = 0; i < operators.length; i++){
        operators[i].onclick = operatorClicked;
    }
    document.getElementById('uxCalcValue').focus();
}

function basicClicked() {
    var adv = document.querySelectorAll('button.adv');
    for (var i = 0; i < adv.length; ++i) {
        adv[i].style.display = 'none';
    }
    var buttons = document.getElementsByTagName('button');
    for (var i = 0; i < buttons.length; ++i) {
        buttons[i].className.replace('styledButton ', '');
    }
}

function advancedClicked(){
    var adv = document.querySelectorAll('button.adv');
    for (var i = 0; i < adv.length; ++i) {
        adv[i].style.display = 'inline-block';
    }
    var buttons = document.getElementsByTagName('button');
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].className = 'styledButton ' + operators[i].className;
    }
}

function numberClicked(){
    var textBox = document.getElementById('uxCalcValue');
    textBox.value += this.textContent;
    textBox.focus();
}

function operatorClicked(){
    var textBox = document.getElementById('uxCalcValue');
    textBox.value += this.textContent;
    textBox.focus();
}

function clearClicked(){
    var textBox = document.getElementById('uxCalcValue');
    textBox.value = '';
    textBox.focus();
}

function computeValue(){
    var textBox = document.getElementById('uxCalcValue');
    textBox.value = eval(textBox.value);
    textBox.focus();
}

function sinClicked() {
    var prompt_in = parseInt(prompt("Calculate Sine of:"));
    if (prompt_in)
        textBox.value += Math.tan(prompt_in);
    textBox.focus();
}
function cosClicked() {
    var prompt_in = parseInt(prompt("Calculate Cosine of:"));
    if (prompt_in)
        textBox.value += Math.tan(prompt_in);
    textBox.focus();
}
function tanClicked() {
    var textBox = document.getElementById('uxCalcValue');
    var prompt_in = parseInt(prompt("Calculate Tangent of:"));
    if (prompt_in)
        textBox.value += Math.tan(prompt_in);
    textBox.focus();
}
function sqrtClicked() {
    var textBox = document.getElementById('uxCalcValue');
    var prompt_in = parseInt(prompt("Calculate Square Root of:"));
    if (prompt_in)
        textBox.value += Math.sqrt(prompt_in);
    textBox.focus();
}

function verifyCharacter(e) {
    if(e.keyCode < 45 || e.keyCode > 57 || e.keyCode != 37 || e.keyCode != 42 || e.keyCode != 43)
        e.preventDefault();
}