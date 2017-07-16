.class public Lorg/telegram/messenger/MessageKeyData;
.super Ljava/lang/Object;
.source "MessageKeyData.java"


# instance fields
.field public aesIv:[B

.field public aesKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMessageKeyData([B[BZ)Lorg/telegram/messenger/MessageKeyData;
    .locals 13
    .param p0, "authKey"    # [B
    .param p1, "messageKey"    # [B
    .param p2, "incoming"    # Z

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x10

    const/16 v10, 0xc

    const/4 v8, 0x0

    const/16 v7, 0x8

    new-instance v1, Lorg/telegram/messenger/MessageKeyData;

    invoke-direct {v1}, Lorg/telegram/messenger/MessageKeyData;-><init>()V

    .local v1, "keyData":Lorg/telegram/messenger/MessageKeyData;
    if-eqz p0, :cond_0

    array-length v9, p0

    if-nez v9, :cond_1

    :cond_0
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/4 v7, 0x0

    iput-object v7, v1, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    move v6, v7

    .local v6, "x":I
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .local v0, "data":Lorg/telegram/tgnet/SerializedData;
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    invoke-virtual {v0, p0, v6, v12}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    .local v2, "sha1_a":[B
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    add-int/lit8 v9, v6, 0x20

    invoke-virtual {v0, p0, v9, v11}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    add-int/lit8 v9, v6, 0x30

    invoke-virtual {v0, p0, v9, v11}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v3

    .local v3, "sha1_b":[B
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    add-int/lit8 v9, v6, 0x40

    invoke-virtual {v0, p0, v9, v12}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v4

    .local v4, "sha1_c":[B
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    add-int/lit8 v9, v6, 0x60

    invoke-virtual {v0, p0, v9, v12}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v5

    .local v5, "sha1_d":[B
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-virtual {v0, v2, v8, v7}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0, v3, v7, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/4 v9, 0x4

    invoke-virtual {v0, v4, v9, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v9

    iput-object v9, v1, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    invoke-virtual {v0, v2, v7, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0, v3, v8, v7}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/4 v9, 0x4

    invoke-virtual {v0, v4, v11, v9}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0, v5, v8, v7}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto/16 :goto_0

    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v2    # "sha1_a":[B
    .end local v3    # "sha1_b":[B
    .end local v4    # "sha1_c":[B
    .end local v5    # "sha1_d":[B
    .end local v6    # "x":I
    :cond_2
    move v6, v8

    goto/16 :goto_1
.end method
