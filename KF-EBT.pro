QT += core
QT -= gui

QMAKE_CXXFLAGS -= -O
QMAKE_CXXFLAGS -= -O1
QMAKE_CXXFLAGS *= -O2

QMAKE_CXXFLAGS += -std=gnu++11
QMAKE_CXXFLAGS += -march=corei7 -mtune=corei7

TARGET = KF-EBT
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

INCLUDEPATH += /usr/local/include/
INCLUDEPATH += /usr/local/include/opencv2/
INCLUDEPATH += /usr/local/include/opencv/

# Opencv
LIBS += -L/usr/local/lib -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_features2d -lopencv_ml -lopencv_video -lopencv_calib3d -lopencv_videoio -lopencv_imgcodecs

SOURCES += main.cpp \
    trackers/ASMS/colotracker.cpp \
    trackers/ASMS/histogram.cpp \
    trackers/ASMS/region.cpp \
    trackers/kcf/piotr_fhog/gradientMex.cpp \
    trackers/kcf/adjust.cpp \
    trackers/kcf/kcf.cpp \
    kfebt.cpp \
    trackers/tasms.cpp \
    trackers/tkcf.cpp

HEADERS += \
    trackers/ASMS/colotracker.h \
    trackers/ASMS/histogram.h \
    trackers/ASMS/region.h \
    trackers/kcf/piotr_fhog/fhog.hpp \
    trackers/kcf/piotr_fhog/gradientMex.h \
    trackers/kcf/piotr_fhog/sse.hpp \
    trackers/kcf/piotr_fhog/wrappers.hpp \
    trackers/kcf/adjust.h \
    trackers/kcf/complexmat.hpp \
    trackers/kcf/kcf.h \
    trackers/btracker.h \
    kfebt.h \
    vot.h \
    trackers/tasms.h \
    trackers/tkcf.h

DISTFILES += \
    trackers/ASMS/CMakeLists.txt \
    trackers/kcf/piotr_fhog/CMakeLists.txt \
    trackers/kcf/CMakeLists.txt \
    trackers/kcf/README.md \
    README.md
