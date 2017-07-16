.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;
.super Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessage_layer17"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8741
    const v0, 0x204d3878

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8740
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 8745
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->random_id:J

    .line 8746
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->ttl:I

    .line 8747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->message:Ljava/lang/String;

    .line 8748
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 8749
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8752
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8753
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8754
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->ttl:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8755
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8756
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8757
    return-void
.end method
