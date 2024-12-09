import 'package:flutter/material.dart';
import 'widgets_formulario.dart';
import 'dart:math';

class FormularioPage extends StatefulWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final int _numeroOculto = Random().nextInt(100) + 1; 

  String _preferenciaContacto = 'Correo electrónico';  
  bool _soyCliente = false;
  bool _notificaciones = false;
  String? _selectedOption = 'Oferta individual';
  double _satisfaccion = 0;


  final List<String> _optPreferenciaContacto = ['Correo electrónico', 'Teléfono', 'WhatsApp'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              crearCampoNombre(
                controller: _nombreController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 20),
              crearCampoEmail(
                controller: _emailController,
                onChanged: (value) {
                  setState(() {});
                },
              ),

              const SizedBox(height: 20),

              crearCampoTelefono(
                controller: telefonoController,
                onChanged: (value) {
                  
                },
              ),
              const SizedBox(height: 20),
              crearCampoPassword(
                controller: _passwordController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 20),
              crearCampoFecha(
                controller: _dateController,
                context: context,
              ),
             
              const SizedBox(height: 20),
              _crearDesplegablePreferenciaContacto(),
              const SizedBox(height: 20),
              _crearCheckBox(),
              const SizedBox(height: 20),
              _crearSwitch(),
              const SizedBox(height: 20),
              _crearRadio(),
              const SizedBox(height: 20),
              _crearSlider(),
             
              const SizedBox(height: 20),
              crearCampoAdivinarNumero(
                controller: _numeroController,
                numeroOculto: _numeroOculto,
              ),
              const SizedBox(height: 30),
              
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Formulario enviado con éxito')),
                    );
                  }
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

 
  Widget _crearDesplegablePreferenciaContacto() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Preferencia de Contacto',
        prefixIcon: const Icon(Icons.contact_mail),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      value: _preferenciaContacto,
      onChanged: (String? newValue) => setState(() => _preferenciaContacto = newValue!),
      items: _optPreferenciaContacto.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }


  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: const Text('Soy Cliente Recurrente'),
      value: _soyCliente,
      onChanged: (value) => setState(() => _soyCliente = value!),
    );
  }


  Widget _crearSwitch() {
    return SwitchListTile(
      title: const Text('Recibir Notificaciones'),
      value: _notificaciones,
      onChanged: (value) => setState(() => _notificaciones = value),
    );
  }


  Widget _crearRadio() {
    return Column(
      children: [
        RadioListTile<String>(
          title: const Text('Oferta individual'),
          value: 'Oferta individual',
          groupValue: _selectedOption,
          onChanged: (value) => setState(() => _selectedOption = value),
        ),
        RadioListTile<String>(
          title: const Text('Oferta general'),
          value: 'Oferta general',
          groupValue: _selectedOption,
          onChanged: (value) => setState(() => _selectedOption = value),
        ),
      ],
    );
  }


  Widget _crearSlider() {
    return Column(
      children: [
        Text('Satisfaccion con el Formulario (0 Malo - 100 Excelente): ${_satisfaccion.toInt()} '),
        Slider(
          value: _satisfaccion,
          min: 0,
          max: 100,
          divisions: 81,
          label: _satisfaccion.toInt().toString(),
          onChanged: (value) => setState(() => _satisfaccion = value),
        ),
      ],
    );
  }
}