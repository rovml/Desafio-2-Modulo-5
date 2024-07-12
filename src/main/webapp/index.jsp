<%@ page import="org.example.desafio2.servicio.HabitacionBusiness" %>
<%@ page import="org.example.desafio2.modelo.Habitacion" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<%@ include file="assets/html/head.jsp" %>
<body>
<%@ include file="assets/html/header.jsp" %>
<%
    HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
    List<Habitacion> listaHabitaciones = habitacionBusiness.getHabitaciones();
%>
<div class="container">
<form method="POST" action="proceso.jsp">
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <h2> Habitaciones Disponibles (<%= habitacionBusiness.contarHabitaciones() %>)</h2>
        </div>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <%
                for (Habitacion habitacion : listaHabitaciones) {
            %>
            <div class="col mb-5">
                <div class="card h-100 seleccionar-habitacion" style="width: 18rem;" data-id="<%=habitacion.getId()%>" data-nombre="<%=habitacion.getNombre()%>" onclick="seleccionarHabitacion(this)">
                    <img class="card-img-top" src="<%= habitacion.getImagen()%>" alt="<%= habitacion.getNombre()%>" />
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="fw-bolder"><%= habitacion.getNombre()%></h5>
                            <p><%= habitacion.getDescripcion() %></p>
                            CL$ <%= habitacion.getPrecio() %>
                        </div>
                    </div>
                    <input type="radio" class="habitacion-radio" id="habitacionSeleccionada" name="habitacionSeleccionada" value="<%= habitacion.getId() %>" checked required>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <div class="data-form">
            <h3>Información de reserva de Habitación</h3>
            <div class="row">
                <div class="col">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" placeholder="Nombre" name="nombre" id="nombre" required>
                </div>
                <div class="col">
                    <label for="apellido" class="form-label">Apellido</label>
                    <input type="text" class="form-control" placeholder="Apellido" name="apellido" id="apellido" required>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="col-md-2">
                    <label for="medioPago" class="form-label">Medio de Pago</label>
                    <select class="form-control" id="medioPago" name="medioPago" required>
                        <option value="Contado">Contado</option>
                        <option value="Tarjeta de Debito/Credito">Tarjeta de Debito/Credito</option>
                        <option value="Efectivo">Efectivo</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="dias" class="form-label">Días</label>
                    <select class="form-control" id="dias" name="dias" required>
                        <option value="1">1 día(s)</option>
                        <option value="2">2 día(s)</option>
                        <option value="3">3 día(s)</option>
                        <option value="4">4 día(s)</option>
                        <option value="5">5 día(s)</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="fechaEntrada" class="form-label">Fecha Entrada</label>
                    <select class="form-control" id="fechaEntrada" name="fechaEntrada" required>
                        <option value="5 Enero 2024">5 Enero 2024</option>
                        <option value="5 Febrero 2024">5 Febrero 2024</option>
                        <option value="5 Marzo 2024">5 Marzo 2024</option>
                        <option value="5 Abril 2024">5 Abril 2024</option>
                        <option value="5 Mayo 2024">5 Mayo 2024</option>
                    </select>
                </div>
                <hr class="mt-5">
                <button type="submit" class="btn btn-primary">Enviar Solicitud de Reserva</button>
            </div>
        </div>
    </section>
</form>
</div>
<%@ include file="assets/html/footer.jsp" %>
</body>
</html>
