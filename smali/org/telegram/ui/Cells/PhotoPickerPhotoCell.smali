.class public Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerPhotoCell.java"


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field public checkBox:Lorg/telegram/ui/Components/CheckBox;

.field public checkFrame:Landroid/widget/FrameLayout;

.field public itemWidth:I

.field public photoImage:Lorg/telegram/ui/Components/BackupImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x2a

    const/16 v0, 0x1e

    const/4 v5, -0x1

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 37
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    .line 40
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x35

    invoke-static {v6, v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v1, Lorg/telegram/ui/Components/CheckBox;

    const v2, 0x7f020057

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 43
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 44
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 45
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 46
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const v2, -0xc33511

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 47
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x41f00000    # 30.0f

    const/16 v2, 0x35

    move v5, v4

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 52
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->itemWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->itemWidth:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 53
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 10
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    const v0, -0xf5f5f6

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f59999a    # 0.85f

    .line 56
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 57
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 59
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 61
    :cond_0
    if-eqz p2, :cond_4

    .line 62
    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setBackgroundColor(I)V

    .line 65
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 66
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v5, v0, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v9, [F

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    aput v0, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v9, [F

    if-eqz p1, :cond_3

    :goto_1
    aput v1, v7, v3

    .line 67
    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v9

    .line 66
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 93
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 66
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 89
    :cond_4
    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setBackgroundColor(I)V

    .line 90
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    goto :goto_2

    :cond_5
    move v0, v3

    .line 89
    goto :goto_3

    :cond_6
    move v0, v2

    .line 90
    goto :goto_4

    :cond_7
    move v1, v2

    .line 91
    goto :goto_5
.end method
