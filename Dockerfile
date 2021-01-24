FROM continuumio/miniconda3

RUN conda update --all -y &&\
    conda config --add channels bioconda &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    #conda create -y -n py3 python=3.7 &&\
    #python3.7
    conda install -y -c conda-forge matplotlib numpy pandas statsmodels scikit-learn &&\
    conda install -y -c bioconda pysam &&\
    #R3.5.2
    conda install -y -c conda-forge r-ggfortify r-ggplot2 &&\
    conda install -y -c bioconda bioconductor-dnacopy bioconductor-rsamtools
    
CMD ["/bin/bash"]