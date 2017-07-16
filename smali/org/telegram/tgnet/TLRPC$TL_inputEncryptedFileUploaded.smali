.class public Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;
.super Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputEncryptedFileUploaded"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13429
    const v0, 0x64bd0306

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13428
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13433
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->id:J

    .line 13434
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->parts:I

    .line 13435
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->md5_checksum:Ljava/lang/String;

    .line 13436
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->key_fingerprint:I

    .line 13437
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13440
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13441
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 13442
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->parts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13443
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->md5_checksum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13444
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;->key_fingerprint:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13445
    return-void
.end method
