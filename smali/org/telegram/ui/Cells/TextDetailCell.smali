.class public Lorg/telegram/ui/Cells/TextDetailCell;
.super Landroid/widget/FrameLayout;
.source "TextDetailCell.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v11, 0x1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    iget-object v10, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    move v3, v9

    :goto_2
    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_3
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/TextDetailCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 51
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v0, v7

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v10, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    move v2, v7

    :goto_5
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    move v3, v9

    :goto_6
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_7
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/TextDetailCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    :goto_8
    or-int/lit8 v4, v7, 0x10

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    move v5, v6

    :goto_9
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_a

    move v7, v9

    :goto_a
    move v8, v6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void

    :cond_0
    move v0, v8

    .line 42
    goto/16 :goto_0

    :cond_1
    move v2, v8

    .line 43
    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_2

    :cond_3
    move v5, v9

    goto/16 :goto_3

    :cond_4
    move v0, v8

    .line 51
    goto :goto_4

    :cond_5
    move v2, v8

    .line 52
    goto :goto_5

    :cond_6
    const/high16 v3, 0x428e0000    # 71.0f

    goto :goto_6

    :cond_7
    move v5, v9

    goto :goto_7

    :cond_8
    move v7, v8

    .line 57
    goto :goto_8

    :cond_9
    move v5, v9

    goto :goto_9

    :cond_a
    move v7, v6

    goto :goto_a
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    return-void
.end method

.method public setIconColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 95
    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "resId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    return-void
.end method

.method public setValueColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    return-void
.end method
