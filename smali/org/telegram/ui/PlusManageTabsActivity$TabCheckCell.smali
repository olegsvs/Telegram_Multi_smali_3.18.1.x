.class public Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;
.super Landroid/widget/FrameLayout;
.source "PlusManageTabsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusManageTabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCheckCell"
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private dRight:Landroid/graphics/drawable/Drawable;

.field private needDivider:Z

.field private show:Z

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/PlusManageTabsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PlusManageTabsActivity;Landroid/content/Context;)V
    .locals 12
    .param p1, "this$0"    # Lorg/telegram/ui/PlusManageTabsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v11, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput-object p1, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v10, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->show:Z

    iput-boolean v9, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->needDivider:Z

    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->dRight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->dRight:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->dRight:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v8, v2, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->dRight:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v5, 0x42580000    # 54.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {v0, p2, v10}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/CheckBoxSquare;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/CheckBoxSquare;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/CheckBoxSquare;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v1, 0x19

    const/high16 v2, 0x41c80000    # 25.0f

    const/16 v3, 0x15

    const/high16 v5, 0x40a00000    # 5.0f

    move v6, v11

    move v7, v4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method public setIconColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->show:Z

    if-eqz v5, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->dRight:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;I)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->show:Z

    if-eqz v5, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->dRight:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
