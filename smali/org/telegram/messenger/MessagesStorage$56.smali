.class Lorg/telegram/messenger/MessagesStorage$56;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3448
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$56;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v7, 0x1

    .line 3451
    const/4 v6, 0x0

    .line 3453
    .local v6, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v8, v8

    if-ge v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_1

    .line 3454
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 3457
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "UPDATE enc_chats SET data = ?, g = ?, authkey = ?, ttl = ?, layer = ?, seq_in = ?, seq_out = ?, use_count = ?, exchange_id = ?, key_date = ?, fprint = ?, fauthkey = ?, khash = ?, in_seq_no = ?, admin_id = ? WHERE uid = ?"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 3458
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->getObjectSize()I

    move-result v8

    invoke-direct {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3459
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    array-length v8, v8

    :goto_0
    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3460
    .local v1, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    :goto_1
    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3461
    .local v2, "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    array-length v8, v8

    :goto_2
    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3462
    .local v3, "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v7, v7

    :cond_2
    invoke-direct {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3463
    .local v4, "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3464
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3465
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v7, :cond_3

    .line 3466
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3468
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v7, :cond_4

    .line 3469
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3471
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v7, :cond_5

    .line 3472
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-virtual {v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3474
    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v7, :cond_6

    .line 3475
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-virtual {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3477
    :cond_6
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3478
    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3479
    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3480
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3481
    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3482
    const/4 v7, 0x7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3483
    const/16 v7, 0x8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3484
    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3485
    const/16 v7, 0xa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3486
    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3487
    const/16 v7, 0xc

    invoke-virtual {v6, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3488
    const/16 v7, 0xd

    invoke-virtual {v6, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3489
    const/16 v7, 0xe

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3490
    const/16 v7, 0xf

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3491
    const/16 v7, 0x10

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3493
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3494
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3495
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3496
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3497
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3498
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3502
    if-eqz v6, :cond_7

    .line 3503
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3506
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_7
    :goto_3
    return-void

    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_8
    move v8, v7

    .line 3459
    goto/16 :goto_0

    .restart local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_9
    move v8, v7

    .line 3460
    goto/16 :goto_1

    .restart local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_a
    move v8, v7

    .line 3461
    goto/16 :goto_2

    .line 3499
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v5

    .line 3500
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3502
    if-eqz v6, :cond_7

    .line 3503
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    .line 3502
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_b

    .line 3503
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_b
    throw v7
.end method
