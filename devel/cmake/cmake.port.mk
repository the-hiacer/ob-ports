# $OpenBSD: cmake.port.mk,v 1.10 2011/11/01 11:10:33 dcoppa Exp $

BUILD_DEPENDS+=	devel/cmake>=2.8.0

.for _n _v in ${SHARED_LIBS}
CONFIGURE_ENV+=LIB${_n}_VERSION=${_v}
MAKE_ENV+=LIB${_n}_VERSION=${_v}
.endfor

CONFIGURE_ENV +=	MODJAVA_VER=${MODJAVA_VER} \
			MODPY_VERSION=${MODPY_VERSION} \
			MODPY_BIN=${MODPY_BIN} \
			MODPY_INCDIR=${MODPY_INCDIR} \
			MODPY_LIBDIR=${MODPY_LIBDIR} \
			MODTCL_VERSION=${MODTCL_VERSION} \
			MODTK_VERSION=${MODTK_VERSION} \
			MODTCL_INCDIR=${MODTCL_INCDIR} \
			MODTK_INCDIR=${MODTK_INCDIR} \
			MODTCL_LIBDIR=${MODTCL_LIBDIR} \
			MODTK_LIBDIR=${MODTK_LIBDIR} \
			MODTCL_LIB=${MODTCL_LIB} \
			MODTK_LIB=${MODTK_LIB}

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	cmake
.endif
MODCMAKE_configure=	cd ${WRKBUILD} && ${_SYSTRACE_CMD} ${SETENV} \
	CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY:Bool=True \
			${CONFIGURE_ARGS} ${WRKSRC}

REGRESS_TARGET?=	test

MODCMAKE_WANTCOLOR ?= No
MODCMAKE_VERBOSE ?= Yes

.if ${MODCMAKE_WANTCOLOR:L} == "yes" && defined(TERM)
MAKE_ENV += TERM=${TERM}
.endif

.if ${MODCMAKE_VERBOSE:L} == "yes"
MAKE_ENV += VERBOSE=1
.endif
