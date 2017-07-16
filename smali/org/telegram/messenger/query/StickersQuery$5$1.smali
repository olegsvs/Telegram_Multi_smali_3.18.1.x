.class Lorg/telegram/messenger/query/StickersQuery$5$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$5;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$5;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$5;

    .prologue
    .line 316
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget-boolean v0, v0, Lorg/telegram/messenger/query/StickersQuery$5;->val$gif:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 321
    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->access$102(Z)Z

    .line 322
    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->access$202(Z)Z

    .line 328
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget-boolean v3, v3, Lorg/telegram/messenger/query/StickersQuery$5;->val$gif:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget-boolean v1, v1, Lorg/telegram/messenger/query/StickersQuery$5;->val$gif:Z

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 330
    return-void

    .line 324
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$300()[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->val$arrayList:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    .line 325
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$400()[Z

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    aput-boolean v4, v0, v1

    .line 326
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$500()[Z

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$5$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$5;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    aput-boolean v5, v0, v1

    goto :goto_0
.end method
