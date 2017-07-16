.class Lorg/telegram/messenger/MessagesStorage$66;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channel_id:I

.field final synthetic val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

.field final synthetic val$newDialogType:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 4107
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$channel_id:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$newDialogType:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4111
    const/4 v0, 0x0

    .line 4112
    .local v0, "checkInvite":Z
    :try_start_0
    iget v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$channel_id:I

    neg-int v10, v10

    int-to-long v4, v10

    .line 4113
    .local v4, "did":J
    const/4 v7, 0x0

    .line 4115
    .local v7, "pinned":I
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SELECT pts, pinned FROM dialogs WHERE did = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 4116
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-nez v10, :cond_3

    .line 4117
    iget v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$newDialogType:I

    if-eqz v10, :cond_0

    .line 4118
    const/4 v0, 0x1

    .line 4123
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4126
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DELETE FROM messages WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4127
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DELETE FROM bot_keyboard WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4128
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DELETE FROM media_counts_v2 WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4129
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DELETE FROM media_v2 WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4130
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DELETE FROM messages_holes WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4131
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DELETE FROM media_holes_v2 WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4132
    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 4134
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 4135
    .local v3, "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->chats:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4136
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->users:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4137
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->messages:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4138
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 4139
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 4140
    const/4 v10, 0x1

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 4141
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4142
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$channel_id:I

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 4143
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->top_message:I

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 4144
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->read_inbox_max_id:I

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 4145
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->read_outbox_max_id:I

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 4146
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->unread_count:I

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 4147
    const/4 v10, 0x0

    iput-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4148
    if-eqz v7, :cond_1

    move v8, v9

    :cond_1
    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 4149
    iput v7, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 4150
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->pts:I

    iput v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 4151
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4152
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const/4 v10, 0x0

    invoke-static {v8, v3, v10}, Lorg/telegram/messenger/MessagesStorage;->access$1200(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    .line 4154
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$channel_id:I

    invoke-virtual {v8, v10, v11, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    .line 4155
    new-instance v8, Lorg/telegram/messenger/MessagesStorage$66$1;

    invoke-direct {v8, p0, v4, v5}, Lorg/telegram/messenger/MessagesStorage$66$1;-><init>(Lorg/telegram/messenger/MessagesStorage$66;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4161
    if-eqz v0, :cond_2

    .line 4162
    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$newDialogType:I

    if-ne v8, v9, :cond_4

    .line 4163
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$channel_id:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    .line 4171
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    .end local v4    # "did":J
    .end local v7    # "pinned":I
    :cond_2
    :goto_1
    return-void

    .line 4121
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v4    # "did":J
    .restart local v7    # "pinned":I
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    goto/16 :goto_0

    .line 4165
    .restart local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v3    # "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$channel_id:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->generateJoinMessage(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4168
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    .end local v4    # "did":J
    .end local v7    # "pinned":I
    :catch_0
    move-exception v6

    .line 4169
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
