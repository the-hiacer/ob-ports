# $OpenBSD: Makefile,v 1.7 2017/07/27 11:57:48 sthen Exp $

COMMENT =	KDE screen gamma management
DISTNAME =	kgamma-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xext Xxf86vm
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

.include <bsd.port.mk>
