FROM debian:latest
MAINTAINER Markus Graube <markus.graube@tu-dresden.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install --no-install-recommends -qy  \
                    texlive-science \
                    texlive-latex-extra \
                    texlive-fonts-recommended \
                    texlive-lang-german \
                    texlive-bibtex-extra \
                    latexmk \
                    biber && \
    rm -rf /var/lib/apt/lists/*

