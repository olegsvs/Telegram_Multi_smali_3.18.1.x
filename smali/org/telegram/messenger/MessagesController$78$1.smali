.class Lorg/telegram/messenger/MessagesController$78$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$78;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$78;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$78;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$78;

    .prologue
    .line 4482
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$78$1;->this$1:Lorg/telegram/messenger/MessagesController$78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4485
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$78$1;->this$1:Lorg/telegram/messenger/MessagesController$78;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$78;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$5100(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$78$1;->this$1:Lorg/telegram/messenger/MessagesController$78;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$78;->val$chat_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4486
    return-void
.end method
