const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});


// Hàm thực hiện hiệu ứng gõ từng chữ
function typeWriter(elementId) {
    const element = document.getElementById(elementId);
    const text = element.innerHTML;
    element.innerHTML = '';

    for (let i = 0; i < text.length; i++) {
        setTimeout(function() {
            element.innerHTML += text.charAt(i);
        }, i * 100); // Thời gian delay giữa các ký tự là 100ms (có thể điều chỉnh)
    }
}

// Gọi hàm cho các dòng chữ cần hiệu ứng
window.onload = function() {
    typeWriter('welcomeBack');
    typeWriter('helloFriend');
};
