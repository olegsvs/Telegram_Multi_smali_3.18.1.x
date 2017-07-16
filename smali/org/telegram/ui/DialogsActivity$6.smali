.class Lorg/telegram/ui/DialogsActivity$6;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
    .line 632
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 38
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_6

    .line 636
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 637
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v20

    .line 638
    .local v20, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v30

    .line 640
    .local v30, "item":Ljava/lang/Object;
    move-object/from16 v0, v30

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 641
    :cond_4
    new-instance v21, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 642
    .local v21, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f070078

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 643
    const-string/jumbo v4, "ClearSearch"

    const v5, 0x7f07017f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 644
    const-string/jumbo v4, "ClearButton"

    const v5, 0x7f070177

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$6$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$6$1;-><init>(Lorg/telegram/ui/DialogsActivity$6;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 654
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 656
    const/4 v4, 0x1

    .line 994
    .end local v20    # "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .end local v21    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v30    # "item":Ljava/lang/Object;
    :goto_0
    return v4

    .line 660
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 663
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v25

    .line 664
    .local v25, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p2, :cond_7

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p2

    if-lt v0, v4, :cond_8

    .line 665
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 667
    :cond_8
    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 668
    .local v24, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v24

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v14, v15}, Lorg/telegram/ui/DialogsActivity;->access$2802(Lorg/telegram/ui/DialogsActivity;J)J

    .line 669
    move-object/from16 v0, v24

    iget-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 671
    .local v10, "pinned":Z
    new-instance v21, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    .local v21, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v32, v0

    .line 673
    .local v32, "lower_id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    const/16 v11, 0x20

    shr-long/2addr v4, v11

    long-to-int v0, v4

    move/from16 v27, v0

    .line 675
    .local v27, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    neg-long v14, v14

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v22

    .line 676
    .local v22, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 677
    .local v23, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_c

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 678
    .local v35, "title":Ljava/lang/String;
    :goto_1
    if-eqz v35, :cond_9

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 680
    :cond_9
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 681
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v32

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 684
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v6

    .line 685
    .local v6, "isFav":Z
    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 686
    .local v7, "unread":I
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "plusconfig"

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 687
    .local v34, "plusPreferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unread_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const/4 v8, 0x1

    .line 689
    .local v8, "markedAsUnread":Z
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v29

    .line 690
    .local v29, "isMuted":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v4

    if-eqz v4, :cond_f

    const v33, 0x7f02004f

    .line 694
    .local v33, "muted":I
    :goto_3
    const/4 v4, 0x7

    new-array v0, v4, [I

    move-object/from16 v28, v0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_10

    const v4, 0x7f020055

    :goto_4
    aput v4, v28, v5

    const/4 v4, 0x1

    const v5, 0x7f02004b

    aput v5, v28, v4

    const/4 v4, 0x2

    const v5, 0x7f02004e

    aput v5, v28, v4

    const/4 v5, 0x3

    if-eqz v29, :cond_11

    const v4, 0x7f0201f8

    :goto_5
    aput v4, v28, v5

    const/4 v5, 0x4

    if-eqz v6, :cond_12

    const v4, 0x7f020050

    :goto_6
    aput v4, v28, v5

    const/4 v5, 0x5

    if-nez v7, :cond_13

    if-nez v8, :cond_13

    const v4, 0x7f020056

    :goto_7
    aput v4, v28, v5

    const/4 v4, 0x6

    const v5, 0x7f020053

    aput v5, v28, v4

    .line 703
    .local v28, "icons":[I
    if-eqz v9, :cond_1a

    iget-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_1a

    .line 704
    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v4, :cond_a

    .line 705
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_a
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_14

    const-string/jumbo v4, "UnpinFromTop"

    const v11, 0x7f07064d

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_8
    aput-object v4, v31, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "ClearHistoryCache"

    const v11, 0x7f070179

    .line 706
    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    const/4 v5, 0x2

    if-eqz v9, :cond_b

    iget-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_16

    :cond_b
    const-string/jumbo v4, "LeaveMegaMenu"

    const v11, 0x7f070340

    .line 707
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_9
    aput-object v4, v31, v5

    const/4 v5, 0x3

    if-eqz v33, :cond_17

    const-string/jumbo v4, "UnmuteNotifications"

    const v11, 0x7f07064b

    .line 708
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_a
    aput-object v4, v31, v5

    const/4 v5, 0x4

    if-eqz v6, :cond_18

    const-string/jumbo v4, "DeleteFromFavorites"

    const v11, 0x7f0701e7

    .line 709
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    aput-object v4, v31, v5

    const/4 v5, 0x5

    if-nez v7, :cond_19

    if-nez v8, :cond_19

    const-string/jumbo v4, "MarkAsUnread"

    const v11, 0x7f070369

    .line 710
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_c
    aput-object v4, v31, v5

    const/4 v4, 0x6

    const-string/jumbo v5, "AddShortcut"

    const v11, 0x7f07004f

    .line 711
    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    .line 724
    .local v31, "items":[Ljava/lang/CharSequence;
    :goto_d
    new-instance v4, Lorg/telegram/ui/DialogsActivity$6$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/DialogsActivity$6$2;-><init>(Lorg/telegram/ui/DialogsActivity$6;ZIZLorg/telegram/tgnet/TLRPC$Chat;Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 994
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v28    # "icons":[I
    .end local v31    # "items":[Ljava/lang/CharSequence;
    :goto_e
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 677
    .end local v6    # "isFav":Z
    .end local v7    # "unread":I
    .end local v8    # "markedAsUnread":Z
    .end local v29    # "isMuted":Z
    .end local v33    # "muted":I
    .end local v34    # "plusPreferences":Landroid/content/SharedPreferences;
    .end local v35    # "title":Ljava/lang/String;
    :cond_c
    if-eqz v23, :cond_d

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_1

    :cond_d
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 687
    .restart local v6    # "isFav":Z
    .restart local v7    # "unread":I
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v34    # "plusPreferences":Landroid/content/SharedPreferences;
    .restart local v35    # "title":Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 690
    .restart local v8    # "markedAsUnread":Z
    .restart local v29    # "isMuted":Z
    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 694
    .restart local v33    # "muted":I
    :cond_10
    const v4, 0x7f020051

    goto/16 :goto_4

    :cond_11
    const v4, 0x7f0201f7

    goto/16 :goto_5

    :cond_12
    const v4, 0x7f02004d

    goto/16 :goto_6

    :cond_13
    const v4, 0x7f020052

    goto/16 :goto_7

    .line 705
    .restart local v28    # "icons":[I
    :cond_14
    const-string/jumbo v4, "PinToTop"

    const v11, 0x7f0704e3

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 707
    :cond_16
    const-string/jumbo v4, "DeleteMegaMenu"

    const v11, 0x7f0701eb

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 708
    :cond_17
    const-string/jumbo v4, "MuteNotifications"

    const v11, 0x7f0703b1

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 709
    :cond_18
    const-string/jumbo v4, "AddToFavorites"

    const v11, 0x7f070054

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 710
    :cond_19
    const-string/jumbo v4, "MarkAsRead"

    const v11, 0x7f070368

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 713
    :cond_1a
    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v4, :cond_1b

    .line 714
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1b
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "UnpinFromTop"

    const v11, 0x7f07064d

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_f
    aput-object v4, v31, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "ClearHistoryCache"

    const v11, 0x7f070179

    .line 715
    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    const/4 v5, 0x2

    if-eqz v9, :cond_1c

    iget-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_1f

    :cond_1c
    const-string/jumbo v4, "LeaveChannelMenu"

    const v11, 0x7f07033e

    .line 716
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_10
    aput-object v4, v31, v5

    const/4 v5, 0x3

    if-eqz v33, :cond_20

    const-string/jumbo v4, "UnmuteNotifications"

    const v11, 0x7f07064b

    .line 717
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_11
    aput-object v4, v31, v5

    const/4 v5, 0x4

    if-eqz v6, :cond_21

    const-string/jumbo v4, "DeleteFromFavorites"

    const v11, 0x7f0701e7

    .line 718
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_12
    aput-object v4, v31, v5

    const/4 v5, 0x5

    if-nez v7, :cond_22

    if-nez v8, :cond_22

    const-string/jumbo v4, "MarkAsUnread"

    const v11, 0x7f070369

    .line 719
    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_13
    aput-object v4, v31, v5

    const/4 v4, 0x6

    const-string/jumbo v5, "AddShortcut"

    const v11, 0x7f07004f

    .line 720
    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    .restart local v31    # "items":[Ljava/lang/CharSequence;
    goto/16 :goto_d

    .line 714
    .end local v31    # "items":[Ljava/lang/CharSequence;
    :cond_1d
    const-string/jumbo v4, "PinToTop"

    const v11, 0x7f0704e3

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_1e
    const/4 v4, 0x0

    goto :goto_f

    .line 716
    :cond_1f
    const-string/jumbo v4, "ChannelDeleteMenu"

    const v11, 0x7f07011a

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 717
    :cond_20
    const-string/jumbo v4, "MuteNotifications"

    const v11, 0x7f0703b1

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 718
    :cond_21
    const-string/jumbo v4, "AddToFavorites"

    const v11, 0x7f070054

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 719
    :cond_22
    const-string/jumbo v4, "MarkAsRead"

    const v11, 0x7f070368

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 832
    .end local v6    # "isFav":Z
    .end local v7    # "unread":I
    .end local v8    # "markedAsUnread":Z
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v28    # "icons":[I
    .end local v29    # "isMuted":Z
    .end local v33    # "muted":I
    .end local v34    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_23
    if-gez v32, :cond_27

    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_27

    const/16 v18, 0x1

    .line 833
    .local v18, "isChat":Z
    :goto_14
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v29

    .line 834
    .restart local v29    # "isMuted":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v4

    if-eqz v4, :cond_28

    const v33, 0x7f020127

    .line 835
    .restart local v33    # "muted":I
    :goto_15
    const/16 v36, 0x0

    .line 836
    .local v36, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v18, :cond_24

    if-lez v32, :cond_24

    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_24

    .line 837
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v36

    .line 839
    :cond_24
    const/16 v26, 0x0

    .line 840
    .local v26, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v32, :cond_25

    .line 841
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v26

    .line 843
    :cond_25
    if-eqz v26, :cond_29

    const/4 v13, 0x1

    .line 844
    .local v13, "isEncrypted":Z
    :goto_16
    if-eqz v36, :cond_2a

    move-object/from16 v0, v36

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_2a

    const/16 v19, 0x1

    .line 845
    .local v19, "isBot":Z
    :goto_17
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v6

    .line 846
    .restart local v6    # "isFav":Z
    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 847
    .restart local v7    # "unread":I
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "plusconfig"

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 848
    .restart local v34    # "plusPreferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unread_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    const/4 v8, 0x1

    .line 859
    .restart local v8    # "markedAsUnread":Z
    :goto_18
    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v4, :cond_26

    .line 860
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    if-nez v32, :cond_2c

    const/4 v4, 0x1

    :goto_19
    invoke-virtual {v12, v4}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v4

    if-eqz v4, :cond_2e

    :cond_26
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_2d

    const-string/jumbo v4, "UnpinFromTop"

    const v12, 0x7f07064d

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1a
    aput-object v4, v5, v11

    const/4 v4, 0x1

    const-string/jumbo v11, "ClearHistory"

    const v12, 0x7f070178

    .line 861
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v4

    const/4 v11, 0x2

    if-eqz v18, :cond_2f

    const-string/jumbo v4, "DeleteChat"

    const v12, 0x7f0701e2

    .line 862
    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1b
    aput-object v4, v5, v11

    const/4 v11, 0x3

    if-eqz v33, :cond_31

    const-string/jumbo v4, "UnmuteNotifications"

    const v12, 0x7f07064b

    .line 863
    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1c
    aput-object v4, v5, v11

    const/4 v11, 0x4

    if-eqz v6, :cond_32

    const-string/jumbo v4, "DeleteFromFavorites"

    const v12, 0x7f0701e7

    .line 864
    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1d
    aput-object v4, v5, v11

    const/4 v11, 0x5

    if-nez v7, :cond_33

    if-nez v8, :cond_33

    const-string/jumbo v4, "MarkAsUnread"

    const v12, 0x7f070369

    .line 865
    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1e
    aput-object v4, v5, v11

    const/4 v4, 0x6

    const-string/jumbo v11, "AddShortcut"

    const v12, 0x7f07004f

    .line 866
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v4

    const/4 v4, 0x7

    new-array v0, v4, [I

    move-object/from16 v37, v0

    const/4 v11, 0x0

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_34

    const v4, 0x7f020055

    :goto_1f
    aput v4, v37, v11

    const/4 v4, 0x1

    const v11, 0x7f02004b

    aput v11, v37, v4

    const/4 v11, 0x2

    if-eqz v18, :cond_35

    const v4, 0x7f02004e

    :goto_20
    aput v4, v37, v11

    const/4 v11, 0x3

    if-eqz v29, :cond_36

    const v4, 0x7f0201f8

    :goto_21
    aput v4, v37, v11

    const/4 v11, 0x4

    if-eqz v6, :cond_37

    const v4, 0x7f020050

    :goto_22
    aput v4, v37, v11

    const/4 v11, 0x5

    if-nez v7, :cond_38

    if-nez v8, :cond_38

    const v4, 0x7f020056

    :goto_23
    aput v4, v37, v11

    const/4 v4, 0x6

    const v11, 0x7f020053

    aput v11, v37, v4

    new-instance v11, Lorg/telegram/ui/DialogsActivity$6$3;

    move-object/from16 v12, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v10

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/DialogsActivity$6$3;-><init>(Lorg/telegram/ui/DialogsActivity$6;ZZIZZZZ)V

    .line 859
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1, v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_e

    .line 832
    .end local v6    # "isFav":Z
    .end local v7    # "unread":I
    .end local v8    # "markedAsUnread":Z
    .end local v13    # "isEncrypted":Z
    .end local v18    # "isChat":Z
    .end local v19    # "isBot":Z
    .end local v26    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v29    # "isMuted":Z
    .end local v33    # "muted":I
    .end local v34    # "plusPreferences":Landroid/content/SharedPreferences;
    .end local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_27
    const/16 v18, 0x0

    goto/16 :goto_14

    .line 834
    .restart local v18    # "isChat":Z
    .restart local v29    # "isMuted":Z
    :cond_28
    const/16 v33, 0x0

    goto/16 :goto_15

    .line 843
    .restart local v26    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v33    # "muted":I
    .restart local v36    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_29
    const/4 v13, 0x0

    goto/16 :goto_16

    .line 844
    .restart local v13    # "isEncrypted":Z
    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_17

    .line 848
    .restart local v6    # "isFav":Z
    .restart local v7    # "unread":I
    .restart local v19    # "isBot":Z
    .restart local v34    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_2b
    const/4 v8, 0x0

    goto/16 :goto_18

    .line 860
    .restart local v8    # "markedAsUnread":Z
    :cond_2c
    const/4 v4, 0x0

    goto/16 :goto_19

    :cond_2d
    const-string/jumbo v4, "PinToTop"

    const v12, 0x7f0704e3

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1a

    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_1a

    .line 862
    :cond_2f
    if-eqz v19, :cond_30

    const-string/jumbo v4, "DeleteAndStop"

    const v12, 0x7f0701e0

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1b

    :cond_30
    const-string/jumbo v4, "Delete"

    const v12, 0x7f0701d9

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1b

    .line 863
    :cond_31
    const-string/jumbo v4, "MuteNotifications"

    const v12, 0x7f0703b1

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1c

    .line 864
    :cond_32
    const-string/jumbo v4, "AddToFavorites"

    const v12, 0x7f070054

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1d

    .line 865
    :cond_33
    const-string/jumbo v4, "MarkAsRead"

    const v12, 0x7f070368

    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1e

    .line 866
    :cond_34
    const v4, 0x7f020051

    goto/16 :goto_1f

    :cond_35
    const v4, 0x7f02004c

    goto/16 :goto_20

    :cond_36
    const v4, 0x7f0201f7

    goto/16 :goto_21

    :cond_37
    const v4, 0x7f02004d

    goto/16 :goto_22

    :cond_38
    const v4, 0x7f020052

    goto/16 :goto_23
.end method
