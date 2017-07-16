.class public Lorg/telegram/tgnet/TLRPC$StickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerSet"
.end annotation


# instance fields
.field public access_hash:J

.field public archived:Z

.field public count:I

.field public flags:I

.field public hash:I

.field public id:J

.field public installed:Z

.field public masks:Z

.field public official:Z

.field public short_name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17586
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17600
    const/4 v0, 0x0

    .line 17601
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$StickerSet;
    sparse-switch p1, :sswitch_data_0

    .line 17609
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 17610
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in StickerSet"

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

    .line 17603
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet_old;-><init>()V

    .line 17604
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSet;
    goto :goto_0

    .line 17606
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSet;
    goto :goto_0

    .line 17612
    :cond_0
    if-eqz v0, :cond_1

    .line 17613
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 17615
    :cond_1
    return-object v0

    .line 17601
    nop

    :sswitch_data_0
    .sparse-switch
        -0x585bc4e9 -> :sswitch_0
        -0x32cfc4bf -> :sswitch_1
    .end sparse-switch
.end method
