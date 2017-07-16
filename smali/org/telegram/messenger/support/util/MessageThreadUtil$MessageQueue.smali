.class Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .local v0, "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeMessages(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    iget v3, v3, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .local v0, "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v3}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .local v2, "prev":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v2}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .restart local v0    # "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    .local v1, "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    iget v3, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    invoke-static {v2, v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$002(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_2

    .end local v0    # "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    .end local v2    # "prev":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "item"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .local v0, "last":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$002(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "last":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "item"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {p1, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$002(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
