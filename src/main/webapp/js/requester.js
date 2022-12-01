function requestData(params) {
    fetch('controller', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify(params)
    })
        .then(response => response.text())
        .then(text => {
            if (text.includes('<td>')) {
                $("#output").html(text)
            }

        })
        .catch(() => error('Повторите попытку позже'))
}

function clearData() {
    fetch('cleaner', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify("")
    }).then(response => response.text())
        .then(() => $("#output").innerText = "")
}

function requestDots(data) {
    fetch("dotsSaver", {
        method: "POST",
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify(data)
    }).then(response => response.text())
        .then(dots => {
            let array = dots.trim().split(" ");
            console.log("length: " + array.length - 1)
            let i = 0;
            while (i < array.length) {
                createPointer(parseFloat(array[i]),
                    parseFloat(array[i + 1]),
                    array[i + 2] === "true" ? "green" : "red");
                console.log(array[i], array[i + 1], array[i + 2]);
                i = i + 3
            }
        })
}