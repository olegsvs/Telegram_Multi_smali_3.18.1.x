.class public Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
.super Landroid/widget/FrameLayout;
.source "FeaturedStickerSetCell.java"


# instance fields
.field private addButton:Landroid/widget/TextView;

.field private angle:I

.field private checkImage:Landroid/widget/ImageView;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private drawProgress:Z

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isInstalled:Z

.field private lastUpdateTime:J

.field private needDivider:Z

.field private progressAlpha:F

.field private progressPaint:Landroid/graphics/Paint;

.field private progressRect:Landroid/graphics/RectF;

.field private rect:Landroid/graphics/Rect;

.field private stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x41600000    # 14.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "featuredStickers_buttonProgress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x42c80000    # 100.0f

    :goto_2
    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_3
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v0, v7

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    move v2, v7

    :goto_5
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x42c80000    # 100.0f

    :goto_6
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_7
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    iget-object v10, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    move v2, v7

    :goto_8
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_9
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    const/high16 v5, 0x41400000    # 12.0f

    :goto_a
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "featuredStickers_buttonText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const-string/jumbo v2, "featuredStickers_addButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "featuredStickers_addButtonPressed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "Add"

    const v2, 0x7f070044

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, 0x41e00000    # 28.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    :goto_b
    or-int/lit8 v2, v8, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_c

    move v3, v9

    :goto_c
    const/high16 v4, 0x41900000    # 18.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_d

    move v5, v6

    :goto_d
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "featuredStickers_addedIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const/16 v1, 0x13

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v0, v8

    goto/16 :goto_0

    :cond_1
    move v2, v8

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_2

    :cond_3
    const/high16 v5, 0x42c80000    # 100.0f

    goto/16 :goto_3

    :cond_4
    move v0, v8

    goto/16 :goto_4

    :cond_5
    move v2, v8

    goto/16 :goto_5

    :cond_6
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_6

    :cond_7
    const/high16 v5, 0x42c80000    # 100.0f

    goto/16 :goto_7

    :cond_8
    move v2, v8

    goto/16 :goto_8

    :cond_9
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_9

    :cond_a
    move v5, v6

    goto/16 :goto_a

    :cond_b
    move v8, v7

    goto :goto_b

    :cond_c
    move v3, v6

    goto :goto_c

    :cond_d
    move v5, v9

    goto :goto_d
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->drawProgress:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-wide v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->isInstalled:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->wasLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .local v0, "l":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .local v1, "t":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->wasLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDrawProgress(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->drawProgress:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZ)V
    .locals 12
    .param p1, "set"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .param p2, "divider"    # Z
    .param p3, "unread"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-ne p1, v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->wasLayout:Z

    if-eqz v3, :cond_3

    move v1, v4

    .local v1, "sameSet":Z
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->needDivider:Z

    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->needDivider:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setWillNotDraw(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v6, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_7

    new-instance v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$2;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)V

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    move-object v3, v6

    :goto_2
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_6

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v7, v3, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "Stickers"

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v8, "webp"

    invoke-virtual {v3, v7, v6, v8, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_5
    if-eqz v1, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->isInstalled:Z

    .local v2, "wasInstalled":Z
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->isInstalled:Z

    if-eqz v3, :cond_9

    if-nez v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v5, "scaleY"

    new-array v7, v10, [F

    fill-array-data v7, :array_2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v10

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_3

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    fill-array-data v8, :array_4

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v10, [F

    fill-array-data v8, :array_5

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$3;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .end local v2    # "wasInstalled":Z
    :cond_2
    :goto_6
    return-void

    .end local v1    # "sameSet":Z
    :cond_3
    move v1, v5

    goto/16 :goto_0

    .restart local v1    # "sameSet":Z
    :cond_4
    move v3, v5

    goto/16 :goto_1

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v3, v0

    goto/16 :goto_2

    :cond_6
    move-object v0, v6

    goto/16 :goto_3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    :cond_8
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v8, "webp"

    invoke-virtual {v7, v3, v6, v8, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .restart local v2    # "wasInstalled":Z
    :cond_9
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_6

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    fill-array-data v8, :array_7

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const-string/jumbo v5, "scaleY"

    new-array v7, v10, [F

    fill-array-data v7, :array_8

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v10

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_9

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    fill-array-data v8, :array_a

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v10, [F

    fill-array-data v8, :array_b

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .end local v2    # "wasInstalled":Z
    :cond_a
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->isInstalled:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_6

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method
