.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;
.super Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_encryptedMessage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11547
    const v0, -0x12e73ee8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11546
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 11551
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->random_id:J

    .line 11552
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->chat_id:I

    .line 11553
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->date:I

    .line 11554
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->bytes:[B

    .line 11555
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    .line 11556
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 11559
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11560
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 11561
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->chat_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11562
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11563
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 11564
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11565
    return-void
.end method
