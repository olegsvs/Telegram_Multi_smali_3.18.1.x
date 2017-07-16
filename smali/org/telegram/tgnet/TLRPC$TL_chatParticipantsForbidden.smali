.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;
.super Lorg/telegram/tgnet/TLRPC$ChatParticipants;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatParticipantsForbidden"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16300
    const v0, -0x36ff3d5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16299
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatParticipants;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16304
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->flags:I

    .line 16305
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->chat_id:I

    .line 16306
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 16307
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 16309
    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16312
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16313
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16314
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->chat_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16315
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 16316
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;->self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 16318
    :cond_0
    return-void
.end method
