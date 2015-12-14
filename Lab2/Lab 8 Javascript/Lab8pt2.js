$(document).ready(function () {
    setupCalculator();
});

function setupCalculator() {
    $('#compute').click(computeValue);
    $(".number").click(numberClicked);
    $(".operator").click(operatorClicked);
    $("#basicMode").click(basicClicked);
    $("#advancedMode").click(advancedClicked);
    $(".clear").click(clearClicked);
    $("#sinOperation").click(sinClicked);
    $("#cosOperation").click(cosClicked);
    $("#tanOperation").click(tanClicked);
    $("#sqrtOperation").click(sqrtClicked);
    $("#uxCalcValue").onkeypress(verifyCharacter);

    $('#uxCalcValue').focus();
}

function basicClicked() {
    $(".adv").hide();
    $("button").removeClass("styledButton");
}

function advancedClicked() {
    $(".adv").show();
    $("button").addClass("styledButton");
}

function numberClicked() {
    var textBox = $('#uxCalcValue');
    textBox.val(textBox.val() + this.innerHTML);
    $('#uxCalcValue').focus();
}

function operatorClicked() {
    var textBox = $('#uxCalcValue');
    textBox.val(textBox.val() + this.innerHTML);
    $('#uxCalcValue').focus();
}

function clearClicked() {
    var textBox = $('#uxCalcValue');
    textBox.val('');
    $('#uxCalcValue').focus();
}

function sinClicked() {
    var textBox = $('#uxCalcValue');
    var prompt_in = prompt("Calculate Sine of:");
    if (parseInt(prompt_in))
        textBox.val(textBox.val + Math.sin(prompt_in));
    textBox.focus();
}

function cosClicked() {
    var textBox = $('#uxCalcValue');
    var prompt_in = prompt("Calculate Cosine of:");
    if(parseInt(prompt_in))
        textBox.val(textBox.val + Math.cos(prompt_in))
    textBox.focus();
}

function tanClicked() {
    var textBox = $('#uxCalcValue');
    var prompt_in = prompt("Calculate Tangent of:")
    if (parseInt(prompt_in))
        textBox.val(textBox.val + Math.tan(prompt_in));
    textBox.focus();
}

function sqrtClicked() {
    var textBox = $('#uxCalcValue');
    var prompt_in = prompt("Calculate Square Root of:")
    if (parseInt(prompt_in))
        textBox.val(textBox.val + Math.sqrt(prompt_in));
    textBox.focus();
}

function computeValue() {
    var textBox = $('#uxCalcValue');
    var textBox = $('#uxCalcValue');
    textBox.val(eval(textBox.val()));
    $('#uxCalcValue').focus();
}

function verifyCharacter(e) {
    if ((e.keyCode < 45 || e.keyCode > 57) && e.keyCode != 37 && e.keyCode != 42 && e.keyCode != 43)
        e.preventDefault();
}
