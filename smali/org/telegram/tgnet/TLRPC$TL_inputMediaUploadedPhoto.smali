.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaUploadedPhoto"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11083
    const v0, 0x630c9af1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11082
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 11087
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->flags:I

    .line 11088
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 11089
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->caption:Ljava/lang/String;

    .line 11090
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 11091
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 11092
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_0

    .line 11093
    if-eqz p2, :cond_1

    .line 11094
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11098
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 11099
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 11100
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v3

    .line 11101
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$InputDocument;
    if-nez v3, :cond_2

    .line 11107
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$InputDocument;
    :cond_1
    return-void

    .line 11104
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$InputDocument;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 11110
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11111
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11112
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputFile;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11113
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->caption:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 11114
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 11115
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11116
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11117
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11118
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11119
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11122
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    return-void
.end method
