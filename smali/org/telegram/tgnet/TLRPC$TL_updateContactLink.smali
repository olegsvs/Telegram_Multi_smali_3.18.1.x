.class public Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateContactLink"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13009
    const v0, -0x62d1983b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13008
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13013
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->user_id:I

    .line 13014
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    .line 13015
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    .line 13016
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13019
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13020
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13021
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ContactLink;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13022
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;->foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ContactLink;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13023
    return-void
.end method
