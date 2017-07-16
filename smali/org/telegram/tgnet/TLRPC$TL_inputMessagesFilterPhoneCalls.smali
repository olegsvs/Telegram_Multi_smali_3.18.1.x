.class public Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;
.super Lorg/telegram/tgnet/TLRPC$MessagesFilter;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMessagesFilterPhoneCalls"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18006
    const v0, -0x7f366898

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18005
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 18010
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->flags:I

    .line 18011
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->missed:Z

    .line 18012
    return-void

    .line 18011
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18015
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18016
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->missed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->flags:I

    .line 18017
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18018
    return-void

    .line 18016
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
