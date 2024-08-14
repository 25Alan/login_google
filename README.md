# Login Google

## Descripción

Este es un proyecto Flutter simple que demuestra una aplicación de autenticación básica utilizando Google Sign-In. La aplicación consta de dos pantallas principales:

1. **Pantalla de Login**: Permite al usuario iniciar sesión con Google.
2. **Pantalla de Inicio**: Muestra un mensaje simple después de un inicio de sesión exitoso.

El proyecto utiliza una arquitectura limpia con principios SOLID, y emplea `GetIt` para la inyección de dependencias y `GoRouter` para la navegación.

### NOTA: 
    Si bien parece demasiado para algo simple, la idea es que el código a futuro puede modificarse todo o algo en particular sin problemas, o aumentar responsabilidades, de forma fácil. 

## Estructura del Proyecto

### Pantallas

- **LoginPage**: Pantalla principal de inicio de sesión con un botón para iniciar sesión con Google.
- **HomePage**: Pantalla de bienvenida que se muestra después de un inicio de sesión exitoso.

### Capas del Proyecto

1. **Presentación**: Contiene los widgets y BLoC (Business Logic Component) relacionados con la UI.
2. **Dominio**: Define las interfaces de los repositorios y los casos de uso.
3. **Datos**: Implementa las interfaces del repositorio y maneja la comunicación con servicios externos como Firebase.

## Paquetes Utilizados

- **`firebase_auth`**: Proporciona funcionalidades para la autenticación de usuarios utilizando Firebase.
- **`firebase_core`**: Necesario para inicializar Firebase en la aplicación.
- **`flutter_bloc`**: Maneja el estado de la aplicación utilizando el patrón BLoC (Business Logic Component).
- **`get_it`**: Facilita la inyección de dependencias en el proyecto.
- **`go_router`**: Maneja la navegación y el enrutamiento dentro de la aplicación.
- **`google_sign_in`**: Proporciona funcionalidad para el inicio de sesión con Google.

## Prácticas y Principios Aplicados

### Arquitectura Limpia

- **Separación de Responsabilidades**: El proyecto está estructurado en capas (presentación, dominio y datos) para separar las responsabilidades y facilitar el mantenimiento.
- **Inyección de Dependencias**: Utiliza `GetIt` para gestionar y proporcionar dependencias, lo que facilita el testing y el desacoplamiento entre componentes.

### Principios SOLID

- **Single Responsibility Principle (SRP)**: Cada clase y módulo en el proyecto tiene una única responsabilidad.

### Navegación

- **`GoRouter`**: Se utiliza para la gestión de rutas y navegación, permitiendo una configuración clara y concisa de las rutas y sus correspondientes pantallas.

### Manejo de Estado

- **`flutter_bloc`**: Implementa el patrón BLoC para gestionar el estado de la aplicación, separando la lógica de negocio de la interfaz de usuario.