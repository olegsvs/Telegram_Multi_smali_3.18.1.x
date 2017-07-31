.class final Lorg/telegram/messenger/MessagesController$115;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->addToCustomChats(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chatId:I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(ILjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 8168
    iput p1, p0, Lorg/telegram/messenger/MessagesController$115;->val$chatId:I

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$115;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8171
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/MessagesController$115;->val$chatId:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 8172
    .local v0, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$115;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8173
    return-void
.end method
