.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_createGeoChat"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public address:Ljava/lang/String;

.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public title:Ljava/lang/String;

.field public venue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22014
    const v0, 0xe092e16

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22013
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
    .line 22022
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_geochats_statedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_geochats_statedMessage;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22026
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22027
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 22028
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22029
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 22030
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_createGeoChat;->venue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 22031
    return-void
.end method
