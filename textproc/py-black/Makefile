# $OpenBSD: Makefile,v 1.8 2020/02/06 20:36:03 danj Exp $

COMMENT =		python code formatter

MODPY_EGG_VERSION =	19.3b0
DISTNAME =		black-${MODPY_EGG_VERSION}
PKGNAME =		py-black-${MODPY_EGG_VERSION:S/b/beta/}
REVISION =		1

CATEGORIES =		textproc devel

HOMEPAGE =		https://github.com/ambv/black

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-aiohttp

.include <bsd.port.mk>
