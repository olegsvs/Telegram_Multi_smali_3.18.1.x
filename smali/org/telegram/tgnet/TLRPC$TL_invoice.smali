.class public Lorg/telegram/tgnet/TLRPC$TL_invoice;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_invoice"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public currency:Ljava/lang/String;

.field public email_requested:Z

.field public flags:I

.field public flexible:Z

.field public name_requested:Z

.field public phone_requested:Z

.field public prices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;"
        }
    .end annotation
.end field

.field public shipping_address_requested:Z

.field public test:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8918
    const v0, -0x3cf55ca8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8917
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 8928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 8931
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->constructor:I

    if-eq v1, p1, :cond_1

    .line 8932
    if-eqz p2, :cond_0

    .line 8933
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_invoice"

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

    .line 8935
    :cond_0
    const/4 v0, 0x0

    .line 8940
    :goto_0
    return-object v0

    .line 8938
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_invoice;-><init>()V

    .line 8939
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_invoice;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 8944
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8945
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    .line 8946
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    .line 8947
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    .line 8948
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    .line 8949
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    .line 8950
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    .line 8951
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    .line 8952
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 8953
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_6

    .line 8954
    if-eqz p2, :cond_7

    .line 8955
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
    :cond_0
    move v4, v6

    .line 8945
    goto :goto_0

    :cond_1
    move v4, v6

    .line 8946
    goto :goto_1

    :cond_2
    move v4, v6

    .line 8947
    goto :goto_2

    :cond_3
    move v4, v6

    .line 8948
    goto :goto_3

    :cond_4
    move v4, v6

    .line 8949
    goto :goto_4

    :cond_5
    move v4, v6

    .line 8950
    goto :goto_5

    .line 8959
    .restart local v2    # "magic":I
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 8960
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    if-ge v0, v1, :cond_7

    .line 8961
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    move-result-object v3

    .line 8962
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    if-nez v3, :cond_8

    .line 8967
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    :cond_7
    return-void

    .line 8965
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    :cond_8
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8960
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8970
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8971
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8972
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8973
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v2, v2, 0x4

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8974
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8975
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_4
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8976
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_5
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 8977
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8978
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8979
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8980
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8981
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8982
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    if-ge v0, v1, :cond_6

    .line 8983
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8982
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 8971
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 8972
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 8973
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v2, v2, -0x5

    goto :goto_2

    .line 8974
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_3

    .line 8975
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto :goto_4

    .line 8976
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_5

    .line 8985
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_6
    return-void
.end method
