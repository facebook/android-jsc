FROM gengjiawen/android-ndk

RUN apt-get install subversion gperf git ant python-dev -y

#install buck
RUN git clone "https://github.com/facebook/buck.git" && \
    cd buck && \
    ant && \
    ln ./bin/buck /usr/bin && \
    buck --version && \
    git clone "https://github.com/WebKit/webkit"


