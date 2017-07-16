.class Lorg/telegram/messenger/SecretChatHelper$13;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 18
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    if-nez p2, :cond_8

    move-object/from16 v12, p1

    check-cast v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .local v12, "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz v14, :cond_1

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v15, v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    invoke-static {v14}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I


    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :goto_0
    return-void

    .restart local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :cond_0
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    sput-object v14, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    sput v14, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    sput v14, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    sget v16, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v17, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-virtual/range {v14 .. v17}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_1
    const/16 v14, 0x100

    new-array v13, v14, [B

    .local v13, "salt":[B
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    const/16 v14, 0x100

    if-ge v2, v14, :cond_2

    sget-object v14, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v14}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v14

    const-wide/high16 v16, 0x4070000000000000L    # 256.0

    mul-double v14, v14, v16

    double-to-int v14, v14

    int-to-byte v14, v14

    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v15, v15, v2

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v13, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v15, 0x1

    iput v15, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v15, 0x0

    iput v15, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    new-instance v10, Ljava/math/BigInteger;

    const/4 v14, 0x1

    sget-object v15, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v10, v14, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    .local v10, "p":Ljava/math/BigInteger;
    sget v14, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .local v8, "g_b":Ljava/math/BigInteger;
    new-instance v14, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8, v14, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v7, Ljava/math/BigInteger;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    invoke-direct {v7, v14, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    .local v7, "g_a":Ljava/math/BigInteger;
    invoke-static {v7, v10}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    invoke-static {v14}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I


    goto/16 :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .local v9, "g_b_bytes":[B
    array-length v14, v9

    const/16 v15, 0x100

    if-le v14, v15, :cond_4

    const/16 v14, 0x100

    new-array v6, v14, [B

    .local v6, "correctedAuth":[B
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-static {v9, v14, v6, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    .end local v6    # "correctedAuth":[B
    :cond_4
    new-instance v14, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7, v14, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .local v3, "authKey":[B
    array-length v14, v3

    const/16 v15, 0x100

    if-le v14, v15, :cond_6

    const/16 v14, 0x100

    new-array v6, v14, [B

    .restart local v6    # "correctedAuth":[B
    array-length v14, v3

    add-int/lit16 v14, v14, -0x100

    const/4 v15, 0x0

    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-static {v3, v14, v6, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v6

    .end local v6    # "correctedAuth":[B
    :cond_5
    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v4

    .local v4, "authKeyHash":[B
    const/16 v14, 0x8

    new-array v5, v14, [B

    .local v5, "authKeyId":[B
    array-length v14, v4

    add-int/lit8 v14, v14, -0x8

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-static {v4, v14, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v3, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v15

    iput v15, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;-><init>()V

    .local v11, "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;
    iput-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->g_b:[B

    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v15, v14, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v14

    iput-wide v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->key_fingerprint:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v15, Lorg/telegram/messenger/SecretChatHelper$13$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/messenger/SecretChatHelper$13$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$13;)V

    invoke-virtual {v14, v11, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .end local v4    # "authKeyHash":[B
    .end local v5    # "authKeyId":[B
    .end local v11    # "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;
    :cond_6
    array-length v14, v3

    const/16 v15, 0x100

    if-ge v14, v15, :cond_5

    const/16 v14, 0x100

    new-array v6, v14, [B

    .restart local v6    # "correctedAuth":[B
    const/4 v14, 0x0

    array-length v15, v3

    rsub-int v15, v15, 0x100

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v14, v6, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_3
    array-length v14, v3

    rsub-int v14, v14, 0x100

    if-ge v2, v14, :cond_7

    const/4 v14, 0x0

    aput-byte v14, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move-object v3, v6

    goto/16 :goto_2

    .end local v2    # "a":I
    .end local v3    # "authKey":[B
    .end local v6    # "correctedAuth":[B
    .end local v7    # "g_a":Ljava/math/BigInteger;
    .end local v8    # "g_b":Ljava/math/BigInteger;
    .end local v9    # "g_b_bytes":[B
    .end local v10    # "p":Ljava/math/BigInteger;
    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    .end local v13    # "salt":[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    invoke-static {v14}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
