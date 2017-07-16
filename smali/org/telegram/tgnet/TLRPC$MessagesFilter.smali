.class public Lorg/telegram/tgnet/TLRPC$MessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesFilter"
.end annotation


# instance fields
.field public flags:I

.field public missed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in MessagesFilter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f366898 -> :sswitch_a
        -0x69f65ae4 -> :sswitch_3
        -0x61220e78 -> :sswitch_5
        -0x603ff19b -> :sswitch_9
        -0x26a18c45 -> :sswitch_7
        -0x379a79 -> :sswitch_0
        0x3751b49e -> :sswitch_1
        0x3a20ecb8 -> :sswitch_2
        0x50f5c392 -> :sswitch_8
        0x56e9f0e4 -> :sswitch_6
        0x57e2f66c -> :sswitch_b
        0x7ef0dd87 -> :sswitch_4
    .end sparse-switch
.end method
