CONFIG -= qt

TEMPLATE = lib
DEFINES += EXTRACT_LIBRARY

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    extract.cpp

HEADERS += \
    extract_global.h \
    extract.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

defineTest(extractFileSrc) {
    fileIn = $$1
    fileOut = $$2

    win32-g++{
        EXTRA_BINFILES_FOLDER += \
            $$_PRO_FILE_PWD_/../$$fileIn
        EXTRA_BINFILES_FOLDER ~= s,/,\\,g

        ADD_CHANGE_PATH = $$_PRO_FILE_PWD_$$/../$$fileOut
        ADD_CHANGE_PATH ~= s,/,\\,g

        for (FILE, EXTRA_BINFILES_FOLDER) {
            QMAKE_POST_LINK += $$quote(copy /Y $$shell_quote($$FILE) $$shell_quote($$ADD_CHANGE_PATH) $$escape_expand(\n\t))
#	    message($$FILE);
#	    message($$ADD_CHANGE_PATH);
        }
        export(QMAKE_POST_LINK)
        return(true)
    }
}

##ImPlot
!extractFileSrc(implot/implot.h, implot_test_main/deargui/implot.h) {
    error("Not required files for ImPlot implot.h!")
}
!extractFileSrc(implot/implot.cpp, implot_test_main/deargui/implot.cpp) {
    error("Not required files for ImPlot implot.cpp!")
}
!extractFileSrc(implot/implot_internal.h, implot_test_main/deargui/implot_internal.h) {
    error("Not required files for ImPlot implot_internal.h!")
}
!extractFileSrc(implot/implot_items.cpp, implot_test_main/deargui/implot_items.cpp) {
    error("Not required files for ImPlot implot_items.cpp!")
}
!extractFileSrc(implot/implot_demo.cpp, implot_test_main/deargui/implot_demo.cpp) {
    error("Not required files for ImPlot implot_demo.cpp!")
}

##ImGui
!extractFileSrc(imgui/imgui.h, implot_test_main/deargui/imgui.h) {
    error("Not required files for ImGui imgui.h!")
}
!extractFileSrc(imgui/imgui.cpp, implot_test_main/deargui/imgui.cpp) {
    error("Not required files for ImGui imgui.cpp!")
}
!extractFileSrc(imgui/imgui_internal.h, implot_test_main/deargui/imgui_internal.h) {
    error("Not required files for ImGui imgui_internal.h!")
}
!extractFileSrc(imgui/imstb_textedit.h, implot_test_main/deargui/imstb_textedit.h) {
    error("Not required files for ImGui imstb_textedit.h!")
}
!extractFileSrc(imgui/imgui_draw.cpp, implot_test_main/deargui/imgui_draw.cpp) {
    error("Not required files for ImGui imgui_draw.cpp!")
}
!extractFileSrc(imgui/imgui_widgets.cpp, implot_test_main/deargui/imgui_widgets.cpp) {
    error("Not required files for ImGui imgui_widgets.cpp!")
}
!extractFileSrc(imgui/imgui_demo.cpp, implot_test_main/deargui/imgui_demo.cpp) {
    error("Not required files for ImGui imgui_demo.cpp!")
}
