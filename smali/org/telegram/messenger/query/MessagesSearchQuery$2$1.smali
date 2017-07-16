.class Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesSearchQuery$2;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$currentReqId:I

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$602(I)I

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_3

    iget-object v12, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .local v12, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    :cond_0
    const/4 v9, 0x0

    .local v9, "added":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v10, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x15

    if-eq v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_2
    aput-boolean v2, v3, v1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    instance-of v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v2, :cond_7

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :goto_4
    aput v2, v3, v1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v5, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_5
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$1000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    iget-object v6, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v6, v6, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$400(Ljava/lang/String;JJIIZ)V

    .end local v0    # "a":I
    .end local v9    # "added":Z
    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_3
    return-void

    .restart local v0    # "a":I
    .restart local v9    # "added":Z
    .restart local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_7
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_4

    :cond_8
    if-eqz v9, :cond_2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_9

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .local v11, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v5, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_5
.end method
