.class public Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
.super Landroid/widget/FrameLayout;
.source "TextInfoPrivacyCell.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v7, v1, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1

    :goto_1
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void

    :cond_0
    move v0, v5

    .line 41
    goto :goto_0

    :cond_1
    move v2, v5

    .line 44
    goto :goto_1
.end method

.method private setTheme()V
    .locals 4

    .prologue
    .line 67
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    .line 68
    .local v1, "summaryColor":I
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefShadowColor:I

    .line 69
    .local v0, "shadowColor":I
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "tag":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "Profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    .line 79
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    return-void

    .line 69
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0

    .line 73
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_1
    const v3, -0xf0f10

    if-eq v0, v3, :cond_2

    .line 74
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundColor(I)V

    goto :goto_1

    .line 76
    :cond_2
    const v3, 0x7f0200ae

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 50
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTheme()V

    .line 51
    :cond_0
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 6
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 91
    if-eqz p2, :cond_1

    .line 92
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    :goto_0
    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    return-void
.end method
