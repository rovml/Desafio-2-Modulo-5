function seleccionarHabitacion(card){
    document.querySelector('.seleccionar-habitacion').forEach(c => {
        c.classList.remove('selected');
        c.querySelector('.habitacion-radio').checked = false;
    });

    card.classList.add('selected');
    card.querySelector('.habitacion-radio').checked = true;
}