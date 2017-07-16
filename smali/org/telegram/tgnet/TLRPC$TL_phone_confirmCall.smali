.class public Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phone_confirmCall"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public g_a:[B

.field public key_fingerprint:J

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

.field public protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24183
    const v0, 0x2efe1722

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24182
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 24191
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24195
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24196
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24197
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->g_a:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 24198
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->key_fingerprint:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 24199
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24200
    return-void
.end method
