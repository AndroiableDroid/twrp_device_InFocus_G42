LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    libgui_shim.cpp \
    mtk_netd.cpp \
    mtk_cam.cpp \
	mtk_xlog.cpp \
    mtk_gui.cpp \
    mtk_ui.cpp \
    mtk_audio.cpp \
    mtk_omx.cpp \
    icu55.c \
    icu53.c

# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_SHARED_LIBRARIES := libbinder liblog libgui libui libicuuc libicui18n
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
