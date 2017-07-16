.class Lorg/telegram/ui/Adapters/MentionsAdapter$7;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 329
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 332
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->val$query:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->val$username:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 344
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_4

    .line 345
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 347
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 348
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 349
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$7$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter$7;)V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1302(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    goto :goto_0
.end method
