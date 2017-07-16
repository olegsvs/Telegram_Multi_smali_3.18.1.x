.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionPhoneCall"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8410
    const v0, -0x7f1ee581

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8409
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 8414
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->flags:I

    .line 8415
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->call_id:J

    .line 8416
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8417
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 8419
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8420
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    .line 8422
    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8425
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8426
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8427
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->call_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8428
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8429
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8431
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8432
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8434
    :cond_1
    return-void
.end method
