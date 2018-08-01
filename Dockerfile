FROM 100.125.0.198:20202/hwcpe-cn-north-1/as-go:1.8.5

COPY ./gosdkdemo /home
COPY ./conf /home/conf
RUN chmod +x /home/gosdkdemo

CMD ["/home/gosdkdemo"]