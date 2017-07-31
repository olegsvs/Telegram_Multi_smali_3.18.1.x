.class Lorg/telegram/messenger/MessagesController$62$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$62;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$62;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$62;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$62;

    .prologue
    .line 3910
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3913
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$62;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3914
    .local v7, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v7, :cond_0

    .line 3915
    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 3916
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3918
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$62;->val$popup:Z

    if-nez v0, :cond_1

    .line 3919
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$62;->val$dialog_id:J

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$62;->val$max_positive_id:I

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 3920
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3921
    .local v8, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$62;->val$dialog_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3922
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 3929
    :goto_0
    return-void

    .line 3924
    .end local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$62;->val$dialog_id:J

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$62;->val$max_positive_id:I

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 3925
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3926
    .restart local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$62;->val$dialog_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3927
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    goto :goto_0
.end method
