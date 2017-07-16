.class public Lorg/telegram/tgnet/TLRPC$MessageEntity;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageEntity"
.end annotation


# instance fields
.field public language:Ljava/lang/String;

.field public length:I

.field public offset:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13947
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13954
    const/4 v0, 0x0

    .line 13955
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    sparse-switch p1, :sswitch_data_0

    .line 13996
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 13997
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in MessageEntity"

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

    .line 13957
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 13958
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13960
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;-><init>()V

    .line 13961
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13963
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;-><init>()V

    .line 13964
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13966
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;-><init>()V

    .line 13967
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13969
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnknown;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnknown;-><init>()V

    .line 13970
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13972
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;-><init>()V

    .line 13973
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13975
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    .line 13976
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13978
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;-><init>()V

    .line 13979
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13981
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;-><init>()V

    .line 13982
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13984
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;-><init>()V

    .line 13985
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13987
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    .line 13988
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13990
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityHashtag;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityHashtag;-><init>()V

    .line 13991
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13993
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_0

    .line 13999
    :cond_0
    if-eqz v0, :cond_1

    .line 14000
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 14002
    :cond_1
    return-object v0

    .line 13955
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d9074a0 -> :sswitch_6
        -0x446d456b -> :sswitch_4
        -0x429ef437 -> :sswitch_a
        -0x5fba863 -> :sswitch_7
        0x208e68c9 -> :sswitch_9
        0x28a20571 -> :sswitch_c
        0x352dca58 -> :sswitch_8
        0x64e475c2 -> :sswitch_2
        0x6cef8ac7 -> :sswitch_1
        0x6ed02538 -> :sswitch_5
        0x6f635b0d -> :sswitch_b
        0x73924be0 -> :sswitch_3
        0x76a6d327 -> :sswitch_0
    .end sparse-switch
.end method
