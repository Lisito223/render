FROM ubuntu:latest  
WORKDIR /app  
RUN apt update && apt install -y wget curl tar  
RUN wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.2/srbminer_custom-2.4.2.tar.gz && tar -xf srbminer_custom-2.4.2.tar.gz  
WORKDIR /app/srbminer_custom  
RUN chmod +x srbminer_custom_bin  
CMD ["./srbminer_custom_bin", "--algorithm", "yespowerLTNCG", "--wallet", "KVMEdbpwZhxG3JNkWty4JTFPSZfkxJ3zQ2", "--pool", "us.mining4people.com:4170"]  
