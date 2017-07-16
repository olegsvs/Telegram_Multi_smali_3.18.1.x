.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getFeaturedStickers"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23174
    const v0, 0x2dacca4f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23173
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
    .line 23179
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23183
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23184
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23185
    return-void
.end method
