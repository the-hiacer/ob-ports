# $OpenBSD: Makefile,v 1.107 2020/06/04 07:33:49 jasper Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.36.3

SHARED_LIBS += mutter-cogl-6             0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-path-6        0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-pango-6       0.0 # 0.0.0
SHARED_LIBS += mutter-clutter-6          0.0 # 0.0.0
SHARED_LIBS += mutter-6                  0.0 # 0.0.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xtst atk-1.0 c cairo
WANTLIB += cairo-gobject canberra fontconfig fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gtk-3 intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 startup-notification-1 xcb xcb-randr xcb-res
WANTLIB += xkbcommon xkbcommon-x11 xkbfile graphene-1.0

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra \
			devel/startup-notification \
			x11/gnome/desktop \
			x11/xkbcommon

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/settings-daemon \
			x11/gnome/zenity

RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/settings-daemon \
			x11/gnome/zenity

# Required by embedded cogl/clutter forks.
CONFIGURE_ARGS +=	-Dsm=true

# cogl
CONFIGURE_ARGS +=	-Dopengl_libname=libGL.so \
			-Dgles2_libname=libGLESv2 \
			-Dudev=false \
			-Dwayland=false \
			-Dlibwacom=false \
			-Dnative_backend=false \
			-Dtests=false \
			-Dprofiler=false
# requires unported pipewire
CONFIGURE_ARGS +=	-Dremote_desktop=false

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>
