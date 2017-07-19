.class Lorg/telegram/ui/ChangeUserActivity$2;
.super Ljava/lang/Object;
.source "ChangeUserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUserActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUserActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/ChangeUserActivity$2;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$2;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$2;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    new-instance v1, Lorg/telegram/ui/ChangeUserActivity$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUserActivity$2$1;-><init>(Lorg/telegram/ui/ChangeUserActivity$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChangeUserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
