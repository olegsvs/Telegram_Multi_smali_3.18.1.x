.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageActionResend"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13742
    const v0, 0x511110b0

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13741
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13746
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;->start_seq_no:I

    .line 13747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;->end_seq_no:I

    .line 13748
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13751
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13752
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;->start_seq_no:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13753
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;->end_seq_no:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13754
    return-void
.end method
