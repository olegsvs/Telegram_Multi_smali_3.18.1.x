.class public Lorg/telegram/ui/Components/HsvSelectorView;
.super Landroid/widget/LinearLayout;
.source "HsvSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

.field private color:I

.field private hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

.field private hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

.field private listener:Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvSelectorView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvSelectorView;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HsvSelectorView;Z)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/HsvSelectorView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HsvSelectorView;->getCurrentColor(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HsvSelectorView;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/HsvSelectorView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/HsvSelectorView;->internalSetColor(IZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/HsvSelectorView;)Lorg/telegram/ui/Components/HsvAlphaSelectorView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/HsvSelectorView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/HsvSelectorView;)Lorg/telegram/ui/Components/HsvColorValueView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/HsvSelectorView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    return-object v0
.end method

.method private buildUI()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 55
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "hsvView":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const v2, 0x7f0c0019

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    iput-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    .line 62
    const v2, 0x7f0c001a

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/HsvColorValueView;

    iput-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    .line 64
    const v2, 0x7f0c001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/HsvHueSelectorView;

    iput-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    .line 66
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    new-instance v3, Lorg/telegram/ui/Components/HsvSelectorView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HsvSelectorView$1;-><init>(Lorg/telegram/ui/Components/HsvSelectorView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setOnAlphaChangedListener(Lorg/telegram/ui/Components/HsvAlphaSelectorView$OnAlphaChangedListener;)V

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    new-instance v3, Lorg/telegram/ui/Components/HsvSelectorView$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HsvSelectorView$2;-><init>(Lorg/telegram/ui/Components/HsvSelectorView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HsvColorValueView;->setOnSaturationOrValueChanged(Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;)V

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    new-instance v3, Lorg/telegram/ui/Components/HsvSelectorView$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HsvSelectorView$3;-><init>(Lorg/telegram/ui/Components/HsvSelectorView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setOnHueChangedListener(Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;)V

    .line 90
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->setColor(I)V

    .line 91
    return-void
.end method

.method private getCurrentColor(Z)I
    .locals 4
    .param p1, "includeAlpha"    # Z

    .prologue
    .line 95
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 96
    .local v1, "hsv":[F
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getHue()F

    move-result v3

    aput v3, v1, v2

    .line 97
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HsvColorValueView;->getSaturation()F

    move-result v3

    aput v3, v1, v2

    .line 98
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HsvColorValueView;->getValue()F

    move-result v3

    aput v3, v1, v2

    .line 99
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->getAlpha()F

    move-result v2

    float-to-int v0, v2

    .line 100
    .local v0, "alpha":I
    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    return v2

    .line 99
    .end local v0    # "alpha":I
    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvSelectorView;->buildUI()V

    .line 50
    return-void
.end method

.method private internalSetColor(IZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "fire"    # Z

    .prologue
    .line 128
    iput p1, p0, Lorg/telegram/ui/Components/HsvSelectorView;->color:I

    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvSelectorView;->onColorChanged()V

    .line 131
    :cond_0
    return-void
.end method

.method private onColorChanged()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView;->listener:Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView;->listener:Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;

    iget v1, p0, Lorg/telegram/ui/Components/HsvSelectorView;->color:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;->colorChanged(I)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/telegram/ui/Components/HsvSelectorView;->color:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .local v0, "paramsAlpha":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .local v1, "paramsHue":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HsvColorValueView;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HsvColorValueView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 112
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setMinContentOffset(I)V

    .line 113
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setMinContentOffset(I)V

    .line 115
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 119
    return-void
.end method

.method public setColor(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 136
    .local v0, "alpha":I
    iget-object v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setAlpha(I)V

    .line 137
    const/high16 v5, -0x1000000

    or-int v1, p1, v5

    .line 138
    .local v1, "colorWithoutAlpha":I
    const/4 v5, 0x3

    new-array v2, v5, [F

    .line 139
    .local v2, "hsv":[F
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hueSelector:Lorg/telegram/ui/Components/HsvHueSelectorView;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setHue(F)V

    .line 141
    iget-object v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/HsvColorValueView;->setHue(F)V

    .line 142
    iget-object v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/HsvColorValueView;->setSaturation(F)V

    .line 143
    iget-object v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;

    const/4 v6, 0x2

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/HsvColorValueView;->setValue(F)V

    .line 144
    iget-object v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setColor(I)V

    .line 145
    iget v5, p0, Lorg/telegram/ui/Components/HsvSelectorView;->color:I

    if-eq v5, p1, :cond_0

    :goto_0
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/HsvSelectorView;->internalSetColor(IZ)V

    .line 146
    return-void

    :cond_0
    move v3, v4

    .line 145
    goto :goto_0
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/HsvSelectorView;->listener:Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;

    .line 157
    return-void
.end method
