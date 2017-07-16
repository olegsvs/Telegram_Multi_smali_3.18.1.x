.class public Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_validatedRequestedInfo"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public id:Ljava/lang/String;

.field public shipping_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_shippingOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9475
    const v0, -0x2ebae77d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9474
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9482
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->constructor:I

    if-eq v1, p1, :cond_1

    .line 9483
    if-eqz p2, :cond_0

    .line 9484
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_payments_validatedRequestedInfo"

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

    .line 9486
    :cond_0
    const/4 v0, 0x0

    .line 9491
    :goto_0
    return-object v0

    .line 9489
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;-><init>()V

    .line 9490
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 9495
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->flags:I

    .line 9496
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 9497
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    .line 9499
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 9500
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 9501
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_1

    .line 9502
    if-eqz p2, :cond_2

    .line 9503
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9507
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 9508
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 9509
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    move-result-object v3

    .line 9510
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    if-nez v3, :cond_3

    .line 9516
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    :cond_2
    return-void

    .line 9513
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 9519
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9520
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9521
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 9522
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9524
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 9525
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9526
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9527
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9528
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 9529
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9532
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method
