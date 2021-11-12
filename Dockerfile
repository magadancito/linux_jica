FROM ubuntu:20.04
MAINTAINER MC Marco Aurelio Aragon Magadan "aragon.marco@inifap.gob.mx"

ENV DEBIAN_FRONTEND teletype

RUN apt update && apt install -y wget
RUN mkdir programas 
RUN cd programas && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN chmod +x /programas/Miniconda3-latest-Linux-x86_64.sh
RUN /programas/Miniconda3-latest-Linux-x86_64.sh -b
RUN rm -r /programas/
ENV PATH=/root/miniconda3/bin:${PATH}

RUN conda install -c bioconda -y fastqc 
#RUN conda install -c bioconda fastp spades
#RUN conda create -n quast quast -c bioconda
#RUN conda create -n rnaquast rnaquast -c bioconda 
#RUN apt install -y nano git


