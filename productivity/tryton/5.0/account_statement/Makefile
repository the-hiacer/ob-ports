# $OpenBSD: Makefile,v 1.7 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
