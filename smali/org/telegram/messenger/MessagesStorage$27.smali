.class Lorg/telegram/messenger/MessagesStorage$27;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getNewTask(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$oldTask:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1616
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$27;->val$oldTask:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1620
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$27;->val$oldTask:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 1621
    const-string/jumbo v6, ","

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$27;->val$oldTask:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1622
    .local v4, "ids":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "DELETE FROM enc_tasks_v2 WHERE mid IN(%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1624
    .end local v4    # "ids":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 1625
    .local v2, "date":I
    const/4 v0, 0x0

    .line 1626
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$27;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string/jumbo v7, "SELECT mid, date FROM enc_tasks_v2 WHERE date = (SELECT min(date) FROM enc_tasks_v2)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 1627
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1628
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1629
    .local v5, "mid":Ljava/lang/Integer;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    .line 1630
    if-nez v0, :cond_1

    .line 1631
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1637
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "date":I
    .end local v5    # "mid":Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 1638
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1640
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1635
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v2    # "date":I
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1636
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lorg/telegram/messenger/MessagesController;->processLoadedDeleteTask(ILjava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
