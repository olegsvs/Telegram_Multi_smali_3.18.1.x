.class Lorg/telegram/messenger/MessagesStorage$23$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$23;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$23;Lorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$23;

    .prologue
    .line 1546
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1549
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$23;->val$did:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$23;->val$offset:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$23;->val$count:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$23;->val$max_id:J

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$23;->val$classGuid:I

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V

    .line 1550
    return-void
.end method
