.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockEmbed_layer60"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10409
    const v0, -0x26ca2705

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10408
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;-><init>()V

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

    .line 10413
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    .line 10414
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->full_width:Z

    .line 10415
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->allow_scrolling:Z

    .line 10416
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 10417
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->url:Ljava/lang/String;

    .line 10419
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 10420
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->html:Ljava/lang/String;

    .line 10422
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->w:I

    .line 10423
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->h:I

    .line 10424
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 10425
    return-void

    :cond_2
    move v0, v2

    .line 10414
    goto :goto_0

    :cond_3
    move v1, v2

    .line 10415
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 10428
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10429
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->full_width:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    .line 10430
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->allow_scrolling:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    .line 10431
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10432
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 10433
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10435
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 10436
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->html:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10438
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10440
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$RichText;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10441
    return-void

    .line 10429
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 10430
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_1
.end method
