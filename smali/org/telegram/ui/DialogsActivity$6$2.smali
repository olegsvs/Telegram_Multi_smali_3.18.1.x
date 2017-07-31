.class Lorg/telegram/ui/DialogsActivity$6$2;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$6;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$isFav:Z

.field final synthetic val$markedAsUnread:Z

.field final synthetic val$pinned:Z

.field final synthetic val$unread:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$6;ZIZLorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$6;

    .prologue
    .line 724
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isFav:Z

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$unread:I

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$markedAsUnread:Z

    iput-object p5, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p6, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$pinned:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f070452

    const v2, 0x7f070078

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 727
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 728
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TabsView;->forceUpdateTabCounters()V

    .line 731
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 732
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v10

    .line 733
    .local v10, "muted":Z
    if-nez v10, :cond_2

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 828
    .end local v10    # "muted":Z
    :cond_1
    :goto_0
    return-void

    .line 736
    .restart local v10    # "muted":Z
    :cond_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 737
    .local v11, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 738
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 740
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 741
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 742
    .local v8, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_3

    .line 743
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 745
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    goto :goto_0

    .line 747
    .end local v8    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "muted":Z
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    .line 748
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 749
    .restart local v8    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$isFav:Z

    if-eqz v1, :cond_8

    .line 750
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Favorite;->deleteFavorite(Ljava/lang/Long;)V

    .line 751
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 756
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 757
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 758
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 760
    :cond_5
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v1, :cond_6

    .line 761
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)V

    .line 764
    :cond_6
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v1, :cond_7

    .line 765
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 767
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;I)V

    goto/16 :goto_0

    .line 753
    :cond_8
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Favorite;->addFavorite(Ljava/lang/Long;)V

    .line 754
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 768
    .end local v8    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_9
    const/4 v1, 0x5

    if-ne p2, v1, :cond_b

    .line 769
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$unread:I

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$markedAsUnread:Z

    if-nez v1, :cond_a

    .line 770
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3300(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 772
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_0

    .line 774
    :cond_b
    const/4 v1, 0x6

    if-ne p2, v1, :cond_c

    .line 775
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 779
    :cond_c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 781
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 782
    if-nez p2, :cond_f

    .line 783
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$pinned:Z

    if-nez v6, :cond_e

    :goto_3
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$pinned:Z

    if-nez v1, :cond_1

    .line 784
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    goto/16 :goto_0

    .line 781
    :cond_d
    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_e
    move v4, v12

    .line 783
    goto :goto_3

    .line 788
    :cond_f
    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 789
    if-ne p2, v4, :cond_11

    .line 790
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_10

    .line 791
    const-string/jumbo v1, "AreYouSureClearHistorySuper"

    const v2, 0x7f07008d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 795
    :goto_4
    const-string/jumbo v1, "OK"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$6$2$1;-><init>(Lorg/telegram/ui/DialogsActivity$6$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 825
    :goto_5
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 793
    :cond_10
    const-string/jumbo v1, "AreYouSureClearHistoryChannel"

    const v2, 0x7f07008c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 802
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_13

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_12

    .line 804
    const-string/jumbo v1, "MegaLeaveAlert"

    const v2, 0x7f070373

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 815
    :goto_6
    const-string/jumbo v1, "OK"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$2$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$6$2$2;-><init>(Lorg/telegram/ui/DialogsActivity$6$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5

    .line 806
    :cond_12
    const-string/jumbo v1, "MegaDeleteAlert"

    const v2, 0x7f070371

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 809
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_15

    .line 810
    :cond_14
    const-string/jumbo v1, "ChannelLeaveAlert"

    const v2, 0x7f070122

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 812
    :cond_15
    const-string/jumbo v1, "ChannelDeleteAlert"

    const v2, 0x7f070118

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6
.end method
