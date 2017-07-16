.class Lorg/telegram/messenger/NotificationsController$9;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$isLast:Z

.field final synthetic val$messageObjects:Ljava/util/ArrayList;

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 541
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$9;->val$messageObjects:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lorg/telegram/messenger/NotificationsController$9;->val$isLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 544
    const/4 v5, 0x0

    .line 546
    .local v5, "added":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 547
    .local v15, "oldCount":I
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v21, "settingsCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Notifications"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 549
    .local v20, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v23, "PinnedMessages"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 550
    .local v6, "allowPinned":Z
    const/16 v18, 0x0

    .line 552
    .local v18, "popup":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$messageObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_13

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$messageObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 554
    .local v11, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .line 555
    .local v12, "mid":J
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 556
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shl-long v24, v24, v23

    or-long v12, v12, v24

    .line 558
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 552
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 561
    :cond_2
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 562
    .local v8, "dialog_id":J
    move-wide/from16 v16, v8

    .line 563
    .local v16, "original_dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$300(Lorg/telegram/messenger/NotificationsController;)J

    move-result-wide v24

    cmp-long v23, v8, v24

    if-nez v23, :cond_3

    sget-boolean v23, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v23, :cond_3

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$1900(Lorg/telegram/messenger/NotificationsController;)V

    goto :goto_1

    .line 567
    :cond_3
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 568
    if-nez v6, :cond_4

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 571
    :cond_4
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v8, v0

    .line 573
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$508(Lorg/telegram/messenger/NotificationsController;)I

    .line 576
    :cond_6
    const/4 v5, 0x1

    .line 578
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    .line 579
    .local v22, "value":Ljava/lang/Boolean;
    long-to-int v10, v8

    .line 580
    .local v10, "lower_id":I
    if-gez v10, :cond_d

    const/4 v7, 0x1

    .line 581
    .local v7, "isChat":Z
    :goto_2
    if-eqz v10, :cond_7

    .line 582
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "custom_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 583
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "popup_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 587
    :goto_3
    if-nez v18, :cond_10

    .line 588
    long-to-int v0, v8

    move/from16 v23, v0

    if-gez v23, :cond_f

    const-string/jumbo v23, "popupGroup"

    :goto_4
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 595
    :cond_7
    :goto_5
    if-nez v22, :cond_a

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8, v9}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v14

    .line 597
    .local v14, "notifyOverride":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v14, v0, :cond_12

    const-string/jumbo v23, "EnableAll"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_8

    if-eqz v7, :cond_9

    const-string/jumbo v23, "EnableGroup"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_9

    :cond_8
    if-eqz v14, :cond_12

    :cond_9
    const/16 v23, 0x1

    :goto_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 598
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v14    # "notifyOverride":I
    :cond_a
    if-eqz v18, :cond_b

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_b

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v23

    if-nez v23, :cond_b

    .line 601
    const/16 v18, 0x0

    .line 603
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 604
    if-eqz v18, :cond_c

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 607
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    cmp-long v23, v16, v8

    if-eqz v23, :cond_1

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 580
    .end local v7    # "isChat":Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 585
    .restart local v7    # "isChat":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 588
    :cond_f
    const-string/jumbo v23, "popupAll"

    goto/16 :goto_4

    .line 589
    :cond_10
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 590
    const/16 v18, 0x3

    goto/16 :goto_5

    .line 591
    :cond_11
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 592
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 597
    .restart local v14    # "notifyOverride":I
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 616
    .end local v7    # "isChat":Z
    .end local v8    # "dialog_id":J
    .end local v10    # "lower_id":I
    .end local v11    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v12    # "mid":J
    .end local v14    # "notifyOverride":I
    .end local v16    # "original_dialog_id":J
    .end local v22    # "value":Ljava/lang/Boolean;
    :cond_13
    if-eqz v5, :cond_14

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$isLast:Z

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/NotificationsController;->access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 620
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-eq v15, v0, :cond_15

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v23

    if-nez v23, :cond_15

    .line 621
    move/from16 v19, v18

    .line 622
    .local v19, "popupFinal":I
    new-instance v23, Lorg/telegram/messenger/NotificationsController$9$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController$9$1;-><init>(Lorg/telegram/messenger/NotificationsController$9;I)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 636
    .end local v19    # "popupFinal":I
    :cond_15
    return-void
.end method
