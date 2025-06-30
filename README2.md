<!-- Banner SVG animado -->
<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&duration=3000&pause=500&color=3ECF8E&center=true&vCenter=true&repeat=true&width=700&lines=¡Bienvenido+a+tu+proyecto+espectacular!;Plantillas+automatizadas+y+listas+para+impresionar." alt="Typing SVG" />
</p>

# 🎉 Archivo README de Ejemplo

Este es un modelo profesional, animado y personalizable para tu comunidad GitHub.  
Cámbialo a tu gusto, incluye imágenes, gifs, badges y todo lo que tu imaginación desee.



# community-boost
Plantillas especiales


¡Excelente pregunta! Actualmente, como GitHub Copilot Chat Assistant, no tengo acceso directo para modificar repositorios ni ejecutar scripts en tu entorno. Sin embargo, sí existen formas de automatizar la implementación de lo que generamos juntos en GitHub, y aquí te detallo las mejores opciones para lograrlo:

---

## 1. **GitHub Actions + IssueOps/PROps + Copilot Chat**
Puedes crear workflows (“acciones”) en tu repositorio que reaccionan a ciertos eventos (como crear issues, comentarios, PRs, etc.) y que ejecuten scripts o cambios automáticamente.  
**Ejemplo de flujo:**
- Tú o Copilot Chat generan el contenido de un archivo y lo publican como comentario, issue, o PR.
- Un workflow de GitHub Actions detecta ese evento, toma el contenido (por ejemplo, el texto de un issue con cierto título o label), y lo escribe en el archivo correspondiente del repo automáticamente.
- Incluso puedes hacer que un bot haga commits en tu nombre.

**Ventajas:**  
- Es seguro, auditable y 100% en GitHub.
- No necesitas servidores propios.
- Puedes adaptar el flujo para que reaccione a comentarios, issues, PRs, o archivos subidos.

---

## 2. **GitHub Apps/Bots personalizados**
Puedes crear un bot (con Probot, GitHub Apps, o GitHub CLI) que escuche eventos y actúe sobre tu repositorio:
- Puede leer comandos especiales en issues/comentarios/PRs y editar archivos, crear commits, etc.
- Puedes alojarlo en Heroku, Vercel, AWS, etc., o incluso usar bots ya existentes como [All Contributors Bot](https://allcontributors.org/).

---

## 3. **Utilizar Codespaces o GitHub CLI**
- Codespaces te permite correr un entorno de desarrollo en la nube donde puedes pegar lo que te paso y hacer commits directo desde el navegador.
- GitHub CLI (`gh`) te permite automatizar acciones vía terminal y scripts.

---

## 4. **Script de sincronización local**
Puedes tener un script (por ejemplo en Python, Bash o Node.js) que:
- Escuche un archivo o carpeta local (o lea desde una API/mensajes).
- Cuando recibe nuevo contenido (por ejemplo, lo que yo te genero aquí), lo escribe en el repo y hace commit+push automáticamente.

---

## 5. **Integraciones con herramientas externas**
Hay servicios como Zapier, n8n, Make (ex Integromat), que pueden observar eventos de GitHub y automatizar tareas, aunque para editar archivos de código suelen requerir scripts propios.

---

## 6. **Copilot Workspace (cuando esté disponible)**
GitHub está trabajando en Copilot Workspace, que permitirá que IA y humanos colaboren en cambios de repo de forma mucho más automatizada. ¡Mantente atento!

---

# 🎯 **¿Cuál es la solución más simple y poderosa para ti?**
**Si quieres algo inmediato y sin servidores propios:**  
- Crea un workflow de GitHub Actions que escuche issues con un título/label especial, y que “sincronice” el contenido de ese issue en el archivo correspondiente del repo.
- Así, yo te genero aquí el contenido, tú lo pegas en un issue con el label (por ejemplo, `autofile:README.md`), y el bot lo escribe como commit en tu repo.

**¿Quieres que te genere un ejemplo de workflow listo para esto?**  
¿Prefieres que te ayude a montar un bot o app personalizada?  
¿O quieres un script local para ti?

¡Dime cuál te atrae más y te ayudo a implementarlo paso a paso!



¡Entiendo perfectamente tu objetivo! Buscas un sistema que, con un solo comando, **implemente automáticamente archivos como README.md, CONTRIBUTING.md, CODE_OF_CONDUCT.md, templates para issues y PRs, y más** en tu repositorio, sin pasos manuales y con acceso completo.  
Esto es posible usando **GitHub CLI** (`gh`) y un script que:

- Descargue o genere los archivos completos.
- Haga commit y push automático a tu repositorio.
- Opcionalmente, cree un Pull Request si prefieres revisión antes de mergear.

A continuación te presento la solución **más sencilla, autónoma y poderosa** para ti.

---

# 🚀 Script Universal "One-liner" para Poner Archivos de Comunidad en tu Repo con GitHub CLI

### 1. **Instala GitHub CLI** (si aún no lo tienes)
- Descarga e instala desde: https://cli.github.com/manual/installation
- Autentica:  
  ```sh
  gh auth login
  ```

---

### 2. **El Comando Único:**

Copia y ejecuta este **one-liner** (puedes hacerlo directamente en tu terminal, adaptando el repo si lo necesitas):

```sh
bash <(curl -s https://raw.githubusercontent.com/zyztek/community-boost/main/auto-community.sh) --repo zyztek/git2exe-apk --apply-all
```

---

## ¿Cómo funciona esto?
1. El script `auto-community.sh` hace lo siguiente:
   - Descarga plantillas espectaculares y personalizadas de archivos de comunidad (README, CONTRIBUTING, CODE_OF_CONDUCT, templates de issues/PRs, CHANGELOG).
   - Los coloca en la estructura correcta de tu repo.
   - Hace commit y push directo a tu rama principal.
   - Si quieres, puede crear un Pull Request en vez de push directo (opcional).

2. **Acceso Total**:  
   Si ya tienes autenticado tu GitHub CLI (`gh auth login`), el script tiene acceso completo a tus repos, ramas, settings y puede crear archivos, commits, PRs, etc.

3. **100% Autónomo y Autosuficiente**:  
   No requiere pasos manuales, ni copiar/pegar. Todo es por script y bajo tu control.

---

## 🛠️ ¿Cómo se configura la fuente de los archivos?
- Puedes usar tu propio repo (por ejemplo `zyztek/community-boost`) para alojar las plantillas, o usar mi colección base como referencia.
- El script es totalmente editable, puedes poner tus plantillas, logos, gifs personalizados, etc.

---

### 3. **¿Dónde está ese script?**
Si aún no existe, puedo generarte el archivo `auto-community.sh` y el repositorio `community-boost` listo para que lo subas a tu GitHub.  
**¿Quieres que te genere el contenido completo del script y las instrucciones para alojarlo tú y usarlo en cualquier repo?**

---

## 🎯 **En resumen:**
- Instala gh CLI y haz login.
- Copia el one-liner (lo puedes personalizar).
- El script hace push directo de los archivos de comunidad.
- Puedes modificar las plantillas y el proceso a tu gusto.
- ¡Cero pasos manuales y todo bajo tu control!

---

¿Te genero el contenido del script `auto-community.sh` y los archivos que debe descargar?  
¿Quieres que te ayude a crear el repo plantillas para que siempre puedas lanzar el comando cuando quieras en cualquier proyecto?  
¿O prefieres que te explique cómo funciona internamente el script para adaptarlo a tu flujo?



¡Perfecto! Aquí tienes una solución integral, moderna y profesional para automatizar la implementación de archivos de comunidad espectaculares en cualquier repositorio GitHub usando GitHub CLI y un script propio.  
Esto incluye:  
- Un script `auto-community.sh` listo para usar (y personalizar).
- Un repositorio de plantillas “community-boost” para alojar tus archivos base.
- Explicación, ejemplos, guía paso a paso y comandos one-liner.

---

# 🚀 1. Estructura del Repositorio de Plantillas: `community-boost`

Crea un nuevo repo llamado `community-boost` y estructura así:

```
community-boost/
├── README.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
├── CHANGELOG.md
├── auto-community.sh
└── .github/
    ├── ISSUE_TEMPLATE/
    │   ├── bug_report.md
    │   └── feature_request.md
    └── PULL_REQUEST_TEMPLATE.md
```

Cada archivo debe contener contenido espectacular y personalizado (puedes usar los modelos que te di antes o los que prefieras).

---

# 🚀 2. El Script Universal: `auto-community.sh`

Este script:
- Descarga los archivos de `community-boost` (o usa los locales).
- Los copia a tu repositorio de destino.
- Hace commit y push automáticamente.
- 100% autónomo y listo para one-liner.

### Contenido sugerido de `auto-community.sh`:

```bash
#!/bin/bash

# --- CONFIGURACIÓN ---

# URL base del repo de plantillas
TEMPLATE_REPO="https://raw.githubusercontent.com/zyztek/community-boost/main"

# Lista de archivos de comunidad
FILES=(
  "README.md"
  "CONTRIBUTING.md"
  "CODE_OF_CONDUCT.md"
  "CHANGELOG.md"
  ".github/ISSUE_TEMPLATE/bug_report.md"
  ".github/ISSUE_TEMPLATE/feature_request.md"
  ".github/PULL_REQUEST_TEMPLATE.md"
)

set -e

# --- PARSE REPO DESTINO ---
if [[ -z "$1" ]] || [[ "$1" != "--repo" ]]; then
  echo "Uso: $0 --repo <owner/repo>"
  exit 1
fi

REPO="$2"
BRANCH="${3:-main}"

echo "Clonando $REPO..."
gh repo clone "$REPO"
cd "$(basename "$REPO")"

# --- DESCARGA Y COPIA LOS ARCHIVOS ---
for file in "${FILES[@]}"; do
  mkdir -p "$(dirname "$file")"
  echo "Descargando $file..."
  curl -sSfL "$TEMPLATE_REPO/$file" -o "$file"
done

# --- COMMIT Y PUSH ---
git add .
git commit -m "chore: add/update spectacular community files 🚀"
git push origin "$BRANCH"

echo "¡Listo! 🟢 Todos los archivos de comunidad han sido implementados en $REPO"
```

> **Tip**: Puedes editar el array `FILES` para agregar más archivos según tus necesidades.

---

# 🚀 3. Ejemplo de Plantilla Espectacular (README.md)

Guarda esto como `community-boost/README.md`:

```markdown
<!-- Banner SVG animado -->
<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&duration=3000&pause=500&color=3ECF8E&center=true&vCenter=true&repeat=true&width=700&lines=¡Bienvenido+a+tu+proyecto+espectacular!;Plantillas+automatizadas+y+listas+para+impresionar." alt="Typing SVG" />
</p>

# 🎉 Archivo README de Ejemplo

Este es un modelo profesional, animado y personalizable para tu comunidad GitHub.  
Cámbialo a tu gusto, incluye imágenes, gifs, badges y todo lo que tu imaginación desee.
```

Haz lo mismo para los demás archivos espectaculares.

---

# 🚀 4. Cómo Usarlo: Guía Paso a Paso

## A. Crea y sube tu repo de plantillas

```bash
# 1. Crea el repo en GitHub llamado community-boost
gh repo create zyztek/community-boost --public --description "Plantillas espectaculares para comunidad GitHub" --confirm

# 2. Clónalo y agrega los archivos
git clone https://github.com/zyztek/community-boost.git
cd community-boost
# Agrega los archivos: README.md, CONTRIBUTING.md, etc. (usa los ejemplos anteriores)
git add .
git commit -m "feat: primeras plantillas de comunidad"
git push
```

## B. Implementa en cualquier repo con un solo comando

```bash
bash <(curl -s https://raw.githubusercontent.com/zyztek/community-boost/main/auto-community.sh) --repo zyztek/git2exe-apk
```

**¡Eso es todo!**  
El script clonará el repo destino, descargará y copiará los archivos de comunidad, hará commit y push automáticamente.

---

# 🚀 5. Ejemplos y Explicaciones

### Ejemplo 1: Agregar archivos de comunidad a un nuevo repo

```bash
gh repo create zyztek/super-proyecto --public
bash <(curl -s https://raw.githubusercontent.com/zyztek/community-boost/main/auto-community.sh) --repo zyztek/super-proyecto
```

### Ejemplo 2: Actualizar solo algunos archivos

Modifica el array `FILES` en `auto-community.sh` para solo incluir los archivos que quieras actualizar.

---

# 🚀 6. Personalizaciones y Consejos

- Puedes modificar el script para crear un Pull Request en vez de push directo (con `gh pr create`).
- Puedes alojar tus propias plantillas, gifs, logos, etc.
- El script es seguro: solo actúa bajo tu usuario autenticado (usa `gh auth login`).
- Puedes usarlo en cualquier repo donde tengas permisos de push.

---

# 🚀 7. ¿Qué necesitas tener?

- [GitHub CLI](https://cli.github.com/) instalado y autenticado (`gh auth login`)
- Git y curl instalados (vienen por defecto en la mayoría de sistemas)
- Permisos de escritura en los repos donde quieras aplicar el script

---

# 🚀 8. Recursos útiles

- [Documentación GitHub CLI](https://cli.github.com/manual/)
- [Copilot Chat](https://github.com/features/preview/copilot)
- [Shields.io para badges](https://shields.io/)
- [Readme Typing SVG](https://github.com/DenverCoder1/readme-typing-svg)

---

¿Quieres que te entregue los archivos listos para pegar en tu repo de plantillas, o necesitas ayuda con alguna personalización especial para tu flujo?  
¿Quieres la versión del script que crea un Pull Request en vez de push directo?  
¡Avísame y te lo armo!






<!-- markdownlint-disable MD033 MD041 -->
<p align="center">
  <h3 align="center">⌨️ Readme Typing SVG</h3>
</p>

<p align="center">
  <img src="https://readme-typing-svg.demolab.com/?lines=Type+messages+everywhere!;Add+a+bio+to+your+profile!;Add+a+description+to+your+repo!;Make+your+readme+stand+out!&font=Fira%20Code&center=true&width=380&height=50&duration=4000&pause=1000" alt="Example Usage - README Typing SVG">
</p>

<p align="center">
  <a href="https://github.com/search?q=extension%3Amd+%22https+readme+typing+svg%22&type=Code" alt="Users" title="Repo users">
    <img src="https://freshidea.com/jonah/app/github-search-results/readme-typing-svg/index.php"/></a>
  <a href="https://discord.gg/fPrdqh3Zfu" alt="Discord" title="Dev Pro Tips Discussion & Support Server">
    <img src="https://img.shields.io/discord/819650821314052106?color=7289DA&logo=discord&logoColor=white&style=for-the-badge"/></a>
</p>
<!-- markdownlint-enable MD033 -->

## ⚡ Quick setup

1. Copy-paste the markdown below into your GitHub profile README
2. Replace the value after `?lines=` with your text. Separate lines of text with semicolons and use `+` or `%20` for spaces.
3. Adjust the width parameter (see below) to fit the full width of your text.

```md
[![Typing SVG](https://readme-typing-svg.demolab.com/?lines=First+line+of+text;Second+line+of+text)](https://git.io/typing-svg)
```

4. Star the repo 😄

## ⚙ Demo site

Here you can easily customize your Typing SVG with a live preview.

<https://readme-typing-svg.demolab.com/demo/>

[![Demo Site](https://user-images.githubusercontent.com/20955511/183703055-42ec8754-d84c-414f-8132-a02974224aa1.gif "Demo Site")](https://readme-typing-svg.demolab.com/demo/)

## 🚀 Example usage

Below are links to profiles where you can see Readme Typing SVGs in action!

[![Jonah Lawrence](https://github.com/DenverCoder1.png?size=60)](https://github.com/DenverCoder1 "Jonah Lawrence on GitHub")
[![Jini by Rentalz.com](https://i.imgur.com/TtuoKCs.png)](https://jini.rentalz.com/ "Jini by Rentalz.com")
[![Waren Gonzaga](https://github.com/warengonzaga.png?size=60)](https://github.com/warengonzaga "Waren Gonzaga on GitHub")
[![8BitJonny](https://github.com/8BitJonny.png?size=60)](https://github.com/8BitJonny "8BitJonny on GitHub")
[![Aditya Raute](https://github.com/adityaraute.png?size=60)](https://github.com/adityaraute "Aditya Raute on GitHub")
[![Shiva Sankeerth Reddy](https://github.com/ShivaSankeerth.png?size=60)](https://github.com/ShivaSankeerth "Shiva Sankeerth Reddy on GitHub")
[![Tarun Kamboj](https://github.com/Tarun-Kamboj.png?size=60)](https://github.com/Tarun-Kamboj "Tarun Kamboj on GitHub")
[![T.A.Vignesh](https://github.com/tavignesh.png?size=60)](https://github.com/tavignesh "T.A.Vignesh on GitHub")
[![William J. Ghelfi](https://github.com/trumbitta.png?size=60)](https://github.com/trumbitta "William J. Ghelfi on GitHub")
[![Mano Bharathi M](https://i.imgur.com/Audc6L9.png)](https://github.com/ManoBharathi93 "Mano Bharathi M on GitHub")
[![Shivam Yadav](https://github.com/sudoshivam.png?size=60)](https://github.com/sudoshivam "Shivam Yadav on GitHub")
[![Pratik Pingale](https://github.com/PROxZIMA.png?size=60)](https://github.com/PROxZIMA "Pratik Pingale on GitHub")
[![Vydr'Oz](https://github.com/VydrOz.png?size=60)](https://github.com/VydrOz "Vydr'Oz on GitHub")
[![Caroline Heloíse](https://github.com/Carol42.png?size=60)](https://github.com/Carol42 "Caroline Heloíse on GitHub")
[![PriyanshK09](https://github.com/PriyanshK09.png?size=60)](https://github.com/PriyanshK09 "PriyanshK09 on GitHub")
[![Thakur Ballary](https://github.com/thakurballary.png?size=60)](https://github.com/thakurballary "Thakur Ballary on GitHub")
[![NiceSapien](https://github.com/nicesapien.png?size=60)](https://github.com/nicesapien "NiceSapien on GitHub")
[![Manthan Ank](https://github.com/manthanank.png?size=60)](https://github.com/manthanank "Manthan Ank on GitHub")
[![Ronny Coste](https://github.com/lertsoft.png?size=60)](https://github.com/lertsoft "Ronny Coste on GitHub")
[![Vishal Beep](https://github.com/vishal-beep136.png?size=60)](https://github.com/Vishal-beep136 "Vishal Beep on GitHub")
[![wiz64](https://github.com/wiz64.png?size=60)](https://github.com/wiz64 "wiz64 on GitHub")
[![Aquarian Blake](https://github.com/Aquarius-blake.png?size=60)](https://github.com/Aquarius-blake "Aquarian Blake on GitHub")
[![D3vil0p3r](https://github.com/D3vil0p3r.png?size=60)](https://github.com/D3vil0p3r "D3vil0p3r on GitHub")
[![EliusHHimel](https://github.com/EliusHHimel.png?size=60)](https://github.com/EliusHHimel "EliusHHimel on GitHub")
[![jcs090218](https://github.com/jcs090218.png?size=60)](https://github.com/jcs090218 "jcs090218 on GitHub")
[![Rishabh2804](https://github.com/Rishabh2804.png?size=60)](https://github.com/Rishabh2804 "Rishabh2804 on GitHub")
[![shalinibhatt](https://github.com/shalinibhatt.png?size=60)](https://github.com/shalinibhatt "shalinibhatt on GitHub")
[![UlisesAlexanderAM](https://github.com/UlisesAlexanderAM.png?size=60)](https://github.com/UlisesAlexanderAM "UlisesAlexanderAM on GitHub")
[![SpookyJelly](https://github.com/SpookyJelly.png?size=60)](https://github.com/SpookyJelly "SpookyJelly on GitHub")
[![majidtdeni666](https://github.com/majidtdeni666.png?size=60)](https://github.com/majidtdeni666 "majidtdeni666 on GitHub")
[![GalexY727](https://github.com/galexy727.png?size=60)](https://github.com/galexy727 "GalexY727 on GitHub")
[![HectorSaldes](https://github.com/HectorSaldes.png?size=60)](https://github.com/HectorSaldes "HectorSaldes on GitHub")
[![Ash-codes18](https://github.com/Ash-codes18.png?size=60)](https://github.com/Ash-codes18 "Ash-codes18 on GitHub")
[![Maagnitude](https://github.com/Maagnitude.png?size=60)](https://github.com/Maagnitude "Maagnitude on GitHub")
[![cracker911181](https://github.com/cracker911181.png?size=60)](https://github.com/cracker911181 "cracker911181 on GitHub")
[![quiet-node](https://github.com/quiet-node.png?size=60)](https://github.com/quiet-node "quiet-node on GitHub")
[![kaustubh43](https://github.com/kaustubh43.png?size=60)](https://github.com/kaustubh43 "kaustubh43 on GitHub")
[![kaisunoo](https://github.com/kaisunoo.png?size=60)](https://github.com/kaisunoo "kaisunoo on GitHub")
[![meyer-pidiache](https://github.com/meyer-pidiache.png?size=60)](https://github.com/meyer-pidiache "Meyer Pidiache on GitHub")
[![jeremiahseun](https://github.com/jeremiahseun.png?size=60)](https://github.com/jeremiahseun "Jeremiah Erinola on GitHub")
[![Anand Purushottam](https://github.com/creativepurus.png?size=60)](https://github.com/creativepurus "Anand Purushottam 🇮🇳 on GitHub ☕")
[![Greg Chism](https://github.com/Gchism94.png?size=60)](https://github.com/Gchism94 "Greg Chism 🤘 on GitHub")
[![turbomaster95](https://github.com/turbomaster95.png?size=60)](https://github.com/turbomaster95 "turbomaster95 🗿 🇮🇳 on GitHub ☕")
[![K1rsN7](https://github.com/K1rsN7.png?size=60)](https://github.com/K1rsN7 "K1rsN7 on GitHub💪")
[![codesbyahsen](https://github.com/codesbyahsen.png?size=60)](https://github.com/codesbyahsen "AHSEN ALEE on GitHub")
[![Freddywhest](https://github.com/Freddywhest.png?size=60)](https://github.com/Freddywhest "Alfred Nti on GitHub")
[![Shiro-cha](https://github.com/Shiro-cha.png?size=60)](https://github.com/Shiro-cha "Shiro Yukami on Github")
[![Abid-Nafi](https://github.com/MohammedAbidNafi.png?size=60)](https://github.com/MohammedAbidNafi "Abid Nafi on Github")
[![Srijan-Baniyal](https://github.com/Srijan-Baniyal.png?size=60)](https://github.com/Srijan-Baniyal "Srijan Baniyal on Github")
[![BrunoOliveiraS](https://github.com/BrunoOliveiraS.png?size=60)](https://github.com/BrunoOliveiraS "Bruno Oliveira on Github")
[![zidk](https://github.com/zidk.png?size=60)](https://github.com/zidk "Pablo Gonzalez on Github")
[![tshr-d-dragon](https://github.com/tshr-d-dragon.png?size=60)](https://github.com/tshr-d-dragon "Tushar Patil on Github")
[![DeveshYadav13](https://github.com/DeveshYadav13.png?size=60)](https://github.com/DeveshYadav13 "Devesh Yadav on Github")
[![HauseMasterZ](https://github.com/HauseMasterZ.png?size=60)](https://github.com/HauseMasterZ "HauseMaster on Github")
[![hyskoniho](https://github.com/hyskoniho.png?size=60)](https://github.com/hyskoniho "hyskoniho on Github")
[![elvisisvan](https://github.com/elvisisvan.png?size=60)](https://github.com/elvisisvan "elvisisvan on Github")
[![Nquenan](https://github.com/Nquenan.png?size=60)](https://github.com/Nquenan "Nquenan on Github")
[![akhilnev](https://github.com/akhilnev.png?size=60)](https://github.com/akhilnev "Akhilesh Nevatia on Github")
[![mannysoft](https://github.com/mannysoft.png?size=60)](https://github.com/mannysoft "Manny Isles on Github")
[![LinThitHtwe](https://github.com/LinThitHtwe.png?size=60)](https://github.com/LinThitHtwe "LinThitHtwe on Github")
[![Elio-Aliaj](https://github.com/Elio-Aliaj.png?size=60)](https://github.com/Elio-Aliaj "Elio-Aliaj on Github")
[![presentformyfriends](https://github.com/presentformyfriends.png?size=60)](https://github.com/presentformyfriends "presentformyfriends on Github")
[![Ad7amstein](https://github.com/Ad7amstein.png?size=60)](https://github.com/Ad7amstein "Ad7amstein on Github")
[![LakshmanKishore](https://github.com/LakshmanKishore.png?size=60)](https://github.com/LakshmanKishore "LakshmanKishore on Github")
[![mateusadada](https://github.com/mateusadada.png?size=60)](https://github.com/mateusadada "mateusadada on Github")
[![fasakinhenry](https://github.com/fasakinhenry.png?size=60)](https://github.com/fasakinhenry "fasakinhenry on Github")
[![YousifAbozid](https://github.com/YousifAbozid.png?size=60)](https://github.com/YousifAbozid "YousifAbozid on Github")
[![hheinsoee](https://github.com/hheinsoee.png?size=60)](https://github.com/hheinsoee "hheinsoee on Github")
[![lucmsilva651](https://github.com/lucmsilva651.png?size=60)](https://github.com/lucmsilva651 "lucmsilva651 on Github")
[![ashertenenbaum](https://github.com/ashertenenbaum.png?size=60)](https://github.com/ashertenenbaum "ashertenenbaum on Github")
[![0dxplt](https://github.com/0dxplt.png?size=60)](https://github.com/0dxplt "0dxplt on Github")
[![HerobrineTV](https://github.com/HerobrineTV.png?size=60)](https://github.com/HerobrineTV "HerobrineTV on Github")
[![Borketh](https://github.com/Borketh.png?size=60)](https://github.com/Borketh "Borketh on Github")
[![Jafeth Yahuma](https://github.com/Callmeproteus.png?size=60)](https://github.com/Callmeproteus "Callmeproteus on GitHub")
[![João Pedro](https://github.com/JotaP07.png?size=60)](https://github.com/JotaP07 "JP on GitHub")
[![suzukimain](https://github.com/suzukimain.png?size=60)](https://github.com/suzukimain "suzukimain on Github")
[![caesar013](https://github.com/caesar013.png?size=60)](https://github.com/caesar013 "caesar013 on Github")
[![amir78729](https://github.com/amir78729.png?size=60)](https://github.com/amir78729 "Amir on Github")
[![AJsuper007](https://github.com/AJsuper007.png?size=60)](https://github.com/AJsuper007 "AJsuper007 on Github")
[![ABAN26](https://github.com/ABAN26.png?size=60)](https://github.com/ABAN26 "ABAN26 on Github")
[![Soham More](https://github.com/SohamMore100.png?size=60)](https://github.com/SohamMore100 "Soham More on GitHub")
[![Yogi Hariyani](https://github.com/yobro7292.png?size=60)](https://github.com/Yobro7292 "Yogi Hariyani on GitHub")
[![Antônio Nascimento](https://github.com/Ninja1375.png?size=60)](https://github.com/Ninja1375 "Antônio Nascimento on GitHub")
[![Ishaan Rastogi](https://github.com/TridentifyIshaan.png?size=60)](https://github.com/TridentifyIshaan "Tridentify Ishaan on GitHub")
[![Eligijus Ciza](https://github.com/krimmyy.png?size=60)](https://github.com/krimmyy "Eligijus Ciza on GitHub")
[![Ashish Vaghela](https://github.com/Ashish-CodeJourney.png?size=60)](https://github.com/Ashish-CodeJourney "Ashish Vaghela on GitHub")
[![Snoopy1866](https://github.com/Snoopy1866.png?size=60)](https://github.com/Snoopy1866 "Snoopy1866 on GitHub")
[![Sarthak Krishak](https://github.com/SarthakKrishak.png?size=60)](https://github.com/SarthakKrishak "Sarthak Krishak on GitHub")
[![Austin Musuya](https://github.com/AustinMusuya.png?size=60)](https://github.com/AustinMusuya "Austin Musuya on GitHub")
[![Rohit](https://github.com/EngineerRohit01.png?size=60)](https://github.com/EngineerRohit01 "Rohit on GitHub")
[![Sandeep Prasad](https://github.com/Sandeep-Petwal.png?size=60)](https://github.com/sandeep-Petwal "Sandeep Prasad on GitHub")
[![Saad Hussain](https://github.com/saadhusayn.png?size=60)](https://github.com/saadhusayn "Saad Hussain on Github")
[![Rahul Raj](https://github.com/Theglassofdata.png?size=60)](https://github.com/Theglassofdata "Rahul Raj")
[![Aditya Singh](https://github.com/EchoSingh.png?size=60)](https://github.com/EchoSingh "Aditya Singh on Github")
[![Muhammad Noraeii](https://github.com/Muhammad-Noraeii.png?size=60)](https://github.com/Muhammad-Noraeii "Muhammad Noraeii on Github")
[![Harry Skerritt](https://github.com/user-attachments/assets/392d404f-b0af-4fab-b4f7-120a36ffc3f4)](https://github.com/Harry-Skerritt "Harry-Skerritt on Github")
[![Madhurima Rawat](https://github.com/madhurimarawat.png?size=60)](https://github.com/madhurimarawat "Madhurima Rawat on Github")
[![wfxey](https://github.com/wfxey.png?size=60)](https://github.com/wfxey "wfxey on Github")
[![Lixiao Zhu](https://github.com/zhulixiao.png?size=60)](https://github.com/zhulixiao "Lixiao Zhu on Github")
[![Ahmed Nassar](https://github.com/AhmedNassar7.png?size=60)](https://github.com/AhmedNassar7 "Ahmed Nassar on Github")

Feel free to [open a PR](https://github.com/DenverCoder1/readme-typing-svg/issues/21#issue-870549556) and add yours!

## 🔧 Options

|    Parameter    |                                   Details                                   |  Type   |                                                      Example                                                      |
| :-------------: | :-------------------------------------------------------------------------: | :-----: | :---------------------------------------------------------------------------------------------------------------: |
|     `lines`     |       Text to display with lines separated by `;` and `+` for spaces        | string  |                                        `First+line;Second+line;Third+line`                                        |
|    `height`     |             Height of the output SVG in pixels (default: `50`)              | integer |                                                Any positive number                                                |
|     `width`     |             Width of the output SVG in pixels (default: `400`)              | integer |                                                Any positive number                                                |
|     `size`      |                     Font size in pixels (default: `20`)                     | integer |                                                Any positive number                                                |
|     `font`      |                     Font family (default: `monospace`)                      | string  |                                            Any font from Google Fonts                                             |
|     `color`     |                    Color of the text (default: `36BCF7`)                    | string  |                                         Hex code without # (eg. `F724A9`)                                         |
|  `background`   |             Background color of the text (default: `00000000`)              | string  |                                         Hex code without # (eg. `FEFF4C`)                                         |
|    `center`     |    `true` to center text or `false` for left aligned (default: `false`)     | boolean |                                                 `true` or `false`                                                 |
|    `vCenter`    |  `true` to center vertically or `false`(default) to align above the center  | boolean |                                                 `true` or `false`                                                 |
|   `multiline`   |  `true` to wrap lines or `false` to retype on one line (default: `false`)   | boolean |                                                 `true` or `false`                                                 |
|   `duration`    | Duration of the printing of a single line in milliseconds (default: `5000`) | integer |                                                Any positive number                                                |
|     `pause`     |     Duration of the pause between lines in milliseconds (default: `0`)      | integer |                                              Any non-negative number                                              |
|    `repeat`     |  `true` to loop around to the first line after the last (default: `true`)   | boolean |                                                 `true` or `false`                                                 |
|   `separator`   |     Separator used between lines in the lines parameter (default: `;`)      | string  |                                               `;`, `;;`, `/`, etc.                                                |
| `letterSpacing` |                     Letter spacing (default: `normal`)                      | string  | Any css values for the [letter-spacing](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing) property |

## 📤 Deploying it on your own

If you can, it is preferable to host the files on your own server.

Doing this can lead to better uptime and more control over customization (you can modify the code for your usage).

You can deploy the PHP files on any website server with PHP installed or as a Heroku app.

### Step-by-step instructions for deploying to Heroku

1. Sign in to **Heroku** or create a new account at <https://heroku.com>
2. Click the "Deploy to Heroku" button below

[![Deploy](https://www.herokucdn.com/deploy/button.svg "Deploy to Heroku")](https://heroku.com/deploy?template=https://github.com/DenverCoder1/readme-typing-svg/tree/main)

3. On the page that comes up, click **"Deploy App"** at the end of the form
4. Once the app is deployed, click **"Manage App"** to go to the dashboard
5. Scroll down to the **Domains** section in the settings to find the URL you will use in place of `readme-typing-svg.demolab.com`

## 🤗 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request if you have a way to improve this project.

Make sure your request is meaningful and you have tested the app locally before submitting a pull request.

Refer to [CONTRIBUTING.md](/CONTRIBUTING.md) for more details on contributing, installing requirements, and running the application.

## 🙋‍♂️ Support

💙 If you like this project, give it a ⭐ and share it with friends!

<!-- markdownlint-disable MD033 -->
<p align="left">
  <a href="https://www.youtube.com/channel/UCipSxT7a3rn81vGLw9lqRkg?sub_confirmation=1"><img alt="Youtube" title="Youtube" src="https://img.shields.io/badge/-Subscribe-red?style=for-the-badge&logo=youtube&logoColor=white"/></a>
  <a href="https://github.com/sponsors/DenverCoder1"><img alt="Sponsor with Github" title="Sponsor with Github" src="https://img.shields.io/badge/-Sponsor-ea4aaa?style=for-the-badge&logo=github&logoColor=white"/></a>
</p>
<!-- markdownlint-enable MD033 -->

[☕ Buy me a coffee](https://ko-fi.com/jlawrence)

---

Made with ❤️ and PHP

<!-- markdownlint-disable MD033 -->

<a href="https://heroku.com/"><img alt="Powered by Heroku" title="Powered by Heroku" src="https://img.shields.io/badge/-Powered%20by%20Heroku-6567a5?style=for-the-badge&logo=heroku&logoColor=white"/></a>

<!-- markdownlint-enable MD033 -->

This project uses [Twemoji](https://github.com/twitter/twemoji), published under the [CC-BY 4.0 License](https://creativecommons.org/licenses/by/4.0/)





-----
