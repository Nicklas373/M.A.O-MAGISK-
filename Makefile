NAME ?= MIDF

DATE := $(shell date "+%Y%m%d-%H%M")

VER := v0.7.5-C

CODE := MAGISK

ZIP := $(NAME)-$(CODE)-$(VER)-$(DATE).zip

ZIP_SIGN := $(NAME)-$(CODE)-$(VER)-$(DATE)-signed.zip

ZIP_SHA := $(NAME)-$(CODE)-$(VER)-$(DATE).zip.sha1

EXCLUDE := Makefile *.git* *.jar* *placeholder* *.md* *.pem* *.pk8* *.jar* *.sha1*

normal: $(ZIP)

$(ZIP):
	@echo "Creating ZIP: $(ZIP)"
	@mv docs $(HOME)/docs
	@zip -r9 "$@" . -x $(EXCLUDE)
	@java -jar signapk.jar signature-key.Nicklas@XDA.x509.pem signature-key.Nicklas@XDA.pk8 $(ZIP) $(ZIP_SIGN)
	@echo "Generating SHA1..."
	@sha1sum "$@" > "$@.sha1"
	@cat "$@.sha1"
	@echo "Done."	
	@mv $(HOME)/docs docs
	@rm $(ZIP)
	@mv $(ZIP_SIGN) /home/hana/$(ZIP_SIGN)
	@mv $(ZIP_SHA) /home/hana/$(ZIP_SHA)
	
