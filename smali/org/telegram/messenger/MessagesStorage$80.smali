.class Lorg/telegram/messenger/MessagesStorage$80;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$count:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5744
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$offset:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 5747
    new-instance v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

    .line 5748
    .local v3, "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5750
    .local v4, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    :try_start_0
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 5751
    .local v29, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5752
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5753
    .local v11, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5754
    .local v17, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 5755
    .local v28, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 5756
    .local v27, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, s.flags, m.date, d.pts, d.inbox_max, d.outbox_max, m.replydata, d.pinned FROM dialogs as d LEFT JOIN messages as m ON d.last_mid = m.mid LEFT JOIN dialog_settings as s ON d.did = s.did ORDER BY d.pinned DESC, d.date DESC LIMIT %d,%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$count:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v12

    .line 5757
    .local v12, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5758
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 5759
    .local v15, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5760
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 5761
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 5762
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5763
    const/16 v2, 0xa

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 5764
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    if-eqz v2, :cond_1

    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v6

    if-lez v2, :cond_9

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 5765
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 5766
    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 5767
    const/16 v2, 0xe

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5768
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5769
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 5770
    .local v18, "flags":J
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v21, v0

    .line 5771
    .local v21, "low_flags":I
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5772
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_2

    .line 5773
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/16 v5, 0x20

    shr-long v6, v18, v5

    long-to-int v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 5774
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-nez v2, :cond_2

    .line 5775
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v5, 0x7fffffff

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 5778
    :cond_2
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5780
    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    .line 5781
    .local v13, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v13, :cond_8

    .line 5782
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v23

    .line 5783
    .local v23, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5784
    if-eqz v23, :cond_8

    .line 5785
    const/4 v2, 0x5

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 5786
    const/4 v2, 0x6

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5787
    const/16 v2, 0x9

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 5788
    .local v14, "date":I
    if-eqz v14, :cond_3

    .line 5789
    iput v14, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5791
    :cond_3
    const/4 v2, 0x7

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 5792
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v23

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5793
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5795
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5798
    :try_start_1
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-eqz v2, :cond_8

    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v2, :cond_4

    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-nez v2, :cond_4

    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v2, :cond_8

    .line 5802
    :cond_4
    const/16 v2, 0xd

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5803
    const/16 v2, 0xd

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    .line 5804
    if-eqz v13, :cond_5

    .line 5805
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 5806
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5807
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_5

    .line 5808
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v29

    invoke-static {v2, v0, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5812
    :cond_5
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v2, :cond_8

    .line 5813
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    .line 5814
    .local v24, "messageId":J
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_6

    .line 5815
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long v24, v24, v6

    .line 5817
    :cond_6
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5818
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5820
    :cond_7
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5829
    .end local v14    # "date":I
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v24    # "messageId":J
    :cond_8
    :goto_3
    :try_start_2
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v0, v6

    move/from16 v22, v0

    .line 5830
    .local v22, "lower_id":I
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v2, 0x20

    shr-long/2addr v6, v2

    long-to-int v0, v6

    move/from16 v20, v0

    .line 5831
    .local v20, "high_id":I
    if-eqz v22, :cond_d

    .line 5832
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_b

    .line 5833
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5834
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5889
    .end local v11    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "flags":J
    .end local v20    # "high_id":I
    .end local v21    # "low_flags":I
    .end local v22    # "lower_id":I
    .end local v27    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v28    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v16

    .line 5890
    .local v16, "e":Ljava/lang/Exception;
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5891
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5892
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5893
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5894
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5895
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V

    .line 5897
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 5764
    .restart local v11    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v17    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v28    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 5768
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 5823
    .restart local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v14    # "date":I
    .restart local v18    # "flags":J
    .restart local v21    # "low_flags":I
    .restart local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_1
    move-exception v16

    .line 5824
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5837
    .end local v14    # "date":I
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v20    # "high_id":I
    .restart local v22    # "lower_id":I
    :cond_b
    if-lez v22, :cond_c

    .line 5838
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5839
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5842
    :cond_c
    move/from16 v0, v22

    neg-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5843
    move/from16 v0, v22

    neg-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5848
    :cond_d
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5849
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5853
    .end local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "flags":J
    .end local v20    # "high_id":I
    .end local v21    # "low_flags":I
    .end local v22    # "lower_id":I
    :cond_e
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5855
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 5856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data, mid, date, uid FROM messages WHERE mid IN(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, ","

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v12

    .line 5857
    :cond_f
    :goto_5
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5858
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    .line 5859
    .restart local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v13, :cond_f

    .line 5860
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v23

    .line 5861
    .restart local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5862
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5863
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 5864
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    move-object/from16 v0, v23

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5866
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5868
    move-object/from16 v0, v23

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5869
    .local v26, "owner":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v26, :cond_f

    .line 5870
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 5871
    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-object/from16 v0, v23

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_5

    .line 5875
    .end local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v26    # "owner":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_10
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5878
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 5879
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v5, ","

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v2, v5, v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5882
    :cond_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 5883
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v5, ","

    invoke-static {v5, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5885
    :cond_13
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 5886
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v5, ","

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5888
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$offset:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$count:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4
.end method
