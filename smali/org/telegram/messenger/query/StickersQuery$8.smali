.class final Lorg/telegram/messenger/query/StickersQuery$8;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 383
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$date:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 387
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    .line 388
    .local v3, "database":Lorg/telegram/SQLite/SQLiteDatabase;
    iget-boolean v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    if-eqz v8, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v6, v8, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 389
    .local v6, "maxCount":I
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 390
    const-string/jumbo v8, "REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v3, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 391
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 392
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 393
    if-ne v0, v6, :cond_2

    .line 415
    :cond_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 416
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 417
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v6, :cond_8

    .line 418
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 419
    move v0, v6

    :goto_2
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    .line 420
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DELETE FROM web_recent_v3 WHERE id = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 388
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v6    # "maxCount":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v6, v8, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    goto :goto_0

    .line 396
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v6    # "maxCount":I
    .restart local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 397
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 398
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 399
    const/4 v9, 0x2

    iget-boolean v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    :goto_3
    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 400
    const/4 v8, 0x3

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 401
    const/4 v8, 0x4

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 402
    const/4 v8, 0x5

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 403
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 404
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 405
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 406
    const/16 v9, 0x9

    iget v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$date:I

    if-eqz v8, :cond_6

    iget v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$date:I

    :goto_4
    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 407
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$Document;->getObjectSize()I

    move-result v8

    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 408
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v4, v2}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 409
    const/16 v8, 0xa

    invoke-virtual {v7, v8, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 410
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 411
    if-eqz v2, :cond_3

    .line 412
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 392
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 399
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_4
    iget v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    if-nez v8, :cond_5

    const/4 v8, 0x3

    goto :goto_3

    :cond_5
    const/4 v8, 0x4

    goto :goto_3

    .line 406
    :cond_6
    sub-int v8, v1, v0

    goto :goto_4

    .line 422
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_7
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v6    # "maxCount":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_8
    :goto_5
    return-void

    .line 424
    :catch_0
    move-exception v5

    .line 425
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
