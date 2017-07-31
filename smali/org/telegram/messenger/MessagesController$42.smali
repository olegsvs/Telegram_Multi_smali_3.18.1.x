.class Lorg/telegram/messenger/MessagesController$42;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$byChannelUsers:Z

.field final synthetic val$fromCache:Z

.field final synthetic val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field final synthetic val$pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$usersArr:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2309
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$42;->val$usersArr:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesController$42;->val$fromCache:Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$42;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$42;->val$byChannelUsers:Z

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$42;->val$pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2312
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$42;->val$usersArr:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesController$42;->val$fromCache:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2313
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$42;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$42;->val$byChannelUsers:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$42;->val$pinnedMessageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2314
    return-void
.end method
