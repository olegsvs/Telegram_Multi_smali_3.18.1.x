.class public Lorg/telegram/tgnet/TLRPC$TL_webPage;
.super Lorg/telegram/tgnet/TLRPC$WebPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6152
    const v0, 0x5f07b4bc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6151
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6156
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    .line 6157
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    .line 6158
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->url:Ljava/lang/String;

    .line 6159
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->display_url:Ljava/lang/String;

    .line 6160
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->hash:I

    .line 6161
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6162
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->type:Ljava/lang/String;

    .line 6164
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->site_name:Ljava/lang/String;

    .line 6167
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->title:Ljava/lang/String;

    .line 6170
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->description:Ljava/lang/String;

    .line 6173
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6174
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 6176
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 6177
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_url:Ljava/lang/String;

    .line 6179
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 6180
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_type:Ljava/lang/String;

    .line 6182
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 6183
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_width:I

    .line 6185
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 6186
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_height:I

    .line 6188
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 6189
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->duration:I

    .line 6191
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 6192
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->author:Ljava/lang/String;

    .line 6194
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 6195
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6197
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 6198
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Page;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Page;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    .line 6200
    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6203
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6204
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6205
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6206
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6207
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6208
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6209
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6210
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6212
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6213
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6215
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6216
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6218
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6219
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6221
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6222
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6224
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 6225
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6227
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 6228
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6230
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 6231
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6233
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 6234
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6236
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 6237
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6239
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 6240
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6242
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 6243
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6245
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 6246
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Page;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6248
    :cond_c
    return-void
.end method
