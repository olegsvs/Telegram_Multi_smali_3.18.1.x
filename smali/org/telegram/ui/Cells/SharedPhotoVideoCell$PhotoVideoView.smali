.class Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;
.super Landroid/widget/FrameLayout;
.source "SharedPhotoVideoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoVideoView"
.end annotation


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private container:Landroid/widget/FrameLayout;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private selector:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

.field private videoInfoContainer:Landroid/widget/LinearLayout;

.field private videoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x10

    const/4 v6, 0x1

    const/4 v0, -0x2

    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 63
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    .line 74
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f020219

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x53

    invoke-static {v10, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v7, "imageView1":Landroid/widget/ImageView;
    const v1, 0x7f020111

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    iget-object v8, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    move v1, v0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->selector:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->selector:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->selector:Landroid/view/View;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020235

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v1, "checkbox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "checkboxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 97
    iget-object v8, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/CheckBox;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    .line 158
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->selector:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChecked(ZZ)V
    .locals 10
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    const v0, -0xa0a0b

    const/4 v9, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f59999a    # 0.85f

    const/4 v3, 0x0

    .line 109
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 112
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 113
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 115
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    .line 117
    :cond_1
    if-eqz p2, :cond_5

    .line 118
    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setBackgroundColor(I)V

    .line 121
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    .line 122
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v5, v0, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v7, "scaleX"

    new-array v8, v9, [F

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    aput v0, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleY"

    new-array v7, v9, [F

    if-eqz p1, :cond_4

    :goto_1
    aput v1, v7, v3

    .line 123
    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v9

    .line 122
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 122
    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 145
    :cond_5
    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setBackgroundColor(I)V

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->container:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_2

    :cond_6
    move v0, v3

    .line 145
    goto :goto_3

    :cond_7
    move v0, v2

    .line 146
    goto :goto_4

    :cond_8
    move v1, v2

    .line 147
    goto :goto_5
.end method
