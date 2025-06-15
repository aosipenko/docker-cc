FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./angular-tour-of-heroes/browser /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

ARG versionValue=v1.0.0
ARG labelValue=default_label
#ARG defaultUser=root
ARG argValue
ARG argValueWithDeafultValue

ENV argValueEnv=$argValue
ENV argValueWithDeafultValue=${argValueWithDeafultValue:-new_env_default}

LABEL author=$labelValue
LABEL version=$versionValue

#USER $defaultUser

RUN echo "======================================="
RUN echo $argValueEnv
RUN echo $argValueWithDeafultValue
RUN echo "======================================="


ADD https://www.docker.com/app/uploads/2024/01/icon-docker-square.svg /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]