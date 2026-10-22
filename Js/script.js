let contador = 0;
let total = 0;
let carritoArr = JSON.parse(localStorage.getItem('carrito')) || [];

const botones = document.querySelectorAll('.btn');
const contadorSpan = document.getElementById('contador');
const totalSpan = document.getElementById('total');

botones.forEach(boton => {
  boton.addEventListener('click', () => {
    const productoDiv = boton.closest('.producto');
    const nombre = productoDiv.querySelector('h3').textContent;
    const precio = parseFloat(productoDiv.dataset.precio);

    contador++;
    total += precio;

    contadorSpan.textContent = contador;
    totalSpan.textContent = total.toFixed(2);

    carritoArr.push({ producto: nombre, cantidad: 1, precio: precio });
    localStorage.setItem('carrito', JSON.stringify(carritoArr));
  });
});
