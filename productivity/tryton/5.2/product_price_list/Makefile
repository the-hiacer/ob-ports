# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:48 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		product_price_list

TRYTON_DEPENDS +=	product \
			company

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
