[![CI](https://github.com/alessandrocandolini/handout_qm/actions/workflows/ci.yml/badge.svg)](https://github.com/alessandrocandolini/handout_qm/actions/workflows/ci.yml)

# handout_qm

Old notes of quantum mechanics from 2015, currently revamped 

## Install latex

My favourite way is through an ephemeral nix-shell, assuming you have [nix](https://nixos.org/) installed in your system:
```bash
nix-shell -p texlive.combined.scheme-full
```

Alternatively, you can look at [texlive](https://www.tug.org/texlive/) or, on MACOS, to `brew` or [mactex](https://www.tug.org/mactex/) 

## Compile 

From the root of the project, assuming a latex distribution is available in the system, the slides can be compiled using

```bash
latexmk -pdflatex handout_qm.tex
```

Alternatively, a `Makefile` is provided:
```bash
make all
```

If you want to handle manually by yourself the retries needed to populate correctlt tge index and other counters and biblio, you can still rely on the underlying `pdflatex` engine:
```bash
pdflatex handout_qm.tex
```
