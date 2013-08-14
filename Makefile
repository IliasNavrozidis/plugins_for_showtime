
PLUGINS= \
        aMovies.zip \
        anidub.zip \
        asiandrama.ru.zip \
        HDSerials.zip \
        hiphophit.zip \
        kaban.tv.zip \
	kino-dom.tv.zip \
        krasview.zip \
        ororo.tv \
	video.az.zip \
	couchtuner.eu.zip \
        vkvideos.zip

%.zip:
	@echo "Bundle plugin '$*'"
	@rm -f ./plugins/$*.zip
	@cd $*; zip -r9 ../plugins/$*.zip * -x *.js\~ > /dev/null; cd ..

all: ${PLUGINS}
