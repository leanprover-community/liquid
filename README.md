# The liquid tensor experiment blueprint

This repository hosts the Liquid tensor experiment blueprint and website.
The Lean code for this project can be found [there](https://github.com/leanprover-community/lean-liquid).

## Dependencies

If you simply want to produce the `pdf` version of the blueprint, you don't
need anything beyond your usual TeX installation.

In order to build the `html` version you need 
[plasTeX](https://github.com/plastex/plastex/) and its 
[blueprint plugin](https://github.com/PatrickMassot/leanblueprint). 
You first need to make sure you have a decent python (at least 3.6). 
Then you can install:

```bash
pip install git+https://github.com/plastex/plastex.git
pip install git+https://github.com/PatrickMassot/leanblueprint.git
```

Also install `pdf2svg` and `pdfcrop`:

```bash
apt install pdf2svg
apt install texlive-extra-utils
```

## Initial setup

The blueprint needs to know where a compiled version
of the Lean source code lives.
In the root directory of the blueprint repo,
create a symlink `project` pointing to the root of
the `lean-liquid` repository:

```bash
ln -s ../lean-liquid project   # modify as needed
```

## Building

The source for the blueprint is in `src`. 
If you only want to build it as a `pdf` file then you can simply run 
`xelatex blueprint.tex` or `lualatex blueprint.tex` (or even `pdflatex blueprint.tex`
if you are stuck in the past).

In order to build the html version you need to generate `blueprint.bbl` using bibtex,
copy it to `web.bbl` and run `plastex -c plastex.cfg web.tex`. The webpage will be built inside a `web` folder in the repository root folder.

Note that the dependency graph using graph-viz won't work if you simply open `web/dep_graph.html` in 
a browser because of browser paranoia. It has to be accessed through a web server. For instance you can go to the `web` folder and type `python -m http.server` and then follow the instructions.

## Authoring

The main TeX file to edit is `content.tex`. It is a normal TeX file except that
each definition and statement must have a `\label` and there are four special LaTeX macros:
* `\lean{name}` indicates the fully namespaced Lean declaration that formalizes
  the current definition or statement.
* `\leanok` means the current definition, statement or proof has been fully formalized (in particular
  a lemma can have `\leanok` in its statement without having it in its proof environment.
* `\uses{refs}` where `refs` is a comma-separated list of LaTeX label can be
  put inside a definition, statement or proof environment. It means each of
  those labels is used by the current environment. This is what creates edges
  in the dependency graph. This mechanism is completely independent from
  `\ref`. With `leanok` this is the most important command to organize work.
* `\proves{label}` can be put in a `proof` environment to indicate which
  statement is proved if this is not obvious (ie it is not proving the
  preceding statement).
