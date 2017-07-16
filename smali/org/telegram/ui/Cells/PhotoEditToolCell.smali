.class public Lorg/telegram/ui/Cells/PhotoEditToolCell;
.super Landroid/widget/FrameLayout;
.source "PhotoEditToolCell.java"


# instance fields
.field private iconImage:Landroid/widget/ImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I

    .prologue
    const/4 v10, -0x2

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput p2, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->width:I

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->iconImage:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->iconImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->iconImage:Landroid/widget/ImageView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x31

    const/high16 v6, 0x41400000    # 12.0f

    move v4, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/16 v2, 0x51

    move v0, v10

    move v1, v9

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const v1, -0x933c01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const/16 v6, 0x33

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x40400000    # 3.0f

    move v4, v10

    move v5, v9

    move v9, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 59
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 60
    return-void
.end method

.method public setIconAndTextAndValue(ILjava/lang/String;F)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    cmpl-float v0, p3, v2

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIconAndTextAndValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
