QT += core gui widgets
TEMPLATE = app
CONFIG += c++17


SOURCES += \
        deargui/ImGuiRenderer.cpp \
        deargui/QtImGui.cpp \
        deargui/imgui.cpp \
        deargui/imgui_demo.cpp \
        deargui/imgui_draw.cpp \
        deargui/imgui_widgets.cpp \
        deargui/implot.cpp \
        deargui/implot_demo.cpp \
        deargui/implot_items.cpp \
        main.cpp

INCLUDEPATH += $$PWD/deargui $$PWD

HEADERS += \
    deargui/ImGuiRenderer.h \
    deargui/QtImGui.h \
    deargui/imconfig.h \
    deargui/imgui.h \
    deargui/imgui_internal.h \
    deargui/implot.h \
    deargui/implot_internal.h \
    deargui/imstb_rectpack.h \
    deargui/imstb_textedit.h \
    deargui/imstb_truetype.h
