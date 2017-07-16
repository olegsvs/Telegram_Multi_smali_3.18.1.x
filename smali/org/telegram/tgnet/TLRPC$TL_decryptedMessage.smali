.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8815
    const v0, 0x36b091de

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8814
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 8819
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 8820
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 8821
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 8822
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 8823
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_0

    .line 8824
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 8826
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_4

    .line 8827
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 8828
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_1

    .line 8829
    if-eqz p2, :cond_2

    .line 8830
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

    .line 8834
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 8835
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 8836
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 8837
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_3

    .line 8849
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_2
    :goto_1
    return-void

    .line 8840
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8843
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_5

    .line 8844
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 8846
    :cond_5
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 8847
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8852
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8853
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8854
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8855
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8856
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8857
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_0

    .line 8858
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8860
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 8861
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8862
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8863
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8864
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8865
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8868
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    .line 8869
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8871
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 8872
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8874
    :cond_3
    return-void
.end method
