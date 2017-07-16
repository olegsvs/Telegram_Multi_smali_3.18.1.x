.class final Lorg/telegram/messenger/query/SharedMediaQuery$9;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$max_id:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JI)V
    .locals 1

    .prologue
    .line 476
    iput-wide p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$9;->val$uid:J

    iput p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$9;->val$max_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lorg/telegram/messenger/query/SharedMediaQuery$9;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lorg/telegram/messenger/query/SharedMediaQuery$9;->val$max_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 483
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 485
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_0

    .line 486
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v4

    .line 487
    .local v4, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 488
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 489
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 490
    iget-wide v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$9;->val$uid:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 491
    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v4, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_0
    move-exception v3

    .line 497
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 499
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v5, Lorg/telegram/messenger/query/SharedMediaQuery$9$1;

    invoke-direct {v5, p0, v0}, Lorg/telegram/messenger/query/SharedMediaQuery$9$1;-><init>(Lorg/telegram/messenger/query/SharedMediaQuery$9;Ljava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 505
    return-void

    .line 495
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
