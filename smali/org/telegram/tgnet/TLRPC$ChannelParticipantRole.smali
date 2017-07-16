.class public Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelParticipantRole"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7698
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7701
    const/4 v0, 0x0

    .line 7702
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    sparse-switch p1, :sswitch_data_0

    .line 7713
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7714
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelParticipantRole"

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

    .line 7704
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    .line 7705
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    goto :goto_0

    .line 7707
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEmpty;-><init>()V

    .line 7708
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    goto :goto_0

    .line 7710
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelRoleModerator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleModerator;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;
    goto :goto_0

    .line 7716
    :cond_0
    if-eqz v0, :cond_1

    .line 7717
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7719
    :cond_1
    return-object v0

    .line 7702
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7df40174 -> :sswitch_0
        -0x69e7268b -> :sswitch_2
        -0x4d7a5f3a -> :sswitch_1
    .end sparse-switch
.end method
