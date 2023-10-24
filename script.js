$(document).ready(function () {
  $("#contactForm").submit(function (e) {
      e.preventDefault();

      // Realiza las validaciones del formulario aquí (puedes agregar más validaciones)
      var name = $("#name").val();
      var apellido = $("#apellido").val();
      var alias = $("#alias").val();
      var rut = $("#rut").val();
      var email = $("#email").val();
      var region = $("#region").val();
      var comuna = $("#comuna").val();
      var candidato = $("#candidato").val();
      var web = $("#web").is(":checked");
      var tv = $("#tv").is(":checked");
      var redes = $("#redes").is(":checked");
      var amigo = $("#amigo").is(":checked");

      if (name === "" || apellido === "" || alias === "" || rut === "" || email === "" || region === "" || comuna === "" || candidato === "") {
          alert("Por favor, complete todos los campos obligatorios.");
          return;
      }

      // Envía los datos a través de Ajax
      $.ajax({
          type: "POST",
          url: "procesar.php",
          data: {
              name: name,
              apellido: apellido,
              alias: alias,
              rut: rut,
              email: email,
              region: region,
              comuna: comuna,
              candidato: candidato,
              web: web,
              tv: tv,
              redes: redes,
              amigo: amigo
          },
          success: function (response) {
              $("#responseMessage").html(response);
          }
      });
  });
});