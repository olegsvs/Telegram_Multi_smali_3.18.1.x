.class public Lorg/telegram/tgnet/TLRPC$TL_message_old6;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old6"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25309
    const v0, 0x2bebfa86

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25308
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 25313
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25314
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    .line 25315
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    .line 25316
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    .line 25317
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    .line 25318
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    .line 25319
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    .line 25320
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25321
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 25322
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 25323
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 25324
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 25325
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 25327
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 25328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    .line 25330
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    .line 25331
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    .line 25332
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    .line 25333
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25337
    :goto_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    .line 25338
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 25340
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    .line 25341
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 25342
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_8

    .line 25343
    if-eqz p2, :cond_9

    .line 25344
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_3
    move v4, v6

    .line 25314
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 25315
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 25316
    goto/16 :goto_2

    :cond_6
    move v4, v6

    .line 25317
    goto/16 :goto_3

    .line 25335
    :cond_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_4

    .line 25348
    .restart local v2    # "magic":I
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 25349
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 25350
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 25351
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_a

    .line 25363
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9
    :goto_6
    return-void

    .line 25354
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_a
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25349
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 25357
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-ltz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 25358
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    .line 25360
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v4, :cond_9

    .line 25361
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25366
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25367
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25368
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25369
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25370
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25371
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25372
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25373
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25374
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25375
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 25376
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25377
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25379
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 25380
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25382
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25383
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25384
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    .line 25385
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25387
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 25388
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25390
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 25391
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25392
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 25393
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25394
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 25395
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25394
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 25367
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 25368
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto/16 :goto_1

    .line 25369
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto/16 :goto_2

    .line 25370
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto/16 :goto_3

    .line 25398
    :cond_8
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25399
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v2, :cond_9

    .line 25400
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25402
    :cond_9
    return-void
.end method
