FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./angular-tour-of-heroes/browser /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

ARG argValue
ARG argDefaultValue=argument_default_value

RUN echo "ARG values test"
RUN echo '====================================='
RUN echo $argValue
RUN echo $argDefaultValue

ENV argValue=${argValue:-v1.0.0}
RUN echo $argValue
RUN echo '====================================='

ADD https://www.docker.com/app/uploads/2024/01/icon-docker-square.svg /usr/share/nginx/html/ /usr/share/nginx/html/


EXPOSE 80

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]