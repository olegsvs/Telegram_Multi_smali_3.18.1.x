.class public Lorg/telegram/tgnet/TLRPC$TL_channel;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17276
    const v0, -0x5eb235ae

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17275
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17279
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17280
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->creator:Z

    .line 17281
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->kicked:Z

    .line 17282
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->left:Z

    .line 17283
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->editor:Z

    .line 17284
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->moderator:Z

    .line 17285
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->broadcast:Z

    .line 17286
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->verified:Z

    .line 17287
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->megagroup:Z

    .line 17288
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restricted:Z

    .line 17289
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->democracy:Z

    .line 17290
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->signatures:Z

    .line 17291
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->min:Z

    .line 17292
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->id:I

    .line 17293
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 17294
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->access_hash:J

    .line 17296
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->title:Ljava/lang/String;

    .line 17297
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 17298
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->username:Ljava/lang/String;

    .line 17300
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 17301
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->date:I

    .line 17302
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->version:I

    .line 17303
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 17304
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restriction_reason:Ljava/lang/String;

    .line 17306
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 17280
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 17281
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 17282
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 17283
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 17284
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 17285
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 17286
    goto/16 :goto_6

    :cond_a
    move v0, v2

    .line 17287
    goto/16 :goto_7

    :cond_b
    move v0, v2

    .line 17288
    goto :goto_8

    :cond_c
    move v0, v2

    .line 17289
    goto :goto_9

    :cond_d
    move v0, v2

    .line 17290
    goto :goto_a

    :cond_e
    move v1, v2

    .line 17291
    goto :goto_b
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17309
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17310
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->creator:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17311
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->kicked:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17312
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->left:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17313
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->editor:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17314
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->moderator:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17315
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->broadcast:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17316
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->verified:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17317
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->megagroup:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17318
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restricted:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17319
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->democracy:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17320
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->signatures:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17321
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->min:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 17322
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17323
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17324
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 17325
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 17327
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17328
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 17329
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17331
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17332
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17333
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 17335
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17337
    :cond_2
    return-void

    .line 17310
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 17311
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 17312
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 17313
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto/16 :goto_3

    .line 17314
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_4

    .line 17315
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_5

    .line 17316
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_6

    .line 17317
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_7

    .line 17318
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_8

    .line 17319
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_9

    .line 17320
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_a

    .line 17321
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_b
.end method
