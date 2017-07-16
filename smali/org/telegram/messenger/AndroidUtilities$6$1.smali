.class Lorg/telegram/messenger/AndroidUtilities$6$1;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/AndroidUtilities$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/AndroidUtilities$6;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/AndroidUtilities$6;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$6$1;->this$0:Lorg/telegram/messenger/AndroidUtilities$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x1f7

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/AndroidUtilities$6$1;->this$0:Lorg/telegram/messenger/AndroidUtilities$6;

    iget-object v4, v4, Lorg/telegram/messenger/AndroidUtilities$6;->val$pck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "in":Landroid/content/Intent;
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$6$1;->this$0:Lorg/telegram/messenger/AndroidUtilities$6;

    iget-object v2, v2, Lorg/telegram/messenger/AndroidUtilities$6;->val$context:Landroid/app/Activity;

    const/16 v3, 0x1f7

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .end local v1    # "in":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "https://play.google.com/store/apps/details?id=es.rafalense.themes"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "in":Landroid/content/Intent;
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$6$1;->this$0:Lorg/telegram/messenger/AndroidUtilities$6;

    iget-object v2, v2, Lorg/telegram/messenger/AndroidUtilities$6;->val$context:Landroid/app/Activity;

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
