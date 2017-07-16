.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaPhoto"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public thumb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16684
    const v0, -0xe057288

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16683
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16689
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 16690
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb_w:I

    .line 16691
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb_h:I

    .line 16692
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->w:I

    .line 16693
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->h:I

    .line 16694
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->size:I

    .line 16695
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->key:[B

    .line 16696
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->iv:[B

    .line 16697
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->caption:Ljava/lang/String;

    .line 16698
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16701
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16702
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16703
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb_w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16704
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb_h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16705
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16706
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16707
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->size:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16708
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->key:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16709
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->iv:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16710
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16711
    return-void
.end method
