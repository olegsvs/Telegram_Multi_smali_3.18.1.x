.class public Lorg/telegram/ui/Components/LinkPath;
.super Landroid/graphics/Path;
.source "LinkPath.java"


# instance fields
.field private currentLayout:Landroid/text/StaticLayout;

.field private currentLine:I

.field private heightOffset:F

.field private lastTop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->heightOffset:F

    add-float/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->heightOffset:F

    add-float/2addr p4, v0

    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput p2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    iget v1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    iget v1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v6

    cmpl-float v0, p1, v7

    if-ltz v0, :cond_2

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iput p2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    goto :goto_0

    :cond_2
    cmpl-float v0, p3, v7

    if-lez v0, :cond_3

    move p3, v7

    :cond_3
    cmpg-float v0, p1, v6

    if-gez v0, :cond_4

    move p1, v6

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v0

    :goto_2
    sub-float v4, p4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setCurrentLayout(Landroid/text/StaticLayout;IF)V
    .locals 1
    .param p1, "layout"    # Landroid/text/StaticLayout;
    .param p2, "start"    # I
    .param p3, "yOffset"    # F

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    iput p3, p0, Lorg/telegram/ui/Components/LinkPath;->heightOffset:F

    return-void
.end method
