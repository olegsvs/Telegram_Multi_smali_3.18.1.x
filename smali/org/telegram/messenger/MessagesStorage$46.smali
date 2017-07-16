.class Lorg/telegram/messenger/MessagesStorage$46;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getUnsentMessages(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2535
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$46;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$46;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 2539
    :try_start_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2540
    .local v17, "messageHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2541
    .local v18, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2542
    .local v20, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2543
    .local v6, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2545
    .local v13, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    .local v21, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2547
    .local v7, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2548
    .local v5, "broadcastIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v12, "encryptedChatIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$46;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.uid, s.seq_in, s.seq_out, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid LEFT JOIN messages_seq as s ON m.mid = s.mid WHERE m.mid < 0 AND m.send_state = 1 ORDER BY m.mid DESC LIMIT "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$46;->val$count:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9

    .line 2550
    .local v9, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2551
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v10

    .line 2552
    .local v10, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v10, :cond_0

    .line 2553
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v16

    .line 2554
    .local v16, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2555
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 2556
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 2557
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2558
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 2559
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_1

    .line 2560
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 2562
    :cond_1
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2563
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    .line 2564
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    .line 2565
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 2566
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v15, v0

    .line 2570
    .local v15, "lower_id":I
    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v22, v0

    const/16 v24, 0x20

    shr-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v14, v0

    .line 2572
    .local v14, "high_id":I
    if-eqz v15, :cond_8

    .line 2573
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_6

    .line 2574
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2575
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    :cond_2
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2596
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2597
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v22, v0

    if-nez v22, :cond_3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v22

    if-nez v22, :cond_3

    if-nez v15, :cond_4

    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 2598
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2600
    :cond_5
    if-nez v15, :cond_0

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_0

    .line 2601
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2637
    .end local v5    # "broadcastIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "encryptedChatIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .end local v14    # "high_id":I
    .end local v15    # "lower_id":I
    .end local v16    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v17    # "messageHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v18    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v20    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v21    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v11

    .line 2638
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2640
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 2578
    .restart local v5    # "broadcastIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .restart local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v12    # "encryptedChatIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .restart local v14    # "high_id":I
    .restart local v15    # "lower_id":I
    .restart local v16    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v17    # "messageHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v18    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v20    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v21    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    if-gez v15, :cond_7

    .line 2579
    neg-int v0, v15

    move/from16 v22, v0

    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2580
    neg-int v0, v15

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2583
    :cond_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2584
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2589
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2590
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2606
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v14    # "high_id":I
    .end local v15    # "lower_id":I
    .end local v16    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_9
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2609
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    .line 2610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$46;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v22, v0

    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v13, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2613
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$46;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v22, v0

    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2617
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_11

    .line 2618
    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 2619
    .local v19, "stringToLoad":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_e

    .line 2620
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2621
    .local v8, "cid":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-eqz v22, :cond_d

    .line 2622
    const-string/jumbo v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2619
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2626
    .end local v8    # "cid":Ljava/lang/Integer;
    :cond_e
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_10

    .line 2627
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2628
    .restart local v8    # "cid":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-eqz v22, :cond_f

    .line 2629
    const-string/jumbo v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    :cond_f
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2626
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2633
    .end local v8    # "cid":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$46;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2636
    .end local v4    # "a":I
    .end local v19    # "stringToLoad":Ljava/lang/StringBuilder;
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6, v13}, Lorg/telegram/messenger/SendMessagesHelper;->processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
