.class public Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
.super Landroid/widget/FrameLayout;
.source "PhotoAttachPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;
    }
.end annotation


# static fields
.field private static rect:Landroid/graphics/Rect;


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkFrame:Landroid/widget/FrameLayout;

.field private delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isLast:Z

.field private photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field private pressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x33

    const/16 v10, 0x1e

    const/4 v4, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x50

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    .line 51
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    const/16 v0, 0x2a

    const/high16 v1, 0x42280000    # 42.0f

    const/high16 v3, 0x42180000    # 38.0f

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020057

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const v1, -0xc33511

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v8, 0x42380000    # 46.0f

    const/high16 v9, 0x40800000    # 4.0f

    move v5, v10

    move v7, v2

    move v10, v4

    move v11, v4

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 66
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    sget-object v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 117
    sget-object v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    .line 120
    const/4 v0, 0x1

    .line 139
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 143
    :cond_1
    return v0

    .line 122
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 125
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 126
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->playSoundEffect(I)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    invoke-interface {v1, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;->onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 130
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 133
    sget-object v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    goto :goto_0
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 101
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    .line 109
    return-void
.end method

.method public setOnCheckClickLisnener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onCheckClickLisnener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .locals 8
    .param p1, "entry"    # Lorg/telegram/messenger/MediaController$PhotoEntry;
    .param p2, "last"    # Z

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0201f0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 84
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v0

    .line 94
    .local v0, "showing":Z
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    :cond_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->requestLayout()V

    .line 97
    return-void

    .line 87
    .end local v0    # "showing":Z
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0

    .restart local v0    # "showing":Z
    :cond_3
    move v1, v3

    .line 94
    goto :goto_1
.end method
