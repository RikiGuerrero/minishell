# minishell

![C Language](https://img.shields.io/badge/C-Programming-blue.svg) ![Makefile](https://img.shields.io/badge/Makefile-Build-orange.svg) ![Git](https://img.shields.io/badge/Git-Version%20Control-red.svg) ![Norminette](https://img.shields.io/badge/Norminette-Code%20Style-brightgreen.svg) ![Readline](https://img.shields.io/badge/Readline-CLI-lightgrey.svg) ![Unix](https://img.shields.io/badge/Unix-System-critical.svg)

## 📌 Descripción

**minishell** es un proyecto desarrollado en el programa **42** cuyo objetivo es comprender y replicar el comportamiento de un shell de Unix básico, como **Bash**. Se trata de un desafío de programación de sistemas que implica la implementación de un intérprete de comandos capaz de:
- Ejecutar comandos del sistema.
- Gestionar variables de entorno.
- Manejar redirecciones y tuberías.
- Responder a señales de usuario.

Este proyecto permite a los estudiantes familiarizarse con conceptos fundamentales del desarrollo en C y la programación a bajo nivel en sistemas Unix.

## 🛠 Lenguajes y Tecnologías

- **C**
- **Makefile**
- **Biblioteca Readline (para la lectura de comandos y gestión del historial)**
- **Bibliotecas estándar de Unix**

## 💡 Conceptos de Programación Aplicados

- **Gestión de procesos:** Creación y control de procesos con ``fork()`` y ``execve()``.
- **Redirección y tuberías:** Manejo de entrada/salida estándar con ``dup2()`` y ``pipe()``.
- **Señales:** Respuesta a señales de usuario como ``SIGINT`` y ``SIGQUIT``.
- **Variables de entorno:** Lectura y modificación de variables con ``getenv()``.
- **Comandos internos:** Implementación de comandos propios como ``cd``, ``echo``, ``env``, ``exit``, entre otros.

## 🚀 Instalación

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/RikiGuerrero/minishell.git
   cd minishell
2. Compilar el proyecto:
   ```bash
   make
   ```
3. Ejecuta **minishell**:
   ```bash
   ./minishell
   ```
4. Una vez dentro, puedes ejecutar comandos como:
   ```bash
   ls -l
   pwd
   echo "Hola, Minishell"
   export VAR=42
   env
   ```
   Para salir, usa ``exit`` o presiona ``Ctrl+D``.

## 🎯 Ejemplo de Uso

A continuación, se muestra un ejemplo del uso de **minishell**:
```bash
$ ./minishell
Minishell$~ echo "Hola, Mundo"
Hola, Mundo
Minishell$~ pwd
/home/usuario/minishell
Minishell$~ ls -l
(total de archivos y carpetas)
Minishell$~ exit
```

## ✅ Normas y Estilo de Código

El código sigue las reglas de la **Norminette**, la herramienta de estilo de 42. Para verificar:
```bash
norminette
```

## 📜 Licencia

Este proyecto es parte del currículo de 42 y sigue las reglas de la escuela.
