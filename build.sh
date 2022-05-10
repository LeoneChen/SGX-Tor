set -e
cd Enclave/TrustedLibrary/LibEvent_SGX && autoreconf -i && ./configure && make -j16
cd ../OpenSSL_SGX && ./ina_setting.sh && make depend -j16 && make -j16
cd ../zlib-1.2.8 && ./configure && make -j16
cd ../../../ && make -j16
