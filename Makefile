
PLUGINS= \
        aMovies.zip \
        anidub.zip \
        asiandrama.ru.zip \
        hdserials.zip \
        hiphophit.zip \
        kaban.tv.zip \
	kino-dom.tv.zip \
        krasview.zip \
        ororo.tv.zip \
	video.az.zip \
	couchtuner.eu.zip \
        vkvideos.zip \
	DreamFilm.zip \
        M3u_playlist.zip \
	HDRezka.zip \

%.zip:
	@echo "Bundle plugin '$*'"
	@rm -f ./plugins/$*.zip
	@cd $*; zip -r9 ../plugins/$*.zip * -x *.js\~ > /dev/null; cd ..

all: ${PLUGINS}
