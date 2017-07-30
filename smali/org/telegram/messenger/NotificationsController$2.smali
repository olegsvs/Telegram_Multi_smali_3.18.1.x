.class Lorg/telegram/messenger/NotificationsController$2;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/NotificationsController;->access$302(Lorg/telegram/messenger/NotificationsController;J)J

    .line 151
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 152
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$502(Lorg/telegram/messenger/NotificationsController;I)I

    .line 153
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 155
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$900(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 157
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 159
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$1102(Lorg/telegram/messenger/NotificationsController;I)I

    .line 161
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$1200(Lorg/telegram/messenger/NotificationsController;I)V

    .line 168
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 170
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void

    .line 164
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
