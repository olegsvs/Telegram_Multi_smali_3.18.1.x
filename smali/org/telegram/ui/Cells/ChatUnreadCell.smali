.class public Lorg/telegram/ui/Cells/ChatUnreadCell;
.super Landroid/widget/FrameLayout;
.source "ChatUnreadCell.java"


# instance fields
.field private backgroundLayout:Landroid/widget/FrameLayout;

.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v12, -0x2

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 36
    .local v8, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "chatDateBubbleColor"

    invoke-interface {v8, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 38
    .local v7, "bgColor":I
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    .line 39
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0201ec

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 40
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .end local v7    # "bgColor":I
    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 42
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41d80000    # 27.0f

    const/16 v2, 0x33

    const/high16 v4, 0x40e00000    # 7.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "chat_unreadMessagesStartArrowIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v11, v1, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x15

    const/high16 v5, 0x41200000    # 10.0f

    move v0, v12

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v11, v11, v11, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "chatDateColor"

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-static {v12, v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatUnreadCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void

    .line 40
    .restart local v7    # "bgColor":I
    :cond_0
    const-string/jumbo v4, "chat_unreadMessagesStartBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 58
    .end local v7    # "bgColor":I
    :cond_1
    const-string/jumbo v0, "chat_unreadMessagesStartText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
