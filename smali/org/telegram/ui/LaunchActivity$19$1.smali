.class Lorg/telegram/ui/LaunchActivity$19$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$19;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$19;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$19;

    .prologue
    .line 2414
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$19$1;->this$1:Lorg/telegram/ui/LaunchActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$19$1;->this$1:Lorg/telegram/ui/LaunchActivity$19;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$1800(Lorg/telegram/ui/LaunchActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19$1;->this$1:Lorg/telegram/ui/LaunchActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/LaunchActivity;->access$2002(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2423
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19$1;->this$1:Lorg/telegram/ui/LaunchActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/LaunchActivity;->access$2102(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2424
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19$1;->this$1:Lorg/telegram/ui/LaunchActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$2202(Lorg/telegram/ui/LaunchActivity;I)I

    .line 2426
    :cond_0
    return-void
.end method
