FROM node:buster

RUN npm install -g gitbook-cli
RUN gitbook install
RUN npm install -g gitbook-plugin-chapter-fold
RUN npm install -g gitbook-plugin-expandable-chapters
RUN npm install -g gitbook-plugin-splitter
RUN npm install -g gitbook-plugin-page-treeview

RUN sed -i 's/confirm: true/confirm: false/g' /root/.gitbook/versions/3.2.3/lib/output/website/copyPluginAssets.js

CMD ["/bin/bash"]
