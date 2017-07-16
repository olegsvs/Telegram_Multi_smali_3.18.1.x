.class Lorg/telegram/messenger/query/StickersQuery$24$3;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$24;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$24;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$24;

    .prologue
    .line 1115
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$24$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1118
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2800()[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    aput v2, v0, v1

    .line 1119
    return-void
.end method
