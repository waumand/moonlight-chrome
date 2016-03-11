COMMON_C_DIR := moonlight-common-c/limelight-common
OPENAES_DIR := $(COMMON_C_DIR)/OpenAES
ENET_DIR := moonlight-common-c/enet

ENET_SOURCE := \
    $(ENET_DIR)/callbacks.c \
    $(ENET_DIR)/compress.c  \
    $(ENET_DIR)/host.c      \
    $(ENET_DIR)/list.c      \
    $(ENET_DIR)/packet.c    \
    $(ENET_DIR)/peer.c      \
    $(ENET_DIR)/protocol.c  \
    $(ENET_DIR)/unix.c      \
    $(ENET_DIR)/win32.c     \

ENET_INCLUDE := $(ENET_DIR)/include

OPENAES_SOURCE := \
	$(OPENAES_DIR)/oaes_base64.c \
	$(OPENAES_DIR)/oaes_lib.c \
	
OPENAES_INCLUDE := $(OPENAES_DIR)

COMMON_C_SOURCE := \
	$(COMMON_C_DIR)/AudioStream.c         \
	$(COMMON_C_DIR)/ByteBuffer.c          \
	$(COMMON_C_DIR)/Connection.c          \
	$(COMMON_C_DIR)/ControlStream.c       \
	$(COMMON_C_DIR)/FakeCallbacks.c       \
	$(COMMON_C_DIR)/InputStream.c         \
	$(COMMON_C_DIR)/LinkedBlockingQueue.c \
	$(COMMON_C_DIR)/Misc.c                \
	$(COMMON_C_DIR)/Platform.c            \
	$(COMMON_C_DIR)/PlatformSockets.c     \
	$(COMMON_C_DIR)/RtpReorderQueue.c     \
	$(COMMON_C_DIR)/RtspConnection.c      \
	$(COMMON_C_DIR)/RtspParser.c          \
	$(COMMON_C_DIR)/SdpGenerator.c        \
	$(COMMON_C_DIR)/VideoDepacketizer.c   \
	$(COMMON_C_DIR)/VideoStream.c         \
	$(OPENAES_SOURCE)                     \
    $(ENET_SOURCE)                        \

COMMON_C_INCLUDE := $(COMMON_C_DIR) $(OPENAES_INCLUDE) $(ENET_INCLUDE)

COMMON_C_C_FLAGS := -DLC_CHROME -Wno-missing-braces -DHAS_SOCKLEN_T=1 -DHAS_FCNTL=1 -DNO_MSGAPI=1