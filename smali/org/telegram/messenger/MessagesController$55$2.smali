.class Lorg/telegram/messenger/MessagesController$55$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$55;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$55;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$55;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$55;

    .prologue
    .line 3216
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3219
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4502(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 3220
    return-void
.end method
