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
    const v0, 0xe17e23c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
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

    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->getPosition()I

    move-result v2

    .local v2, "startReadPosiition":I
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

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

    :cond_0
    const-string/jumbo v3, "s"

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    instance-of v3, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "stream":Lorg/telegram/tgnet/AbstractSerializedData;
    :cond_1
    :goto_0
    return-void

    .restart local p1    # "stream":Lorg/telegram/tgnet/AbstractSerializedData;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "s"

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    instance-of v3, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v3, :cond_1

    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    .end local p1    # "stream":Lorg/telegram/tgnet/AbstractSerializedData;
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
