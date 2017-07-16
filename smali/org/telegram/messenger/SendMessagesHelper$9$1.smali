.class Lorg/telegram/messenger/SendMessagesHelper$9$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$9;

    .prologue
    .line 2340
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2343
    const/4 v9, 0x0

    .line 2344
    .local v9, "isSentError":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_11

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2346
    .local v4, "oldId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$req:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    .line 2347
    .local v5, "isBroadcast":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    .local v6, "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2349
    .local v7, "attachPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    if-eqz v2, :cond_8

    .line 2350
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    .line 2351
    .local v12, "res":Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v0, v17

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 2352
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->entities:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->out:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 2355
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_0

    .line 2356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2359
    :cond_0
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->message:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2362
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2365
    :cond_2
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lorg/telegram/messenger/SendMessagesHelper$9$1$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2371
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
    :cond_3
    :goto_0
    if-nez v9, :cond_4

    .line 2428
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v3

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2430
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v17, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v2

    const/16 v19, 0x1

    if-eqz v5, :cond_10

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v18, v19

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    aput-object v19, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v18, v2

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2431
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v17

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;IZLjava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2470
    .end local v4    # "oldId":I
    .end local v5    # "isBroadcast":Z
    .end local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "attachPath":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v9, :cond_7

    .line 2471
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x2

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2473
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2476
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 2478
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 2480
    :cond_7
    return-void

    .line 2372
    .restart local v4    # "oldId":I
    .restart local v5    # "isBroadcast":Z
    .restart local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "attachPath":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v2, :cond_3

    .line 2373
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2374
    .local v14, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    .line 2375
    .local v15, "updatesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    const/4 v10, 0x0

    .line 2376
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_9

    .line 2377
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Update;

    .line 2378
    .local v13, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v2, :cond_b

    move-object v11, v13

    .line 2379
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 2380
    .local v11, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2382
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2388
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2406
    .end local v11    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;
    .end local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_9
    :goto_4
    if-eqz v10, :cond_f

    .line 2407
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2408
    .local v16, "value":Ljava/lang/Integer;
    if-nez v16, :cond_a

    .line 2409
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 2410
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v2, v3, :cond_e

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 2414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$msgObj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$originalPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v3, v10, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    .line 2419
    .end local v16    # "value":Ljava/lang/Integer;
    :goto_6
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lorg/telegram/messenger/SendMessagesHelper$9$1$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2390
    .restart local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_b
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v2, :cond_d

    move-object v11, v13

    .line 2391
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .line 2392
    .local v11, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 2394
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v17, -0x80000000

    or-int v3, v3, v17

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2396
    :cond_c
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2402
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 2376
    .end local v11    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 2412
    .end local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v16    # "value":Ljava/lang/Integer;
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 2417
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_f
    const/4 v9, 0x1

    goto :goto_6

    .line 2430
    .end local v8    # "a":I
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v14    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    .end local v15    # "updatesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto/16 :goto_1

    .line 2467
    .end local v4    # "oldId":I
    .end local v5    # "isBroadcast":Z
    .end local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "attachPath":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$req:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 2468
    const/4 v9, 0x1

    goto/16 :goto_2
.end method
