# Ejercicios 1 y 2 — CLI Bash

## Ejercicio 1

Crear la siguiente jerarquía de ficheros y directorios mediante comandos bash:

```
foo/
├─ dummy/
│  ├─ file1.txt  → contiene "Me encanta la bash!!"
│  ├─ file2.txt  → vacío
├─ empty/
```

### Comandos

```bash
# Crear los directorios
mkdir -p foo/dummy && mkdir foo/empty

# Crear file1.txt con el texto requerido
echo "Me encanta la bash!!" > foo/dummy/file1.txt

# Crear file2.txt vacío
touch foo/dummy/file2.txt
```

---

## Ejercicio 2

Volcar el contenido de `file1.txt` a `file2.txt` y mover `file2.txt` a la carpeta `empty/`.

Resultado esperado:

```
foo/
├─ dummy/
│  ├─ file1.txt  → contiene "Me encanta la bash!!"
├─ empty/
│  ├─ file2.txt  → contiene "Me encanta la bash!!"
```

### Comandos

```bash
# Copiar el contenido de file1.txt a file2.txt
cp foo/dummy/file1.txt foo/dummy/file2.txt

# Mover file2.txt a la carpeta empty/
mv foo/dummy/file2.txt foo/empty/
```
