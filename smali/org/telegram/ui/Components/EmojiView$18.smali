.class Lorg/telegram/ui/Components/EmojiView$18;
.super Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field lastTranslateX:F

.field lastX:F

.field startedScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 885
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;-><init>(Landroid/content/Context;)V

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 894
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$18;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$18;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 897
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 902
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    if-eqz v5, :cond_0

    .line 903
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    .line 904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    .line 906
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTranslationX()F

    move-result v2

    .line 907
    .local v2, "newTranslationX":F
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getScrollX()I

    move-result v5

    if-nez v5, :cond_1

    cmpl-float v5, v2, v7

    if-nez v5, :cond_1

    .line 908
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-nez v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    .line 909
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 910
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    .line 911
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTranslationX()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastTranslateX:F

    .line 920
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v5, :cond_2

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    sub-float/2addr v5, v6

    add-float/2addr v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastTranslateX:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 923
    .local v0, "dx":I
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    .line 924
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastTranslateX:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    .end local v0    # "dx":I
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 937
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    .line 938
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v5, :cond_4

    .line 939
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 940
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    .line 943
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-nez v5, :cond_5

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    return v3

    .line 913
    :cond_7
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 914
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 915
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 916
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    goto :goto_0

    .line 925
    .restart local v0    # "dx":I
    :catch_0
    move-exception v1

    .line 927
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 931
    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    .line 932
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 928
    :catch_1
    move-exception v5

    goto :goto_2
.end method
