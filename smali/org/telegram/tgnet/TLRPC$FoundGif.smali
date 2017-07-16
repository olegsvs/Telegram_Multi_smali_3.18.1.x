.class public Lorg/telegram/tgnet/TLRPC$FoundGif;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoundGif"
.end annotation


# instance fields
.field public content_type:Ljava/lang/String;

.field public content_url:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public h:I

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public thumb_url:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2917
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$FoundGif;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2928
    const/4 v0, 0x0

    .line 2929
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$FoundGif;
    sparse-switch p1, :sswitch_data_0

    .line 2937
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2938
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in FoundGif"

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

    .line 2931
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_foundGifCached;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$FoundGif;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_foundGifCached;-><init>()V

    .line 2932
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$FoundGif;
    goto :goto_0

    .line 2934
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_foundGif;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$FoundGif;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_foundGif;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$FoundGif;
    goto :goto_0

    .line 2940
    :cond_0
    if-eqz v0, :cond_1

    .line 2941
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$FoundGif;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2943
    :cond_1
    return-object v0

    .line 2929
    nop

    :sswitch_data_0
    .sparse-switch
        -0x638afbf7 -> :sswitch_0
        0x162ecc1f -> :sswitch_1
    .end sparse-switch
.end method
