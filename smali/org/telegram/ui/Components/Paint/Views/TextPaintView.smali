.class public Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "TextPaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
    }
.end annotation


# instance fields
.field private baseFontSize:I


.field private stroke:Z

.field private swatch:Lorg/telegram/ui/Components/Paint/Swatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textPaintView"    # Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .param p3, "position"    # Lorg/telegram/ui/Components/Point;

    .prologue
    iget v3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget-boolean v6, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->stroke:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # Lorg/telegram/ui/Components/Point;
    .param p3, "fontSize"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "swatch"    # Lorg/telegram/ui/Components/Paint/Swatch;
    .param p6, "stroke"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I







    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4







    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    int-to-float v1, v1





    iget v1, p5, Lorg/telegram/ui/Components/Paint/Swatch;->color:I



    const/4 v1, 0x0



    const/16 v1, 0x11





    const/high16 v1, 0x10000000







    move-result v1

    or-int/lit16 v1, v1, 0x4000



    const/16 v1, 0x33

    invoke-static {v6, v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0



    :cond_0
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    invoke-virtual {p0, p6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setStroke(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updatePosition()V


    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V


    return-void
.end method

    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .prologue

    return-object v0
.end method

.method private updateColor()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->stroke:Z

    if-eqz v0, :cond_0


    const/4 v1, -0x1



    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I




    :goto_0
    return-void

    :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I





    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x56000000


    goto :goto_0
.end method


# virtual methods
.method public beginEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1










    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1


    return-void
.end method

.method protected bridge synthetic createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;

    move-result-object v0

    return-object v0
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
    .locals 2

    .prologue
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V

    return-object v0
.end method

.method public endEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0







    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateSelectionView()V

    return-void
.end method

.method public getFocusedView()Landroid/view/View;
    .locals 1

    .prologue

    return-object v0
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "parentView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    .local v2, "scale":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float v3, v4, v5

    .local v3, "width":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float v0, v4, v5

    .local v0, "height":F
    new-instance v4, Lorg/telegram/ui/Components/Rect;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->position:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->x:F

    div-float v6, v3, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->position:Lorg/telegram/ui/Components/Point;

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    div-float v7, v0, v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    mul-float v7, v3, v2

    mul-float v8, v0, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v4
.end method

.method public getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue


    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updatePosition()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxWidth"    # I

    .prologue


    return-void
.end method

.method public setStroke(Z)V
    .locals 0
    .param p1, "stroke"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->stroke:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateColor()V

    return-void
.end method

.method public setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 0
    .param p1, "swatch"    # Lorg/telegram/ui/Components/Paint/Swatch;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateColor()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue


    return-void
.end method
