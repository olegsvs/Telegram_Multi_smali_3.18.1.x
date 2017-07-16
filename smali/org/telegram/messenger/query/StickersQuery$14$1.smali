.class Lorg/telegram/messenger/query/StickersQuery$14$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$14;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$14;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$14;

    .prologue
    .line 599
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$14$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1102(I)I

    .line 605
    :cond_0
    invoke-static {v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V

    .line 606
    return-void
.end method
