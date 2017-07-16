.class Lorg/telegram/messenger/MessagesStorage$60;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3592
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 3596
    :try_start_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v8, v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_1

    .line 3597
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 3599
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "REPLACE INTO enc_chats VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 3600
    .local v6, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->getObjectSize()I

    move-result v8

    invoke-direct {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3601
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    array-length v8, v8

    :goto_0
    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3602
    .local v1, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    :goto_1
    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3603
    .local v2, "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    array-length v8, v8

    :goto_2
    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3604
    .local v3, "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v7, v7

    :cond_2
    invoke-direct {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3606
    .local v4, "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3607
    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3608
    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3609
    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8, v9}, Lorg/telegram/messenger/MessagesStorage;->access$1000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3610
    const/4 v7, 0x4

    invoke-virtual {v6, v7, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3611
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v7, :cond_3

    .line 3612
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3614
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v7, :cond_4

    .line 3615
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3617
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v7, :cond_5

    .line 3618
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-virtual {v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3620
    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v7, :cond_6

    .line 3621
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-virtual {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3623
    :cond_6
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3624
    const/4 v7, 0x6

    invoke-virtual {v6, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3625
    const/4 v7, 0x7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3626
    const/16 v7, 0x8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3627
    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3628
    const/16 v7, 0xa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3629
    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3630
    const/16 v7, 0xc

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3631
    const/16 v7, 0xd

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3632
    const/16 v7, 0xe

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3633
    const/16 v7, 0xf

    invoke-virtual {v6, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3634
    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3635
    const/16 v7, 0x11

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3636
    const/16 v7, 0x12

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3638
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3639
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3640
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3641
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3642
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3643
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3644
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3645
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v7, :cond_7

    .line 3646
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string/jumbo v8, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 3647
    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3648
    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3649
    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3650
    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3651
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3652
    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3653
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3654
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3655
    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3656
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3657
    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3658
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3659
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_7
    :goto_3
    return-void

    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_8
    move v8, v7

    .line 3601
    goto/16 :goto_0

    .restart local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_9
    move v8, v7

    .line 3602
    goto/16 :goto_1

    .restart local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_a
    move v8, v7

    .line 3603
    goto/16 :goto_2

    .line 3661
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v5

    .line 3662
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
