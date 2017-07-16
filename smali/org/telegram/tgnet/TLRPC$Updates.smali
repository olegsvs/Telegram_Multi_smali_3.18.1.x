.class public Lorg/telegram/tgnet/TLRPC$Updates;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Updates"
.end annotation


# instance fields
.field public chat_id:I

.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public date:I

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public from_id:I

.field public fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

.field public id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public media_unread:Z

.field public mentioned:Z

.field public message:Ljava/lang/String;

.field public out:Z

.field public pts:I

.field public pts_count:I

.field public reply_to_msg_id:I

.field public seq:I

.field public seq_start:I

.field public silent:Z

.field public update:Lorg/telegram/tgnet/TLRPC$Update;

.field public updates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field public user_id:I

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field public via_bot_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18760
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    .line 18762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    .line 18763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    .line 18779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18787
    const/4 v0, 0x0

    .line 18788
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Updates;
    sparse-switch p1, :sswitch_data_0

    .line 18811
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18812
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Updates"

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

    .line 18790
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 18791
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18793
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;-><init>()V

    .line 18794
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18796
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;-><init>()V

    .line 18797
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18799
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateShort;-><init>()V

    .line 18800
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18802
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;-><init>()V

    .line 18803
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18805
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;-><init>()V

    .line 18806
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18808
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Updates;
    goto :goto_0

    .line 18814
    :cond_0
    if-eqz v0, :cond_1

    .line 18815
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Updates;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18817
    :cond_1
    return-object v0

    .line 18788
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb040ef -> :sswitch_1
        -0x1ce85082 -> :sswitch_6
        0x11f1331c -> :sswitch_2
        0x16812688 -> :sswitch_4
        0x725b04c3 -> :sswitch_5
        0x74ae4240 -> :sswitch_0
        0x78d4dec1 -> :sswitch_3
    .end sparse-switch
.end method
