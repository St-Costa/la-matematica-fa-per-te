<h1 align="center">La matematica fa per te?</h1>

<p align="center">
  <em>Introduzione alla matematica universitaria &mdash; un primo sguardo per chi sta per iniziare la facoltà.</em><br>
  di <strong>Stefano Costa</strong>
</p>

<p align="center">
  <a href="LICENSE"><img alt="Licenza: CC BY-NC-ND 4.0" src="https://img.shields.io/badge/Licenza-CC%20BY--NC--ND%204.0-lightgrey.svg"></a>
  <img alt="Formato: LaTeX" src="https://img.shields.io/badge/Sorgente-LaTeX-008080.svg?logo=latex&logoColor=white">
  <img alt="Lingua: Italiano" src="https://img.shields.io/badge/Lingua-Italiano-blue.svg">
</p>

*La matematica fa per te?* è un breve libro che spiega **cosa sia davvero la matematica e cosa
significhi studiarla all'università**, partendo da argomenti che non richiedono alcuna preparazione
pregressa. Il filo conduttore è il concetto di **insieme**; il taglio è quello del ragionamento e
della dimostrazione, non dell'esercizio ripetuto.

## Stato

📖 **Completo.** Il testo è quello della prima stesura (2020) e non è in sviluppo attivo.
Segnalazioni di errori (matematici, tipografici, di battitura) sono benvenute tramite
[issue](../../issues); vedi [Contribuire](#contribuire).

## Il libro

### A chi si rivolge

- Studenti delle superiori che stanno valutando una facoltà scientifica (matematica in primis).
- Matricole al primo anno che vogliono farsi un'idea dei primi argomenti e del *formalismo*.
- Chiunque sia curioso di come si ragiona in matematica, senza bisogno di prerequisiti.

### Contenuto

L'ordine dei capitoli segue una **difficoltà crescente** e riproduce la natura sequenziale dello
studio della matematica, in cui ogni argomento poggia sui precedenti.

| # | Capitolo | Cosa tratta |
|---|----------|-------------|
| 1 | **Simboli matematici** | Il linguaggio e le notazioni di base |
| 2 | **Insiemi** | Definizioni, operazioni, prime dimostrazioni |
| 3 | **Costruzione dei numeri** | Dai numeri naturali in avanti |
| 4 | **Criteri di divisibilità** | L'argomento più impegnativo, dimostrato passo passo |
| 5 | **Fonti e bibliografia** | Riferimenti e letture |

Il fronte e il retro della copertina sono la rappresentazione grafica di alcune iterazioni
dell'insieme di Cantor (*Cantor set*).

## Come leggerlo

Il PDF già compilato è incluso nel repository:

- **[dist/LibroMatematica.pdf](dist/LibroMatematica.pdf)** &mdash; versione da leggere/stampare.

## Compilare dai sorgenti

### Prerequisiti

- Una distribuzione TeX completa: **TeX Live**, **MacTeX** o **MiKTeX**.
- I pacchetti usati nel preambolo: `amsmath`, `amssymb`, `makecell`, `geometry`, `mdframed`,
  `ragged2e`, `fancyhdr`, `graphicx`, `tikz` (librerie `calc`, `arrows`, `positioning`,
  `decorations.pathreplacing`), `nameref`, `verbatimbox`, `blindtext`, `afterpage`, `layout`,
  `polynom`, `mathtools`, `nccmath`, `enumitem`, `titlesec`.
  Con TeX Live completo sono già tutti presenti.

### Compilazione

Dalla root del repository:

```bash
latexmk
```

Il file [latexmkrc](latexmkrc) è già configurato: il PDF finale viene scritto in `dist/`, mentre
tutti gli intermedi (`.aux`, `.log`, `.toc`, `.synctex.gz`, …) finiscono in `build/`, che è
escluso da git.

- `latexmk -c` &mdash; rimuove gli intermedi, tiene il PDF.
- `latexmk -C` &mdash; rimuove tutto, PDF compreso.

Senza `latexmk`, a mano:

```bash
cd src
pdflatex LibroMatematica.tex
pdflatex LibroMatematica.tex   # seconda passata per indice e riferimenti
```

## Struttura del repository

```
.
├── src/
│   └── LibroMatematica.tex     # sorgente unico del libro (~1900 righe)
├── dist/
│   └── LibroMatematica.pdf     # PDF compilato, versionato per la lettura
├── cover/
│   ├── copertina.png           # copertina (immagine)
│   └── copertina_stampa.pdf    # copertina (PDF, dentro i margini di stampa)
├── latexmkrc                   # configurazione di compilazione (output in dist/, intermedi in build/)
├── LICENSE                     # CC BY-NC-ND 4.0
├── README.md
└── .gitignore                  # esclude gli artefatti di compilazione LaTeX e la cartella build/
```

Il sorgente è autonomo: non include immagini esterne (le illustrazioni sono disegnate con TikZ),
quindi `src/LibroMatematica.tex` si compila da solo.

## Contribuire

Non si accettano opere derivate (lo vieta la licenza), ma **correzioni sì**:

1. Apri una [issue](../../issues) descrivendo l'errore e indicando pagina/sezione.
2. In alternativa, una pull request che modifica solo `src/LibroMatematica.tex`, con una breve
   spiegazione della correzione nel messaggio.

Per favore niente riscritture di stile o riorganizzazioni di capitoli: l'ordine e il taglio sono
scelte intenzionali dell'autore.

## Licenza

© Stefano Costa.

Quest'opera è distribuita con licenza
**[Creative Commons Attribuzione - Non commerciale - Non opere derivate 4.0 Internazionale
(CC BY-NC-ND 4.0)](LICENSE)**.

Sei libero di **scaricarla e condividerla** con qualsiasi mezzo e formato, a queste condizioni:

- **Attribuzione** &mdash; devi citare l'autore e indicare la fonte.
- **Non commerciale** &mdash; non puoi usare il materiale per scopi commerciali.
- **Non opere derivate** &mdash; se remixi, trasformi o sviluppi il materiale, non puoi
  distribuire il materiale così modificato.
