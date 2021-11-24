# Dockerfile-nginx

FROM nginx:latest

# # Application-level base config
# ENV APP_DIR="ncap" \
#     VENV_FILE=.venv \
#     DJANGO_USER="ncapdev"
# ENV CODE_DIR="/home/${DJANGO_USER}/${APP_DIR}"

# RUN mkdir --parents $CODE_DIR

# # Copy project
# ADD ./docs/ $CODE_DIR

# Nginx will listen on this port
EXPOSE 80

# Remove the default config file that
# /etc/nginx/nginx.conf includes
RUN rm /etc/nginx/conf.d/default.conf; exit 0
COPY test.conf /etc/nginx/conf.d/
