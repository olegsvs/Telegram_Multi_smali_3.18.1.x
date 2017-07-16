.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;
.super Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_encryptedChatRequested_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14449
    const v0, -0x2565849

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14448
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 14453
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->id:I

    .line 14454
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->access_hash:J

    .line 14455
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->date:I

    .line 14456
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->admin_id:I

    .line 14457
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->participant_id:I

    .line 14458
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->g_a:[B

    .line 14459
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->nonce:[B

    .line 14460
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14463
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14464
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14465
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14466
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14467
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->admin_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14468
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->participant_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14469
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->g_a:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 14470
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;->nonce:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 14471
    return-void
.end method
