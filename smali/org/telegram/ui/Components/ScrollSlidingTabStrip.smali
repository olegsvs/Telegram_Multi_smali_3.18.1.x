.class public Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

.field private dividerPadding:I

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private tabCount:I

.field private tabPadding:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x42500000    # 52.0f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 50
    const v0, -0x99999a

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    .line 51
    const/high16 v0, 0x1a000000

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 54
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    .line 55
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    .line 56
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dividerPadding:I

    .line 57
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabPadding:I

    .line 59
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 64
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setFillViewport(Z)V

    .line 65
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setWillNotDraw(Z)V

    .line 67
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setHorizontalScrollBarEnabled(Z)V

    .line 68
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-object v0
.end method

.method private scrollToChild(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 187
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 191
    .local v1, "newScrollX":I
    if-lez p1, :cond_2

    .line 192
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v1, v2

    .line 194
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getScrollX()I

    move-result v0

    .line 195
    .local v0, "currentScrollX":I
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    if-eq v1, v2, :cond_0

    .line 196
    if-ge v1, v0, :cond_3

    .line 197
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 198
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->smoothScrollTo(II)V

    goto :goto_0

    .line 199
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 201
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->smoothScrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public addIconTab(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    .line 136
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 137
    .local v0, "position":I
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "tab":Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 140
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addIconTabWithCounter(Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, -0x1

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 103
    iget v8, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 104
    .local v8, "position":I
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v9, "tab":Landroid/widget/FrameLayout;
    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v7, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;

    invoke-direct {v0, p0, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v8, v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 121
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v10, "textView":Landroid/widget/TextView;
    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v10, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    const/16 v0, 0x11

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    const v0, 0x7f020253

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 129
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    const/4 v0, -0x2

    const/16 v2, 0x33

    const/high16 v3, 0x41d00000    # 26.0f

    const/high16 v4, 0x40c00000    # 6.0f

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-object v10

    .line 119
    .end local v10    # "textView":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 160
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 161
    .local v1, "position":I
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v2, "tab":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 163
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 171
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    if-eqz p1, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "webp"

    invoke-virtual {v0, v3, v7, v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 176
    const/16 v3, 0x11

    invoke-static {v6, v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void

    .line 170
    .end local v0    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getHeight()I

    move-result v9

    .line 221
    .local v9, "height":I
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    sub-int v0, v9, v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 225
    .local v8, "currentTab":Landroid/view/View;
    const/4 v3, 0x0

    .line 226
    .local v3, "lineLeft":F
    const/4 v5, 0x0

    .line 227
    .local v5, "lineRight":F
    if-eqz v8, :cond_2

    .line 228
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    .line 229
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v5, v0

    .line 232
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    if-nez v0, :cond_3

    .line 234
    int-to-float v6, v9

    iget-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 236
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    sub-int v0, v9, v0

    int-to-float v4, v0

    int-to-float v6, v9

    iget-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrolled(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "first"    # I

    .prologue
    const/4 v2, 0x1

    .line 245
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 253
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 255
    :cond_3
    if-ne p2, p1, :cond_4

    if-le p1, v2, :cond_4

    .line 256
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    .line 260
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    goto :goto_0

    .line 258
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    goto :goto_3
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 209
    return-void
.end method

.method public removeTabs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 87
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    .line 88
    return-void
.end method

.method public selectTab(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 91
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-lt p1, v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "tab":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V
    .locals 0
    .param p1, "scrollSlidingTabStripDelegate"    # Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    .line 82
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 269
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    .line 270
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 271
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 264
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    .line 265
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 266
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 274
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 276
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 280
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 281
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 284
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    .line 285
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 286
    return-void
.end method

.method public updateTabStyles()V
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-ge v0, v2, :cond_0

    .line 181
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
