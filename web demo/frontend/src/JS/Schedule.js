// Hàm đổi màu khung được con trỏ chỉ tới
const serviceItems = document.querySelectorAll('.service-item');
serviceItems.forEach(item => {
    item.addEventListener('mouseover', () => {
        item.style.backgroundColor = '#ddd';
    });
    item.addEventListener('mouseout', () => {
        item.style.backgroundColor = '#f0f0f0';
    });
});