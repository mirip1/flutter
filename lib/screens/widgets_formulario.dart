import 'package:flutter/material.dart';


Widget crearCampoNombre({
  required TextEditingController controller,
  required Function(String) onChanged,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Nombre',
      hintText: 'Introduce tu nombre',
      
      prefixIcon: const Icon(Icons.person),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    keyboardType: TextInputType.name, 
    autofocus: true,
    maxLength: 12,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'El nombre es obligatorio.';
      } else if (!RegExp(r"^[A-ZÑÁÉÍÓÚ][a-zñáéíóú\s]+$").hasMatch(value)) {
        return 'El nombre debe comenzar con mayúscula y tener caracteres válidos alfabéticos';
      } 
      return null;
    },
    onChanged: (value) => onChanged(value),
  );
}

Widget crearCampoEmail({
  required TextEditingController controller,
  required Function(String) onChanged,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Correo electrónico',
      hintText: 'Introduce tu correo',
      prefixIcon: const Icon(Icons.email),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'El correo es obligatorio.';
      } else if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
        return 'Introduce un correo válido.';
      }
      return null;
    },
    onChanged: (value) => onChanged(value),
  );
}

Widget crearCampoPassword({
  required TextEditingController controller,
  required Function(String) onChanged,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Contraseña',
      hintText: 'Introduce tu contraseña',
      prefixIcon: const Icon(Icons.lock),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    obscureText: true,
    obscuringCharacter: '*',
    keyboardType: TextInputType.text,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'La contraseña es obligatoria.';
      } else if (value.length < 6) {
        return 'Debe tener al menos 6 caracteres.';
      }
      return null;
    },
    onChanged: (value) => onChanged(value),
  );
}

Widget crearCampoFecha({
  required TextEditingController controller,
  required BuildContext context,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Fecha de Nacimiento',
      hintText: 'Selecciona tu fecha de nacimiento',
      prefixIcon: const Icon(Icons.calendar_today),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    readOnly: true,
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );
      if (pickedDate != null) {
        controller.text = "${pickedDate.toLocal()}".split(' ')[0];
      }
    },
  );
}
Widget crearCampoTelefono({
  required TextEditingController controller,
  required Function(String) onChanged,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Número de Teléfono',
      hintText: 'Introduce tu número de teléfono',
      prefixIcon: const Icon(Icons.phone),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    keyboardType: TextInputType.phone, 
    validator: (value) {
      
      if (value == null || value.isEmpty) {
        return 'El número de teléfono es obligatorio.';
      } else if (!RegExp(r'^\+?\d{10,15}$').hasMatch(value)) {
        return 'Introduce un número de teléfono válido (con o sin +).';
      }
      return null;
    },
    onChanged: (value) => onChanged(value),
  );
}

Widget crearCampoAdivinarNumero({
  required TextEditingController controller,
  required int numeroOculto,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Adivina el número (1 al 100)',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: 'Introduce un número',
          hintText: '1 - 100',
          prefixIcon: const Icon(Icons.numbers),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Introduce un número.';
          }
          final int? numeroIngresado = int.tryParse(value);
          if (numeroIngresado == null) {
            return 'Debe ser un número válido.';
          }
          if (numeroIngresado < numeroOculto) {
            return 'El número es mayor.';
          } else if (numeroIngresado > numeroOculto) {
            return 'El número es menor.';
          }
          return null; 
        },
      ),
    ],
  );
}