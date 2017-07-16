.class public Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_saveDraft"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reply_to_msg_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23127
    const v0, -0x43c61eb5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23126
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 23134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23137
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23141
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23142
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->no_webpage:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    .line 23143
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23144
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 23145
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->reply_to_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23147
    :cond_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23148
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 23149
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 23150
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23151
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23152
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23153
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 23154
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23142
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 23157
    :cond_2
    return-void
.end method
