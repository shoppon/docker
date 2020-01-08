FROM node:buster

RUN npm install -g gitbook-cli
RUN gitbook install
RUN npm install -g gitbook-plugin-chapter-fold
RUN npm install -g gitbook-plugin-expandable-chapters
RUN npm install -g gitbook-plugin-splitter
RUN npm install -g gitbook-plugin-page-treeview

CMD ["/bin/bash"]
