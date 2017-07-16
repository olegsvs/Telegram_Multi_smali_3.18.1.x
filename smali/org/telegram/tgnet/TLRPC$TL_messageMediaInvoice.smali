.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
.super Lorg/telegram/tgnet/TLRPC$MessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaInvoice"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3250
    const v0, -0x7baaecb9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3249
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3255
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    .line 3256
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->shipping_address_requested:Z

    .line 3257
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->test:Z

    .line 3258
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->title:Ljava/lang/String;

    .line 3259
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->description:Ljava/lang/String;

    .line 3260
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3261
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 3263
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3264
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->receipt_msg_id:I

    .line 3266
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->currency:Ljava/lang/String;

    .line 3267
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->total_amount:J

    .line 3268
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->start_param:Ljava/lang/String;

    .line 3269
    return-void

    :cond_2
    move v0, v2

    .line 3256
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3257
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3272
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3273
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->shipping_address_requested:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    .line 3274
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->test:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    .line 3275
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3277
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3278
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3279
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3281
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3282
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->receipt_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3284
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3285
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->total_amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3286
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->start_param:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3287
    return-void

    .line 3273
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 3274
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_1
.end method
