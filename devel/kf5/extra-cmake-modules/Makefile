# $OpenBSD: Makefile,v 1.9 2020/03/30 15:00:38 rsadowski Exp $

COMMENT =		CMake modules required by KDE5
DISTNAME =		extra-cmake-modules-${VERSION}
HOMEPAGE =		https://projects.kde.org/projects/kdesupport/extra-cmake-modules
REVISION =		1

WANTLIB- =

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

CONFIGURE_ARGS +=	-DBUILD_QTHELP_DOCS=ON \
			-DQCollectionGenerator_EXECUTABLE=${MODQT_LIBDIR}/bin/qcollectiongenerator \
			-DSphinx_BUILD_EXECUTABLE=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

PKG_ARCH =		*

# use depleted
CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/ECM/find-modules/

.include <bsd.port.mk>
