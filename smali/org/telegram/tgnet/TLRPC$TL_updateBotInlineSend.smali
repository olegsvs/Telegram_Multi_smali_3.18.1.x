.class public Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateBotInlineSend"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:Ljava/lang/String;

.field public msg_id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12568
    const v0, 0xe48f964

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12567
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12574
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->flags:I

    .line 12575
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->user_id:I

    .line 12576
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->query:Ljava/lang/String;

    .line 12577
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12578
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 12580
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->id:Ljava/lang/String;

    .line 12581
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 12582
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->msg_id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    .line 12584
    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12587
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12588
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12589
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12590
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12591
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12592
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12594
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12595
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 12596
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;->msg_id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12598
    :cond_1
    return-void
.end method
