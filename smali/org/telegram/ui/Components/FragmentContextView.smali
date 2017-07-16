.class public Lorg/telegram/ui/Components/FragmentContextView;
.super Landroid/widget/FrameLayout;
.source "FragmentContextView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private closeButton:Landroid/widget/ImageView;

.field private currentStyle:I

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playButton:Landroid/widget/ImageView;

.field private titleTextView:Landroid/widget/TextView;

.field private topPadding:F

.field private visible:Z

.field private yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 65
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTag(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    .line 71
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    .local v7, "shadow":Landroid/view/View;
    const v0, 0x7f0200b1

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x42100000    # 36.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "inappPlayerPlayPause"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 80
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v0, 0x24

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/high16 v3, 0x420c0000    # 35.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42100000    # 36.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "inappPlayerClose"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x24

    const/16 v2, 0x24

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private checkCall(Z)V
    .locals 11
    .param p1, "create"    # Z

    .prologue
    const/4 v7, 0x2

    const/high16 v10, 0x42100000    # 36.0f

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, "fragmentView":Landroid/view/View;
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    :cond_0
    const/4 p1, 0x1

    .line 334
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_4

    move v0, v3

    .line 335
    .local v0, "callAvailable":Z
    :goto_0
    if-nez v0, :cond_7

    .line 336
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_3

    .line 337
    iput-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 338
    if-eqz p1, :cond_5

    .line 339
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 340
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 342
    :cond_2
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 395
    :cond_3
    :goto_1
    return-void

    .end local v0    # "callAvailable":Z
    :cond_4
    move v0, v4

    .line 334
    goto :goto_0

    .line 344
    .restart local v0    # "callAvailable":Z
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_6

    .line 345
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 346
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 348
    :cond_6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 349
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    const-string/jumbo v6, "translationY"

    new-array v7, v3, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v4

    const-string/jumbo v6, "topPadding"

    new-array v7, v3, [F

    aput v9, v7, v4

    .line 350
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v3

    .line 349
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 351
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FragmentContextView$6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 365
    :cond_7
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 366
    if-eqz p1, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_8

    .line 367
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 368
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTranslationY(F)V

    .line 369
    iput v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    .line 371
    :cond_8
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v2, :cond_3

    .line 372
    if-nez p1, :cond_a

    .line 373
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_9

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 375
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 377
    :cond_9
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 378
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    const-string/jumbo v6, "translationY"

    new-array v7, v7, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v9, v7, v3

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v4

    const-string/jumbo v6, "topPadding"

    new-array v7, v3, [F

    .line 379
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    .line 378
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 380
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/FragmentContextView$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/FragmentContextView$7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 391
    :cond_a
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 392
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private checkPlayer(Z)V
    .locals 12
    .param p1, "create"    # Z

    .prologue
    .line 237
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 238
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "fragmentView":Landroid/view/View;
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    :cond_0
    const/4 p1, 0x1

    .line 244
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-nez v5, :cond_7

    .line 245
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 246
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v5, :cond_4

    .line 247
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 248
    if-eqz p1, :cond_5

    .line 249
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 250
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 252
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 325
    :cond_4
    :goto_0
    return-void

    .line 254
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    .line 255
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 256
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 258
    :cond_6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 259
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "topPadding"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 260
    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 259
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 262
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/FragmentContextView$4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 275
    :cond_7
    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 276
    .local v2, "prevStyle":I
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 277
    if-eqz p1, :cond_8

    iget v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    .line 278
    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 279
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setTranslationY(F)V

    .line 280
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    .line 282
    :cond_8
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v5, :cond_b

    .line 283
    if-nez p1, :cond_a

    .line 284
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_9

    .line 285
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 286
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 288
    :cond_9
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 289
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "topPadding"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    .line 290
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 289
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/FragmentContextView$5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 302
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 303
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 305
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 306
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const v6, 0x7f02014f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v5, v1, :cond_c

    if-eqz v2, :cond_4

    .line 311
    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 313
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 314
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    .local v4, "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 320
    :goto_2
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "inappPlayerPerformer"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 321
    .local v3, "span":Lorg/telegram/ui/Components/TypefaceSpan;
    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x12

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 322
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 308
    .end local v3    # "span":Lorg/telegram/ui/Components/TypefaceSpan;
    .end local v4    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const v6, 0x7f02014e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 317
    :cond_e
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v5, "%s - %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    .restart local v4    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2
.end method

.method private updateStyle(I)V
    .locals 12
    .param p1, "style"    # I

    .prologue
    const/4 v6, 0x4

    const/high16 v1, 0x42100000    # 36.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 145
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 149
    if-nez p1, :cond_8

    .line 151
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 152
    .local v11, "themePrefs":Landroid/content/SharedPreferences;
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 153
    .local v8, "hColor":I
    const/4 v9, -0x1

    .line 154
    .local v9, "iconColor":I
    const/4 v10, -0x1

    .line 155
    .local v10, "tColor":I
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_5

    .line 156
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    .line 157
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    .line 158
    const-string/jumbo v0, "chatsHeaderTitleColor"

    invoke-interface {v11, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 164
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 170
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 174
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_6

    .end local v8    # "hColor":I
    :goto_2
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7

    .end local v10    # "tColor":I
    :goto_3
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/16 v2, 0x33

    const/high16 v3, 0x420c0000    # 35.0f

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 159
    .restart local v8    # "hColor":I
    .restart local v10    # "tColor":I
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    .line 160
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    .line 161
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    .line 162
    const-string/jumbo v0, "chatNameColor"

    invoke-interface {v11, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_1

    .line 174
    :cond_6
    const-string/jumbo v2, "inappPlayerBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    .line 175
    .end local v8    # "hColor":I
    :cond_7
    const-string/jumbo v2, "inappPlayerTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 181
    .end local v9    # "iconColor":I
    .end local v10    # "tColor":I
    .end local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_8
    if-ne p1, v5, :cond_0

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "ReturnToCall"

    const v2, 0x7f070541

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "returnToCallBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "returnToCallText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x11

    const/high16 v7, 0x40000000    # 2.0f

    move v5, v4

    move v6, v4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 227
    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    if-ne p1, v0, :cond_1

    .line 228
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    if-ne p1, v0, :cond_2

    .line 230
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 407
    .local v0, "restoreToCount":I
    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 408
    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    neg-float v3, v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 410
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 411
    .local v1, "result":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 412
    return v1
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 206
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 207
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 208
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 209
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 210
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 211
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 212
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 213
    .local v0, "callAvailable":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 218
    :goto_1
    return-void

    .line 212
    .end local v0    # "callAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    .restart local v0    # "callAvailable":Z
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 197
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 198
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 199
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 200
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 202
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 222
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 223
    return-void
.end method

.method public setTopPadding(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x0

    .line 135
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 139
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 400
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 402
    return-void
.end method
