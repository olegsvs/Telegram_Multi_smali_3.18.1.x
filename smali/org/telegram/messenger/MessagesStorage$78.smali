.class Lorg/telegram/messenger/MessagesStorage$78;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5282
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$78;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$78;->val$messages:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$78;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5285
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$78;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$78;->val$messages:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$78;->val$channelId:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 5286
    return-void
.end method
