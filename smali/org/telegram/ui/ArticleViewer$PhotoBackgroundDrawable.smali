.class Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoBackgroundDrawable"
.end annotation


# instance fields
.field private drawRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0
    .param p2, "color"    # I

    .prologue
    .line 4807
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 4808
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4809
    return-void
.end method

.method static synthetic access$11502(Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 4803
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4821
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4822
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4823
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4824
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4825
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    .line 4828
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 4813
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    .line 4814
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 4816
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 4817
    return-void

    .line 4814
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
