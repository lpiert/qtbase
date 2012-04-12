option(host_build)
TEMPLATE = app
TARGET = qdbuscpp2xml

DESTDIR = ../../../bin

include(../moc/moc.pri)

INCLUDEPATH += $$QT_BUILD_TREE/include \
                   $$QT_BUILD_TREE/include/QtDBus \
                   $$QT_BUILD_TREE/include/QtDBus/$$QT.dbus.VERSION \
                   $$QT_BUILD_TREE/include/QtDBus/$$QT.dbus.VERSION/QtDBus \
                   $$QT_SOURCE_TREE/src/dbus

QMAKE_CXXFLAGS += $$QT_CFLAGS_DBUS

SOURCES += qdbuscpp2xml.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusmetatype.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusutil.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusmisc.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusargument.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusmarshaller.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusextratypes.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbus_symbols.cpp \
          $$QT_SOURCE_TREE/src/dbus/qdbusunixfiledescriptor.cpp

include(../bootstrap/bootstrap.pri)

target.path = $$[QT_HOST_BINS]
INSTALLS += target
load(qt_targets)
