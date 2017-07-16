.class public Lorg/telegram/tgnet/TLRPC$messages_Stickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_Stickers"
.end annotation


# instance fields
.field public hash:Ljava/lang/String;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19577
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 19579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Stickers;->stickers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Stickers;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19582
    const/4 v0, 0x0

    .line 19583
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_Stickers;
    sparse-switch p1, :sswitch_data_0

    .line 19591
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 19592
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in messages_Stickers"

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

    .line 19585
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickersNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Stickers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickersNotModified;-><init>()V

    .line 19586
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Stickers;
    goto :goto_0

    .line 19588
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Stickers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Stickers;
    goto :goto_0

    .line 19594
    :cond_0
    if-eqz v0, :cond_1

    .line 19595
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_Stickers;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19597
    :cond_1
    return-object v0

    .line 19583
    nop

    :sswitch_data_0
    .sparse-switch
        -0x757132ce -> :sswitch_1
        -0xe8b65de -> :sswitch_0
    .end sparse-switch
.end method
