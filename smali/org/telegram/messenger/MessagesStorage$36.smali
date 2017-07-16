.class Lorg/telegram/messenger/MessagesStorage$36;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$invited_id:I

.field final synthetic val$user_id:I

.field final synthetic val$version:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$36;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$chat_id:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$invited_id:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$version:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    :try_start_0
    iget-object v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v11}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SELECT info, pinned FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$chat_id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v5, 0x0

    .local v5, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v11, :cond_2

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_1

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .local v9, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    if-ne v11, v12, :cond_3

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .end local v0    # "a":I
    .end local v9    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    :goto_1
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$version:I

    iput v12, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    move-object v4, v5

    .local v4, "finalInfo":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v11, Lorg/telegram/messenger/MessagesStorage$36$1;

    invoke-direct {v11, p0, v4}, Lorg/telegram/messenger/MessagesStorage$36$1;-><init>(Lorg/telegram/messenger/MessagesStorage$36;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v11}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    const-string/jumbo v12, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .local v10, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v11

    invoke-direct {v2, v11}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v5, v2}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v11, 0x1

    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$chat_id:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v11, 0x3

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "finalInfo":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v5    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v6    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v10    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    :goto_2
    return-void

    .restart local v0    # "a":I
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v5    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .restart local v6    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v9    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "a":I
    .end local v9    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_4
    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    if-nez v11, :cond_7

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .local v8, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v12, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v13, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    if-ne v12, v13, :cond_5

    goto :goto_2

    .end local v8    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_6
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .local v9, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    iput v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$invited_id:I

    iput v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v11

    iput v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v6    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v9    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v5    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .restart local v6    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_7
    :try_start_1
    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_1

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .local v9, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    if-ne v11, v12, :cond_9

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$invited_id:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    .local v7, "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    :goto_4
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v7    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .restart local v7    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iget v11, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .end local v7    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
