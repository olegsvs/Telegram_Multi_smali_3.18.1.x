.class Lorg/telegram/messenger/ContactsController$2$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$2;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$2;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$2;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$2$1;->this$1:Lorg/telegram/messenger/ContactsController$2;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$2$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$2$1;->this$1:Lorg/telegram/messenger/ContactsController$2;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$2;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ContactsController;->access$102(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 198
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "invitetext"

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$2$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;->message:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string/jumbo v2, "invitetexttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method
