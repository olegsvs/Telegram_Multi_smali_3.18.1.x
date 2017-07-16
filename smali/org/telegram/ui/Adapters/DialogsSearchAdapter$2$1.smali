.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 250
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->val$currentReqId:I

    iget-object v10, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v10, v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v10

    if-ne v7, v10, :cond_5

    .line 251
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v7, :cond_5

    .line 252
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 253
    .local v5, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v11, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 254
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 255
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 256
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    if-nez v7, :cond_0

    .line 257
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 260
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 261
    .local v1, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v9}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    .line 263
    .local v2, "dialog_id":J
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v4, v7, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    .local v4, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 265
    .local v6, "value":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 266
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-boolean v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {v7, v10, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v7, v10, :cond_3

    move v7, v8

    :goto_2
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v4    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6    # "value":Ljava/lang/Integer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v4, v7, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    .restart local v4    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v6    # "value":Ljava/lang/Integer;
    :cond_3
    move v7, v9

    .line 269
    goto :goto_2

    .line 271
    .end local v1    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v2    # "dialog_id":J
    .end local v4    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6    # "value":Ljava/lang/Integer;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x14

    if-eq v10, v11, :cond_7

    :goto_3
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z

    .line 272
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 275
    .end local v0    # "a":I
    .end local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 276
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v7

    invoke-interface {v7, v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 278
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v7, v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$602(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    .line 279
    return-void

    .restart local v0    # "a":I
    .restart local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_7
    move v8, v9

    .line 271
    goto :goto_3
.end method
