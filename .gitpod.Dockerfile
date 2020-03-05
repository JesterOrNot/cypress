FROM gitpod/workspace-full-vnc

USER gitpod

RUN bash -cl ". .nvm/nvm.sh \
  && nvm install 12.8 \
  && nvm use 12.8 \
  && npm install -g webpack gulp lerna yarn \
  && echo -e \"\nnvm use 12.8\" >> ~/.bashrc"
