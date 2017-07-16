.class public Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;
.super Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputEncryptedFileBigUploaded"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13402
    const v0, 0x2dc173c8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13401
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13406
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->id:J

    .line 13407
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->parts:I

    .line 13408
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->key_fingerprint:I

    .line 13409
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13412
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13413
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 13414
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->parts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13415
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;->key_fingerprint:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13416
    return-void
.end method
