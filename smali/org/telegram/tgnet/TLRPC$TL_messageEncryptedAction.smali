.class public Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageEncryptedAction"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8154
    const v0, 0x555555f7

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8153
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 8158
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 8159
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8162
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8163
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8164
    return-void
.end method
