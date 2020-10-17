FROM ljk963/android-tools:26.1.1

RUN sdkmanager "build-tools;30.0.2" "platforms;android-29" \
    && npm install -g cordova@10.0.0 \
    && cordova telemetry off \
    && cordova create initProject \
    && cd initProject \
    && cordova platform add android \
    && cordova build android \
    && cd .. \
    && rm -rf initProject