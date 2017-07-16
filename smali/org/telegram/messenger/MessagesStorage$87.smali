.class Lorg/telegram/messenger/MessagesStorage$87;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:[Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$user_id:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 6242
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$87;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$chat:[Lorg/telegram/tgnet/TLRPC$Chat;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$user_id:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6245
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$chat:[Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$87;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$user_id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6246
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 6247
    return-void
.end method
