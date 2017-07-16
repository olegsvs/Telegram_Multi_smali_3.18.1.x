.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getDialogs"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public exclude_pinned:Z

.field public flags:I

.field public limit:I

.field public offset_date:I

.field public offset_id:I

.field public offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20946
    const v0, 0x191ba9c5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20945
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
    .line 20956
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20960
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20961
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    .line 20962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20963
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20964
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20965
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20966
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20967
    return-void

    .line 20961
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
