.class Lorg/telegram/messenger/MessagesController$9;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1000
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1003
    if-eqz p1, :cond_c

    move-object v3, p1

    .line 1004
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    .line 1005
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 1007
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1008
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    if-nez v6, :cond_0

    .line 1009
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 1011
    :cond_0
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    if-nez v6, :cond_1

    .line 1012
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 1014
    :cond_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_2

    .line 1015
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v6, :cond_7

    .line 1016
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 1024
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1025
    .local v5, "value":Ljava/lang/Integer;
    if-nez v5, :cond_3

    .line 1026
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1028
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    .line 1030
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_9

    .line 1031
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 1032
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:I

    .line 1033
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    .line 1034
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 1044
    .restart local v5    # "value":Ljava/lang/Integer;
    if-nez v5, :cond_5

    .line 1045
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1047
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    .line 1049
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_a

    .line 1050
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 1051
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->channel_id:I

    .line 1052
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->max_id:I

    .line 1053
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_7
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v6, :cond_8

    .line 1018
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_1

    .line 1019
    :cond_8
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_2

    .line 1020
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_1

    .line 1036
    .restart local v5    # "value":Ljava/lang/Integer;
    :cond_9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 1037
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1038
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 1039
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1055
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
    :cond_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .line 1056
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1057
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->max_id:I

    .line 1058
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1062
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1063
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v6, v1, v12, v12, v10}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1066
    .end local v0    # "a":I
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    :cond_c
    return-void
.end method
