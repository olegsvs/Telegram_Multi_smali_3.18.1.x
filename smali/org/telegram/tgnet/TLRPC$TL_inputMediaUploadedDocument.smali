.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaUploadedDocument"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11148
    const v0, -0x2f8f0e17

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11147
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 11152
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->flags:I

    .line 11153
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 11154
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->mime_type:Ljava/lang/String;

    .line 11155
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 11156
    .local v2, "magic":I
    if-eq v2, v5, :cond_0

    .line 11157
    if-eqz p2, :cond_1

    .line 11158
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11162
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 11163
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 11164
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v3

    .line 11165
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    if-nez v3, :cond_2

    .line 11188
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    return-void

    .line 11168
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11170
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->caption:Ljava/lang/String;

    .line 11171
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 11172
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 11173
    if-eq v2, v5, :cond_4

    .line 11174
    if-eqz p2, :cond_1

    .line 11175
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11179
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 11180
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 11181
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v3

    .line 11182
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$InputDocument;
    if-eqz v3, :cond_1

    .line 11185
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 11191
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11192
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11193
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputFile;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11194
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 11195
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11196
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11197
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11198
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11199
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11201
    :cond_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->caption:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 11202
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 11203
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11204
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11205
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11206
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 11207
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11210
    :cond_1
    return-void
.end method
