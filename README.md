# Estudio de Elementos Web usando Robot Framework
### Autor: Francisco Rodríguez

Este proyecto tiene como objetivo estudiar diferentes elementos web en una página utilizando Robot Framework. El proyecto se desarrolla usando PyCharm como entorno de desarrollo integrado.

## Requisitos Previos

Antes de comenzar, asegúrate de cumplir con los siguientes requisitos:
- Tener instalado Python 3.6+.
- Tener instalado Robot Framework.
- Tener instalada la biblioteca SeleniumLibrary para Robot Framework.
- Tener instalado PyCharm (preferiblemente la edición Profesional para mejor soporte con plugins).

## Instalación

Para instalar las dependencias necesarias, sigue estos pasos:

1. Clona el repositorio:
    ```bash
    git clone https://github.com/XERF99/RobotFramework-elements.git
    cd RobotFramework-elements
    ```

2. Crea un entorno virtual y actívalo:
    ```bash
    python -m venv venv
    source venv/bin/activate  # En Windows, usa `venv\Scripts\activate`
    ```

3. Instala los paquetes requeridos:
    ```bash
    pip install -r requirements.txt
    ```

## Configuración

1. **Instalar el plugin de soporte para Robot Framework en PyCharm**:
    - Ve a `Archivo > Configuraciones > Plugins`.
    - Busca `Robot Framework Support` o plugins similares.
    - Instala el plugin y reinicia PyCharm.

2. **Instalar WebDriver**:
    - Descarga el WebDriver apropiado para tu navegador (por ejemplo, ChromeDriver para Google Chrome).
    - Asegúrate de que el WebDriver sea accesible en tu PATH del sistema.

## Uso

1. Escribe tus casos de prueba en archivos `.robot` dentro del directorio `tests`.

2. Para ejecutar las pruebas, navega al directorio del proyecto y usa el siguiente comando:
    ```bash
    robot tests
    ```

3. Visualiza los archivos de informe y registro generados en el directorio del proyecto para ver los resultados de las pruebas.


