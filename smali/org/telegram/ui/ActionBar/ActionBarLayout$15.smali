.class Lorg/telegram/ui/ActionBar/ActionBarLayout$15;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 1147
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$15;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$15;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2000(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$15;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2002(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1151
    return-void
.end method
