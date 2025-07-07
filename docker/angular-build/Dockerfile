FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./angular-tour-of-heroes/browser /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

ARG argValue
ARG argValue2
ARG argValueWithDeaultValue=the_default_value_of_the_arg

LABEL labelOne=label_default
LABEL labelTwo=${argValue2:-test_lbl}

ENV envValue=${argValue:-default_value_for_env}

RUN echo '==============================================='
RUN echo ${argValue}
RUN echo ${argValueWithDeaultValue}
RUN echo $envValue
RUN echo '==============================================='

ADD https://www.docker.com/app/uploads/2024/01/icon-docker-square.svg /usr/share/nginx/html/

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
