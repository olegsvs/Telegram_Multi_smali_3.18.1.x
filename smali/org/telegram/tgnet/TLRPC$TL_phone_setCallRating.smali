.class public Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phone_setCallRating"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public comment:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

.field public rating:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24240
    const v0, 0x1c536a34

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24239
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
    .line 24247
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24251
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24252
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24253
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->rating:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24254
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24255
    return-void
.end method
