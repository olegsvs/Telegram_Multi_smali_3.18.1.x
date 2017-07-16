.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;
.super Lorg/telegram/tgnet/TLRPC$EncryptedChat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_encryptedChatWaiting"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14567
    const v0, 0x3bf703dc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14566
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 14571
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->id:I

    .line 14572
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->access_hash:J

    .line 14573
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->date:I

    .line 14574
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->admin_id:I

    .line 14575
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->participant_id:I

    .line 14576
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14579
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14580
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14581
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14582
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14583
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->admin_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14584
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;->participant_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14585
    return-void
.end method
