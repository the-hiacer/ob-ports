# $OpenBSD: Makefile,v 1.12 2020/05/31 09:30:05 jasper Exp $

COMMENT =		simple Python interface for Graphviz

MODPY_EGG_VERSION =	0.14
DISTNAME =		graphviz-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip
MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			math/graphviz

.include <bsd.port.mk>
