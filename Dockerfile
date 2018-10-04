FROM nvidia/cudagl:10.0-runtime-ubuntu18.04

RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-dev ipython3 module-init-tools curl build-essential python3-pip

RUN pip3 install -U pip setuptools wheel

RUN pip3 install numpy posix_ipc holodeck

RUN apt-get remove -y build-essential && apt-get -y autoremove

RUN adduser --disabled-password --gecos "" holodeckuser

USER holodeckuser

RUN python3 -c 'import holodeck; holodeck.install("DefaultWorlds")'

CMD ["python3"]
