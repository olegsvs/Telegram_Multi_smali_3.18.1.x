.class public Lorg/telegram/ui/Cells/ShadowSectionCell;
.super Landroid/view/View;
.source "ShadowSectionCell.java"


# instance fields
.field bTheme:Z

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 25
    const v0, 0x7f0200ae

    const-string/jumbo v1, "windowBackgroundGrayShadow"

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bTheme:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 38
    const v0, 0x7f0200ae

    const-string/jumbo v1, "windowBackgroundGrayShadow"

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bTheme:Z

    .line 40
    return-void
.end method

.method private setTheme()V
    .locals 2

    .prologue
    .line 49
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefShadowColor:I

    const v1, -0xf0f10

    if-ne v0, v1, :cond_0

    .line 50
    const v0, 0x7f0200ae

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundResource(I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefShadowColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 45
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setTheme()V

    .line 46
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    .line 34
    return-void
.end method
