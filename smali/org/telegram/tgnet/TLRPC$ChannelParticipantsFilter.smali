.class public Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelParticipantsFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7869
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7872
    const/4 v0, 0x0

    .line 7873
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    sparse-switch p1, :sswitch_data_0

    .line 7887
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7888
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelParticipantsFilter"

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

    .line 7875
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    .line 7876
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 7878
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    .line 7879
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 7881
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    .line 7882
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 7884
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 7890
    :cond_0
    if-eqz v0, :cond_1

    .line 7891
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7893
    :cond_1
    return-object v0

    .line 7873
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f2e79a5 -> :sswitch_3
        -0x4b9f7697 -> :sswitch_0
        -0x21c0c387 -> :sswitch_1
        0x3c37bb7a -> :sswitch_2
    .end sparse-switch
.end method
