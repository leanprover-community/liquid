# The liquid tensor experiment blueblueprint

This repository hosts the Liquid tensor experiment blueblueprint and website.
The Lean code for this project can be found [there](https://github.com/leanprover-community/lean-liquid).

## Dependencies

If you simply want to produce the `pdf` version of the blueblueprint, you don't
need anything beyond your usual TeX installation.

In order to build the `html` version you need 
[plasTeX](https://github.com/plastex/plastex/) and its 
[blueblueprint plugin](https://github.com/PatrickMassot/leanblueblueprint). 
You first need to make sure you have a decent python (at least 3.6). 
Then you can install:

```bash
pip install git@github.com:plastex/plastex.git
pip install git@github.com:PatrickMassot/leanblueblueprint.git
```

## Building

The source for the blueblueprint is in `src`. 
If you only want to build it as a `pdf` file then you can simply run 
`xelatex blueprint.tex` or `lualatex blueprint.tex` (or even `pdflatex blueblueprint.tex`
if you are stuck in the past).

In order to build the html version you need to generate `blueprint.bbl` using bibtex,
copy it to `web.bbl` and run `plastex -c plastex.cfg web.tex`.
