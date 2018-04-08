FROM gengjiawen/android-ndk

# use old ndk
ENV ANDROID_NDK_HOME /opt/android-ndk
ENV ANDROID_NDK /opt/android-ndk
ENV NDK_HOME /opt/android-ndk
ENV ANDROID_NDK_VERSION r10e
RUN rm -rf ${ANDROID_HOME}/ndk-bundle

RUN mkdir /opt/android-ndk-tmp && \
    cd /opt/android-ndk-tmp && \
    wget -q https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
    unzip -q android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
    mv ./android-ndk-${ANDROID_NDK_VERSION} ${ANDROID_NDK_HOME} && \
    cd ${ANDROID_NDK_HOME} && \
    rm -rf /opt/android-ndk-tmp

ENV PATH ${ANDROID_NDK_HOME}:$PATH

RUN apt-get install git ant python-dev subversion -y

#install buck and checkout jsc
RUN wget "https://github.com/facebook/buck/releases/download/v2018.03.26.01/buck_2018.03.26_all.deb" && \
    dpkg -i buck_2018.03.26_all.deb && \
    buck --version && \
    svn export https://svn.webkit.org/repository/webkit/trunk/@174650


