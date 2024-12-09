FROM python:3.9

ARG USER_ID=1000
ARG GROUP_ID=1000
ARG WORKDIR_PATH="/home/application/app"

ENV PATH="${WORKDIR_PATH}/python_env/bin:${PATH}"
ENV PYTHONPATH="${WORKDIR_PATH}/src"
ENV VIRTUAL_ENV="${WORKDIR_PATH}/python_env"

RUN addgroup --gid ${GROUP_ID} service && \
    adduser application --uid ${USER_ID} --system --ingroup service

USER application
WORKDIR ${WORKDIR_PATH}
