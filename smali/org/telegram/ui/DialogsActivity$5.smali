.class Lorg/telegram/ui/DialogsActivity$5;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 455
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v23

    if-nez v23, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-wide/16 v12, 0x0

    .line 462
    .local v12, "dialog_id":J
    const/16 v17, 0x0

    .line 463
    .local v17, "message_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v6

    .line 464
    .local v6, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_4

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v10

    .line 466
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v10, :cond_0

    .line 469
    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 513
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_2
    :goto_1
    const-wide/16 v24, 0x0

    cmp-long v23, v12, v24

    if-eqz v23, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)F

    move-result v23

    const/high16 v24, 0x42820000    # 65.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_12

    .line 518
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "plusconfig"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 520
    .local v20, "plusPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 522
    long-to-int v15, v12

    .line 523
    .local v15, "lower_part":I
    const/16 v23, 0x20

    shr-long v24, v12, v23

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 525
    .local v14, "high_id":I
    if-eqz v15, :cond_e

    .line 526
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_c

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v15}, Lorg/telegram/ui/DialogsActivity;->access$2102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 540
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v23

    if-eqz v23, :cond_10

    .line 541
    const-string/jumbo v23, "dialogsClickOnPic"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 542
    .local v19, "picClick":I
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 543
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 544
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v23, "user_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 470
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v14    # "high_id":I
    .end local v15    # "lower_part":I
    .end local v19    # "picClick":I
    .end local v20    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_2

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    .line 472
    .local v18, "obj":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v23, v18

    .line 473
    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 475
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v23, v18

    .line 476
    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 478
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 480
    .end local v22    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .line 483
    .restart local v18    # "obj":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 485
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    move-object/from16 v23, v18

    .line 486
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 488
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .end local v9    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_7
    move-object/from16 v23, v18

    .line 490
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v23, v0

    if-lez v23, :cond_8

    move-object/from16 v23, v18

    .line 491
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .line 495
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    check-cast v18, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .restart local v18    # "obj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v23, v18

    .line 493
    check-cast v23, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    goto :goto_3

    .line 498
    :cond_9
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v23, v18

    .line 499
    check-cast v23, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shl-long v12, v24, v23

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    check-cast v18, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .line 503
    .restart local v18    # "obj":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/messenger/MessageObject;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v16, v18

    .line 504
    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 505
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 506
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v17

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getLastSearchString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 508
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_b
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v23

    check-cast v18, Ljava/lang/String;

    .end local v18    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 529
    .restart local v14    # "high_id":I
    .restart local v15    # "lower_part":I
    .restart local v20    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_c
    if-lez v15, :cond_d

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v15}, Lorg/telegram/ui/DialogsActivity;->access$2002(Lorg/telegram/ui/DialogsActivity;I)I

    goto/16 :goto_2

    .line 531
    :cond_d
    if-gez v15, :cond_3

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    neg-int v0, v15

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2102(Lorg/telegram/ui/DialogsActivity;I)I

    goto/16 :goto_2

    .line 536
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v8

    .line 537
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2002(Lorg/telegram/ui/DialogsActivity;I)I

    goto/16 :goto_2

    .line 547
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v19    # "picClick":I
    :cond_f
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 548
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 549
    .local v21, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 550
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 551
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_0

    .line 556
    .end local v19    # "picClick":I
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v23

    if-eqz v23, :cond_12

    .line 557
    const-string/jumbo v23, "dialogsClickOnGroupPic"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 558
    .restart local v19    # "picClick":I
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 559
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lorg/telegram/messenger/MessagesController;->loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V

    .line 560
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 561
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string/jumbo v23, "chat_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    new-instance v11, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v11, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 563
    .local v11, "fragment":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 565
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v11    # "fragment":Lorg/telegram/ui/ProfileActivity;
    :cond_11
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 566
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 567
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 568
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 569
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v23

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_0

    .line 577
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v14    # "high_id":I
    .end local v15    # "lower_part":I
    .end local v19    # "picClick":I
    .end local v20    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v12, v13, v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;JZZ)V

    goto/16 :goto_0

    .line 580
    :cond_13
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 581
    .restart local v7    # "args":Landroid/os/Bundle;
    long-to-int v15, v12

    .line 582
    .restart local v15    # "lower_part":I
    const/16 v23, 0x20

    shr-long v24, v12, v23

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 583
    .restart local v14    # "high_id":I
    if-eqz v15, :cond_1b

    .line 584
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_18

    .line 585
    const-string/jumbo v23, "chat_id"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    :cond_14
    :goto_4
    if-eqz v17, :cond_1c

    .line 604
    const-string/jumbo v23, "message_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    :cond_15
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v24

    cmp-long v23, v24, v12

    if-nez v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_0

    .line 614
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    if-eqz v23, :cond_17

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v12, v13}, Lorg/telegram/ui/DialogsActivity;->access$2502(Lorg/telegram/ui/DialogsActivity;J)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x200

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;I)V

    .line 619
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1d

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 621
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 587
    :cond_18
    if-lez v15, :cond_19

    .line 588
    const-string/jumbo v23, "user_id"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 589
    :cond_19
    if-gez v15, :cond_14

    .line 590
    if-eqz v17, :cond_1a

    .line 591
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    neg-int v0, v15

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 592
    .restart local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v8, :cond_1a

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 593
    const-string/jumbo v23, "migrated_to"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v15, v0

    .line 597
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1a
    const-string/jumbo v23, "chat_id"

    neg-int v0, v15

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 601
    :cond_1b
    const-string/jumbo v23, "enc_id"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 606
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v23

    if-eqz v23, :cond_15

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto/16 :goto_5

    .line 625
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method
