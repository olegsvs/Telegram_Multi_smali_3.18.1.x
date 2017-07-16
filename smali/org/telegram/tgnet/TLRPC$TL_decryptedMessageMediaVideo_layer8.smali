.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;
.super Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaVideo_layer8"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public thumb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16779
    const v0, 0x4cee6ef3    # 1.25007768E8f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16778
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16784
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    .line 16785
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb_w:I

    .line 16786
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb_h:I

    .line 16787
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->duration:I

    .line 16788
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->w:I

    .line 16789
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->h:I

    .line 16790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->size:I

    .line 16791
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->key:[B

    .line 16792
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->iv:[B

    .line 16793
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16796
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16797
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16798
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb_w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16799
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb_h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16800
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16801
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16802
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16803
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->size:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16804
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->key:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16805
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->iv:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16806
    return-void
.end method
