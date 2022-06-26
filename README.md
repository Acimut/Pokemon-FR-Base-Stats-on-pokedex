# Pokemon Fire Red Estadísticas base en la pokédex
 Inyección en ASM para mostrar las estadísticas base de la especie en la pokédex de rojo fuego o fire red.

***Notas:***

- ARMIPS es necesario.

- Abrir el archivo config.mk, buscar y cambiar f00000 de la siguiente línea por un offset alineado con suficiente espacio libre:
        `INSERT_INTO ?= 0x08f00000`
- En el archivo config.mk, buscar la siguiente línea
        `ROM_CODE ?= BPRE`
    - mantener  BPRE para compilar usando Fire Red
    - cambiar a BPRS para compilar usando Rojo Fuego en español

- Compilan ejecutando `make` con su terminal, y una rom con la inyección aparecerá con el prefijo `rom_`.

- Si no tienen `make` instalado, pueden compilar desde cmd o powershell usando la siguiente síntaxis:

      armips.exe ROM_CODE.asm -definelabel insertinto OFFSET
    - `ROM_CODE` lo reemplazamos por BPRE para firered o BPRS para rojofuego.
    - `OFFSET` lo reemplazamos por el offset donde insertaremos la rutina.
    
    ejemplo:

      armips.exe BPRS.asm -definelabel insertinto 0x08A02580

- Credits to DoesntKnowHowToPlay and Squeetz

+ Versión en español por: Stay & Ventz
