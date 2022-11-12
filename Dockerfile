# Pull Image
FROM rocker/tidyverse:4.1.2

# Set Global Options
# COPY --chown=rstudio:rstudio _rstudio/.config/rstudio/rstudio-prefs.json /home/rstudio/.config/rstudio/rstudio-prefs.json

# OS環境を日本語ロケールに切り替える
# ENV LANG ja_JP.UTF-8
# ENV LC_ALL ja_JP.UTF-8
# RUN sed -i '$d' /etc/locale.gen \
#   && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
#     && locale-gen ja_JP.UTF-8 \
#     && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
# RUN /bin/bash -c "source /etc/default/locale"
# RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# 日本語フォントをインストールする
# RUN apt-get update && apt-get install -y \
#   fonts-ipaexfont \
#   fonts-noto-cjk

# Install packages
# RUN install2.r "devtools"
# RUN R -e 'devtools::install_github("kazutan/tubeplayR")'
