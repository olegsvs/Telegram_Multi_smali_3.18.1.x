.class public Lorg/telegram/ui/Components/ColorSelectorView;
.super Landroid/widget/LinearLayout;
.source "ColorSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;,
        Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;
    }
.end annotation


# static fields
.field private static final HEX_TAG:Ljava/lang/String; = "HEX"

.field private static final HSV_TAG:Ljava/lang/String; = "HSV"

.field private static final RGB_TAG:Ljava/lang/String; = "RGB"


# instance fields
.field private color:I

.field private hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

.field private hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

.field private listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

.field private maxHeight:I

.field private maxWidth:I

.field private rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

.field private tabs:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    .line 43
    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    .line 43
    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    .line 56
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/HsvSelectorView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorView;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/RgbSelectorView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorView;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/HexSelectorView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorView;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    return-object v0
.end method

.method private createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-object v1
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 85
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    .line 86
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 87
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f030000

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "contentView":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v6}, Lorg/telegram/ui/Components/ColorSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v6, Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/HsvSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    .line 94
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/HsvSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    new-instance v7, Lorg/telegram/ui/Components/ColorSelectorView$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ColorSelectorView$1;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    .line 97
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/HsvSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;)V

    .line 103
    new-instance v6, Lorg/telegram/ui/Components/RgbSelectorView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RgbSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    .line 104
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RgbSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    new-instance v7, Lorg/telegram/ui/Components/ColorSelectorView$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ColorSelectorView$2;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    .line 107
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RgbSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;)V

    .line 113
    new-instance v6, Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/HexSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    .line 114
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/HexSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    new-instance v7, Lorg/telegram/ui/Components/ColorSelectorView$3;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ColorSelectorView$3;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    .line 117
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/HexSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;)V

    .line 125
    const v6, 0x7f0c0011

    .line 126
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    .line 129
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 130
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    .line 134
    .local v1, "factory":Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    const-string/jumbo v7, "HSV"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "HSV"

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Components/ColorSelectorView;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 135
    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 138
    .local v3, "hsvTab":Landroid/widget/TabHost$TabSpec;
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    const-string/jumbo v7, "RGB"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "RGB"

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Components/ColorSelectorView;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 139
    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 143
    .local v5, "rgbTab":Landroid/widget/TabHost$TabSpec;
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    const-string/jumbo v7, "HEX"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "HEX"

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Components/ColorSelectorView;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 144
    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 145
    .local v2, "hexTab":Landroid/widget/TabHost$TabSpec;
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 146
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v6, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 147
    iget-object v6, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v6, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 148
    return-void
.end method

.method private onColorChanged()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;->colorChanged(I)V

    .line 179
    :cond_0
    return-void
.end method

.method private setColor(ILandroid/view/View;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "sender"    # Landroid/view/View;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->color:I

    if-ne v0, p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->color:I

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    if-eq p2, v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HsvSelectorView;->setColor(I)V

    .line 73
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    if-eq p2, v0, :cond_2

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RgbSelectorView;->setColor(I)V

    .line 75
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    if-eq p2, v0, :cond_3

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HexSelectorView;->setColor(I)V

    .line 77
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->onColorChanged()V

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->color:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 194
    const-string/jumbo v0, "HSV"

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    .line 199
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView;->setMeasuredDimension(II)V

    .line 200
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(ILandroid/view/View;)V

    .line 61
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "d"    # Landroid/app/Dialog;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HexSelectorView;->setDialog(Landroid/app/Dialog;)V

    .line 65
    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    .line 184
    return-void
.end method
