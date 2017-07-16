.class public Lorg/telegram/tgnet/TLRPC$Page;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field public videos:Ljava/util/ArrayList;
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
    .line 5326
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    .line 5328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    .line 5329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->videos:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Page;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5332
    const/4 v0, 0x0

    .line 5333
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Page;
    sparse-switch p1, :sswitch_data_0

    .line 5341
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Page"

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

    .line 5335
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pagePart;-><init>()V

    .line 5336
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    goto :goto_0

    .line 5338
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageFull;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Page;
    goto :goto_0

    .line 5344
    :cond_0
    if-eqz v0, :cond_1

    .line 5345
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Page;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 5347
    :cond_1
    return-object v0

    .line 5333
    nop

    :sswitch_data_0
    .sparse-switch
        -0x721193bc -> :sswitch_0
        -0x285e6297 -> :sswitch_1
    .end sparse-switch
.end method
