#!/bin/bash
# $Header: /usr/local/ssd/gentoo-x86/output/www-servers/cvs-repo/gentoo-x86/www-servers/orion/files/2.0.5/Attic/start_orion.sh,v 1.1 2005/01/08 01:59:21 karltk Exp $

source /etc/conf.d/orion
JAVAC=${JAVA_HOME}/bin/javac
JDK_HOME=${JAVA_HOME}

cd ${ORION_DIR}

${JAVA_HOME}/bin/java -jar /usr/share/orion/lib/orion.jar -quiet -out ${ORION_OUT} -err ${ORION_ERR} &
