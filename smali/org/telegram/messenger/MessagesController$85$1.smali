.class Lorg/telegram/messenger/MessagesController$85$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$85;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$85;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$85;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$85;

    .prologue
    .line 4745
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$85$1;->this$1:Lorg/telegram/messenger/MessagesController$85;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4748
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$85$1;->this$1:Lorg/telegram/messenger/MessagesController$85;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$85;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 4749
    return-void
.end method
