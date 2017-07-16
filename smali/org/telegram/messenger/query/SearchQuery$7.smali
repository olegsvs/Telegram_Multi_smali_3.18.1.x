.class final Lorg/telegram/messenger/query/SearchQuery$7;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$did:J

.field final synthetic val$lower_id:I


# direct methods
.method constructor <init>(JI)V
    .locals 1

    .prologue
    .line 506
    iput-wide p1, p0, Lorg/telegram/messenger/query/SearchQuery$7;->val$did:J

    iput p3, p0, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 509
    const-wide/16 v4, 0x0

    .line 511
    .local v4, "dt":D
    const/4 v9, 0x0

    .line 512
    .local v9, "lastTime":I
    const/4 v8, 0x0

    .line 513
    .local v8, "lastMid":I
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v12, "SELECT MAX(mid), MAX(date) FROM messages WHERE uid = %d AND out = 1"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SearchQuery$7;->val$did:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 514
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 515
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 516
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 518
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 519
    if-lez v8, :cond_2

    .line 520
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v12, "SELECT date FROM messages WHERE uid = %d AND mid < %d AND out = 1 ORDER BY date DESC"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SearchQuery$7;->val$did:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 522
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    sub-int v10, v9, v10

    int-to-double v4, v10

    .line 524
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_0
    move-wide v6, v4

    .line 530
    .local v6, "dtFinal":D
    new-instance v10, Lorg/telegram/messenger/query/SearchQuery$7$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v7}, Lorg/telegram/messenger/query/SearchQuery$7$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$7;D)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 570
    return-void

    .line 526
    .end local v6    # "dtFinal":D
    :catch_0
    move-exception v3

    .line 527
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
