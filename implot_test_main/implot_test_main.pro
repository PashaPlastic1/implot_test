TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        deargui/imgui.cpp \
        deargui/imgui_demo.cpp \
        deargui/imgui_draw.cpp \
        deargui/imgui_widgets.cpp \
        deargui/implot.cpp \
        deargui/implot_demo.cpp \
        deargui/implot_items.cpp \
        main.cpp

HEADERS += \
    deargui/imgui.h \
    deargui/imgui_internal.h \
    deargui/implot.h \
    deargui/implot_internal.h \
    deargui/imstb_textedit.h
