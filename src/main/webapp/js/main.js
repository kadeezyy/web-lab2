$('#submit_button').on('click', () => {
    if (!validate()) {
        return
    }
    requestData({
        clicked: false,
        x: $('#value_X').val(),
        y: $('#value_Y').val().replace(',', '.'),
        r: $("label[for='" + $('[name="value_R"]:checked').attr('id') + "']").html()
    })
})

$("#clear").on("click", () => {
    clearData();
    $("#output").html("");
    $("#dots").html("");
})

function error(message) {
    let er = document.querySelector("#for-error");
    er.style.color = "red";
    er.innerText = message;
}

function success() {
    let er = document.querySelector("#for-error");
    er.style.color = "transparent";
    er.innerText = "";
}

