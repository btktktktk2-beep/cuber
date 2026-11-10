#!/bin/bash
# Резервная копия папки lesson1
# Архив создаётся с датой в имени и сразу защищается правами 600:
# права исходных файлов не переносятся на сам архив, поэтому без chmod
# любой пользователь системы мог бы распаковать копию секретов.

SOURCE=~/lesson1
DEST=~/backups
DATE=$(date +%Y-%m-%d_%H-%M)

mkdir -p "$DEST"
tar -czf "$DEST/lesson1_$DATE.tar.gz" "$SOURCE"
chmod 600 "$DEST/lesson1_$DATE.tar.gz"
echo "Готово: $DEST/lesson1_$DATE.tar.gz"
