ARG PYTHON_VERSION=3.7.16

FROM python:${PYTHON_VERSION}-slim-bullseye

ARG USERNAME=app
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

WORKDIR /app

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    && chown -R ${USERNAME} /app

USER ${USERNAME}

COPY . .

# TODO: django stuff here
# RUN python -m pip install --no-cache-dir -r requirements.txt \
#     && python manage.py migrate
RUN python -m pip install --no-cache-dir -r requirements.txt

CMD [ "/bin/bash" ]
