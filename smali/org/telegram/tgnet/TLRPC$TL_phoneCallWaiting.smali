.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallWaiting"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7082
    const v0, 0x1b8f4ad1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7081
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7086
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->flags:I

    .line 7087
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->id:J

    .line 7088
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->access_hash:J

    .line 7089
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->date:I

    .line 7090
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->admin_id:I

    .line 7091
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->participant_id:I

    .line 7092
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 7093
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7094
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->receive_date:I

    .line 7096
    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7099
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7100
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7101
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7102
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7103
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7104
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->admin_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7105
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->participant_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7106
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7107
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7108
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;->receive_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7110
    :cond_0
    return-void
.end method
