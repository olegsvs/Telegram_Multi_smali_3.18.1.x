.class public Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;
.super Lorg/telegram/tgnet/TLRPC$PhotoSize;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photoSizeEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18463
    const v0, 0xe17e23c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18462
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v4, 0x1

    .line 18467
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->getPosition()I

    move-result v2

    .line 18469
    .local v2, "startReadPosiition":I
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    .line 18470
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v4, "w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 18471
    :cond_0
    const-string/jumbo v3, "s"

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    .line 18472
    instance-of v3, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v3, :cond_1

    .line 18473
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18482
    .end local p1    # "stream":Lorg/telegram/tgnet/AbstractSerializedData;
    :cond_1
    :goto_0
    return-void

    .line 18476
    .restart local p1    # "stream":Lorg/telegram/tgnet/AbstractSerializedData;
    :catch_0
    move-exception v1

    .line 18477
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "s"

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    .line 18478
    instance-of v3, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v3, :cond_1

    .line 18479
    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    .end local p1    # "stream":Lorg/telegram/tgnet/AbstractSerializedData;
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18485
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18486
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18487
    return-void
.end method
