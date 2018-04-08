FROM gengjiawen/android-ndk

RUN apt-get install git ant python-dev -y

#install buck
RUN wget "https://github.com/facebook/buck/releases/download/v2018.03.26.01/buck_2018.03.26_all.deb" && \
    dpkg -i buck_2018.03.26_all.deb && \
    buck --version && \
    git clone "https://github.com/WebKit/webkit"


