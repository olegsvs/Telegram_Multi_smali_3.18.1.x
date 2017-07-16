.class public Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;
.super Lorg/telegram/tgnet/TLRPC$Updates;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateShortChatMessage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18966
    const v0, 0x16812688

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18965
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Updates;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 18970
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    .line 18971
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->out:Z

    .line 18972
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->mentioned:Z

    .line 18973
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->media_unread:Z

    .line 18974
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->silent:Z

    .line 18975
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->id:I

    .line 18976
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->from_id:I

    .line 18977
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->chat_id:I

    .line 18978
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->message:Ljava/lang/String;

    .line 18979
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->pts:I

    .line 18980
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->pts_count:I

    .line 18981
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->date:I

    .line 18982
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 18983
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 18985
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1

    .line 18986
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->via_bot_id:I

    .line 18988
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 18989
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->reply_to_msg_id:I

    .line 18991
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_8

    .line 18992
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18993
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_7

    .line 18994
    if-eqz p2, :cond_8

    .line 18995
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_3
    move v4, v6

    .line 18971
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 18972
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 18973
    goto/16 :goto_2

    :cond_6
    move v4, v6

    .line 18974
    goto/16 :goto_3

    .line 18999
    .restart local v2    # "magic":I
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 19000
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 19001
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 19002
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_9

    .line 19008
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_8
    return-void

    .line 19005
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19000
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
