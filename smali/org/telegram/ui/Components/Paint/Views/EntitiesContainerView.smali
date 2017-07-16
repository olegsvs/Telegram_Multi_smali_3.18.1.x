.class public Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;
.super Landroid/widget/FrameLayout;
.source "EntitiesContainerView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

.field private gestureDetector:Landroid/view/ScaleGestureDetector;

.field private hasTransformed:Z

.field private previousAngle:F

.field private previousScale:F

.field private rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entitiesContainerViewDelegate"    # Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->gestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;-><init>(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    return-void
.end method


# virtual methods
.method public bringViewToFront(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2
    .param p1, "view"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public entitiesCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->shouldReceiveTouches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotation(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 4
    .param p1, "rotationDetector"    # Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .prologue
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    .local v2, "view":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->getAngle()F

    move-result v0

    .local v0, "angle":F
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    sub-float v1, v3, v0

    .local v1, "delta":F
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getRotation()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    return-void
.end method

.method public onRotationBegin(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 1
    .param p1, "rotationDetector"    # Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .prologue
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->getStartAngle()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    return-void
.end method

.method public onRotationEnd(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 0
    .param p1, "rotationDetector"    # Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .prologue
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .local v1, "sf":F
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    div-float v0, v1, v3

    .local v0, "newScale":F
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    .local v2, "view":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    const/4 v3, 0x0

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v1

    .local v1, "selectedEntity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    if-nez v0, :cond_3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    .end local v0    # "action":I
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->gestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    goto :goto_0

    .restart local v0    # "action":I
    :cond_3
    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onEntityDeselect()V

    goto :goto_0
.end method
