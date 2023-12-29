FROM hub.easystack.cn/cube/es8:python3-aarch64

RUN export https_proxy=http://172.19.52.119:7890 http_proxy=http://172.19.52.119:3128

RUN yum install make emacs-filesystem vim-filesystem gcc glib2 glib2-devel bzip2 cmake zlib zlib-devel diffutils perl tar gzip

CMD [ "/bin/bash" ]
