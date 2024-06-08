ifdef JAVAC
else
	JAVAC=~/Downloads/jdk1.6.0_45/bin/javac
endif

ifdef WORLDSPLAYER_JAR
else
	WORLDSPLAYER_JAR=${HOME}/.local/share/bottles/bottles/WorldsPlayer/drive_c/Program Files (x86)/Worlds Inc/WorldsPlayer - BowieFull/lib/worlds.jar
endif

.PHONY: compile decompile install options

all: options

compile:
	JAVAC=${JAVAC} ./bin/compile

decompile:
	WORLDSPLAYER_JAR=${WORLDSPLAYER_JAR} ./bin/decompile

install:
	cp ./out/worlds.jar "${WORLDSPLAYER_JAR}"

options:
	@echo "JAVAC=${JAVAC}"
	@echo "WORLDSPLAYER_JAR=${WORLDSPLAYER_JAR}"
