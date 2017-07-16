.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;
.super Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInlineMediaResult"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3632
    const v0, 0x17db940b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3631
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3636
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    .line 3637
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->id:Ljava/lang/String;

    .line 3638
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->type:Ljava/lang/String;

    .line 3639
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3640
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 3642
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3643
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3645
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3646
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->title:Ljava/lang/String;

    .line 3648
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3649
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->description:Ljava/lang/String;

    .line 3651
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    .line 3652
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3655
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3656
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3657
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3658
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3659
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3660
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3662
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3663
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3665
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3666
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3668
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3669
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3671
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3672
    return-void
.end method
