.class Lorg/telegram/messenger/MessagesStorage$83;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$check:Z

.field final synthetic val$dialogs:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 6142
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$83;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$83;->val$dialogs:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$83;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6145
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$83;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$83;->val$dialogs:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$83;->val$check:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->access$1200(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    .line 6146
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$83;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->loadUnreadMessages()V

    .line 6147
    return-void
.end method
