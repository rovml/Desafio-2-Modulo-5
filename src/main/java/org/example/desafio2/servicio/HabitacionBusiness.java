package org.example.desafio2.servicio;

import org.example.desafio2.modelo.Habitacion;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {
    private List<Habitacion> habitaciones;

    // Constructor con argumentos
    public HabitacionBusiness(List<Habitacion> habitaciones) {
        this.habitaciones = new ArrayList<>();
        habitaciones.addAll(List.of(
                new Habitacion(1, "Habitacion 1 - Simple", "Habitación clasica con cama extragrande, vistas al oceano, y balcon", "assets/images/img1.webp", 10000, 1, 50),
                new Habitacion(2, "Habitación 2, Doble - Simple", "Habitacion clasica con 2 camas grandes o dobles, vistas al oceano y balcon", "assets/images/img2.webp", 20000, 2, 65),
                new Habitacion(3, "Habitacion 3, Doble - Normal", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img3.webp", 40000, 3, 75),
                new Habitacion(4, "Habitacion 4, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img4.jpg", 50000, 4, 75),
                new Habitacion(5, "Habitación 5, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img5.jpg", 60000, 5, 75),
                new Habitacion(6, "Habitación 6, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img6.jpg", 50000, 6, 75),
                new Habitacion(7, "Habitación 7, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img7.jpg", 50000, 7, 75),
                new Habitacion(8, "Habitación 8, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img8.webp", 50000, 8, 75)
        ));
    }

    // Constructor sin argumentos
    public HabitacionBusiness() {
        this.habitaciones = new ArrayList<>();
        habitaciones.addAll(List.of(
                new Habitacion(1, "Habitacion 1 - Simple", "Habitación clasica con cama extragrande, vistas al oceano, y balcon", "assets/images/img1.webp", 10000, 1, 50),
                new Habitacion(2, "Habitación 2, Doble - Simple", "Habitacion clasica con 2 camas grandes o dobles, vistas al oceano y balcon", "assets/images/img2.webp", 20000, 2, 65),
                new Habitacion(3, "Habitacion 3, Doble - Normal", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img3.webp", 40000, 3, 75),
                new Habitacion(4, "Habitacion 4, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img4.jpg", 50000, 4, 75),
                new Habitacion(5, "Habitación 5, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img5.jpg", 60000, 5, 75),
                new Habitacion(6, "Habitación 6, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img6.jpg", 50000, 6, 75),
                new Habitacion(7, "Habitación 7, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img7.jpg", 50000, 7, 75),
                new Habitacion(8, "Habitación 8, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al oceano", "assets/images/img8.webp", 50000, 8, 75)
        ));
    }

    public List<Habitacion> getHabitaciones() {
        return habitaciones;
    }

    public void setHabitaciones(List<Habitacion> habitaciones) {
        this.habitaciones = habitaciones;
    }

    public int contarHabitaciones() {
        return habitaciones.size();
    }

    public Habitacion getHabitacionPorId(String id) {
        int idInt = Integer.parseInt(id);
        for (Habitacion h : habitaciones) {
            if (h.getId() == idInt) {
                return h;
            }
        }
        return null;
    }

    public int calcularValorTotal(int valorHabitacion, int cantidadHabitaciones) {
        return valorHabitacion * cantidadHabitaciones;
    }
}

