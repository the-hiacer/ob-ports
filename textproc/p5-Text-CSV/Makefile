# $OpenBSD: Makefile,v 1.17 2020/03/05 13:27:28 sthen Exp $

COMMENT =	comma-separated values manipulation routines

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Text-CSV-2.00
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-Text-CSV_XS

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
