.class public Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_webFile"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public file_type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

.field public mime_type:Ljava/lang/String;

.field public mtime:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26144
    const v0, 0x21e753bc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26143
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 26153
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->constructor:I

    if-eq v1, p1, :cond_1

    .line 26154
    if-eqz p2, :cond_0

    .line 26155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_upload_webFile"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26157
    :cond_0
    const/4 v0, 0x0

    .line 26162
    :goto_0
    return-object v0

    .line 26160
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;-><init>()V

    .line 26161
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .prologue
    .line 26184
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    if-eqz v0, :cond_1

    .line 26191
    :cond_0
    :goto_0
    return-void

    .line 26187
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_0

    .line 26188
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 26189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 26166
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    .line 26167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->mime_type:Ljava/lang/String;

    .line 26168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$storage_FileType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->file_type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    .line 26169
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->mtime:I

    .line 26170
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 26171
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26174
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26175
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26176
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26177
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->file_type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26178
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->mtime:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26179
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 26180
    return-void
.end method
