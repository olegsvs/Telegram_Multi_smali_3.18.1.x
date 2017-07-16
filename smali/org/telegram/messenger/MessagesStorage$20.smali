.class Lorg/telegram/messenger/MessagesStorage$20;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1298
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$replace:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1302
    :try_start_0
    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$replace:Z

    if-eqz v3, :cond_0

    .line 1303
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "DELETE FROM blocked_users WHERE 1"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1305
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1306
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "REPLACE INTO blocked_users VALUES(?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 1307
    .local v2, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1308
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1309
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1310
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1317
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1312
    .restart local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1313
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
