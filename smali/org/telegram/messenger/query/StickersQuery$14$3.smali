.class Lorg/telegram/messenger/query/StickersQuery$14$3;
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
    .line 641
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$14$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$14$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$14;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1602(I)I

    .line 645
    return-void
.end method
