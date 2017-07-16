.class public Lorg/telegram/ui/Cells/TextDetailSettingsCell;
.super Landroid/widget/FrameLayout;
.source "TextDetailSettingsCell.java"


# instance fields
.field private multiline:Z

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v10, 0x1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 43
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_1
    or-int/lit8 v2, v2, 0x30

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v6, 0x0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    move v0, v7

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    :goto_3
    or-int/lit8 v2, v7, 0x30

    const/high16 v4, 0x420c0000    # 35.0f

    const/4 v6, 0x0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void

    :cond_0
    move v0, v8

    .line 43
    goto :goto_0

    :cond_1
    move v2, v8

    .line 44
    goto :goto_1

    :cond_2
    move v0, v8

    .line 49
    goto :goto_2

    :cond_3
    move v7, v8

    .line 54
    goto :goto_3
.end method

.method private setTheme()V
    .locals 2

    .prologue
    .line 114
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->multiline:Z

    if-nez v1, :cond_2

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->needDivider:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 64
    :goto_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTheme()V

    .line 65
    :cond_1
    return-void

    .line 62
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 108
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    return-void
.end method

.method public setMultilineDetail(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->multiline:Z

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setMultilineText(Z)V
    .locals 8
    .param p1, "value"    # Z

    .prologue
    const/high16 v3, 0x41880000    # 17.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->multiline:Z

    .line 84
    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->removeView(Landroid/view/View;)V

    .line 90
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x50

    const/4 v4, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :goto_1
    return-void

    .line 90
    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setSummaryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "divider"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->needDivider:Z

    .line 127
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setWillNotDraw(Z)V

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    return-void
.end method
