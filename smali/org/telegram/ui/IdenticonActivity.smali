.class public Lorg/telegram/ui/IdenticonActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "IdenticonActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private chat_id:I

.field private codeTextView:Landroid/widget/TextView;

.field private container:Landroid/widget/FrameLayout;

.field private emojiSelected:Z

.field private emojiText:Ljava/lang/String;

.field private emojiTextView:Landroid/widget/TextView;

.field private hintAnimatorSet:Landroid/animation/AnimatorSet;

.field private hintTextView:Landroid/widget/TextView;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linearLayout1:Landroid/widget/LinearLayout;

.field private textView:Landroid/widget/TextView;

.field private textWidth:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/IdenticonActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/IdenticonActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 313
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/IdenticonActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/IdenticonActivity$6;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 333
    return-void
.end method

.method private showHint(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 364
    return-void
.end method

.method private updateEmojiButton(Z)V
    .locals 11
    .param p1, "animated"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 281
    :cond_0
    if-eqz p1, :cond_7

    .line 282
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 283
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x6

    new-array v4, v0, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    aput v0, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    aput v0, v7, v9

    .line 284
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v10

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    aput v0, v8, v9

    .line 285
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v10, [F

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    aput v0, v8, v9

    .line 286
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    aput v0, v8, v9

    .line 287
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x5

    iget-object v5, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v10, [F

    iget-boolean v8, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v8, :cond_6

    :goto_5
    aput v2, v7, v9

    .line 288
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v0

    .line 283
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/IdenticonActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/IdenticonActivity$5;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 308
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-nez v0, :cond_e

    const-string/jumbo v0, "chat_emojiPanelIcon"

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 309
    return-void

    :cond_1
    move v0, v2

    .line 283
    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 284
    goto :goto_2

    :cond_4
    move v0, v2

    .line 285
    goto :goto_3

    :cond_5
    move v0, v1

    .line 286
    goto :goto_4

    :cond_6
    move v2, v1

    .line 287
    goto :goto_5

    .line 301
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 302
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 303
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 304
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 305
    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v0, :cond_c

    move v0, v2

    :goto_c
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/IdenticonActivity;->emojiSelected:Z

    if-eqz v3, :cond_d

    :goto_d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_6

    :cond_8
    move v0, v2

    .line 301
    goto :goto_8

    :cond_9
    move v0, v1

    .line 302
    goto :goto_9

    :cond_a
    move v0, v2

    .line 303
    goto :goto_a

    :cond_b
    move v0, v2

    .line 304
    goto :goto_b

    :cond_c
    move v0, v1

    .line 305
    goto :goto_c

    :cond_d
    move v2, v1

    .line 306
    goto :goto_d

    .line 308
    :cond_e
    const-string/jumbo v0, "chat_emojiPanelIconSelected"

    goto :goto_7
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    const v18, 0x7f0200b6

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    const-string/jumbo v18, "EncryptionKey"

    const v19, 0x7f070230

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    new-instance v18, Lorg/telegram/ui/IdenticonActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/IdenticonActivity$1;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 117
    new-instance v17, Lorg/telegram/ui/IdenticonActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/IdenticonActivity$2;-><init>(Lorg/telegram/ui/IdenticonActivity;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    check-cast v14, Landroid/widget/FrameLayout;

    .line 127
    .local v14, "parentFrameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBackgroundGray"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lorg/telegram/ui/IdenticonActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/IdenticonActivity$3;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/high16 v18, 0x42c80000    # 100.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v8, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v17, 0x41a00000    # 20.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    const/high16 v18, 0x41a00000    # 20.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/high16 v19, 0x41a00000    # 20.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/high16 v20, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v11, "identiconView":Landroid/widget/ImageView;
    sget-object v17, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v17, Lorg/telegram/ui/IdenticonActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/IdenticonActivity$4;-><init>(Lorg/telegram/ui/IdenticonActivity;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBackgroundWhite"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v21, 0x42480000    # 50.0f

    invoke-static/range {v19 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/high16 v18, 0x41200000    # 10.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/16 v19, 0x0

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x11

    invoke-static/range {v19 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBackgroundWhiteGrayText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/high16 v19, 0x41800000    # 16.0f

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IdenticonActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const-string/jumbo v19, "chat_gifSaveHintBackground"

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "chat_gifSaveHintText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/high16 v19, 0x41600000    # 14.0f

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, 0x41200000    # 10.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/16 v19, 0x0

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "TapToEmojify"

    const v19, 0x7f070617

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setAlpha(F)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    const/high16 v19, 0x42000000    # 32.0f

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBackgroundWhiteGrayText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBackgroundWhiteLinkText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/high16 v19, 0x41800000    # 16.0f

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setClickable(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/IdenticonActivity$1;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBackgroundWhiteGrayText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/high16 v19, 0x42000000    # 32.0f

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/high16 v20, -0x40000000    # -2.0f

    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/IdenticonActivity;->chat_id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v7

    .line 209
    .local v7, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v7, :cond_7

    .line 210
    new-instance v5, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 211
    .local v5, "drawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 213
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v17

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v16

    .line 214
    .local v16, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 215
    .local v9, "hash":Landroid/text/SpannableStringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v6, "emojis":Ljava/lang/StringBuilder;
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 217
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "hex":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 219
    if-eqz v4, :cond_0

    .line 220
    rem-int/lit8 v17, v4, 0x8

    if-nez v17, :cond_1

    .line 221
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 226
    :cond_0
    :goto_1
    mul-int/lit8 v17, v4, 0x2

    mul-int/lit8 v18, v4, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_1
    rem-int/lit8 v17, v4, 0x4

    if-nez v17, :cond_0

    .line 223
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 229
    :cond_2
    const-string/jumbo v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 230
    const/4 v4, 0x0

    :goto_2
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    .line 231
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    move-object/from16 v17, v0

    mul-int/lit8 v18, v4, 0x4

    add-int/lit8 v18, v18, 0x10

    aget-byte v17, v17, v18

    and-int/lit8 v17, v17, 0x7f

    shl-int/lit8 v17, v17, 0x18

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x4

    add-int/lit8 v19, v19, 0x10

    add-int/lit8 v19, v19, 0x1

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x4

    add-int/lit8 v19, v19, 0x10

    add-int/lit8 v19, v19, 0x2

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x4

    add-int/lit8 v19, v19, 0x10

    add-int/lit8 v19, v19, 0x3

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v13, v17, v18

    .line 232
    .local v13, "num":I
    if-eqz v4, :cond_3

    .line 233
    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    sget-object v17, Lorg/telegram/messenger/EmojiData;->emojiSecret:[Ljava/lang/String;

    sget-object v18, Lorg/telegram/messenger/EmojiData;->emojiSecret:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    rem-int v18, v13, v18

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 237
    .end local v13    # "num":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/IdenticonActivity;->emojiText:Ljava/lang/String;

    .line 239
    .end local v4    # "a":I
    .end local v10    # "hex":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 241
    const-string/jumbo v17, "EncryptionKeyDescription"

    const v18, 0x7f070231

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 242
    const-string/jumbo v15, "telegram.org"

    .line 243
    .local v15, "url":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "telegram.org"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 244
    .local v12, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    .line 245
    new-instance v17, Lorg/telegram/ui/Components/URLSpanReplacement;

    const-string/jumbo v18, "EncryptionKeyLink"

    const v19, 0x7f070232

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "telegram.org"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v12

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v12, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 247
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v5    # "drawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    .end local v6    # "emojis":Ljava/lang/StringBuilder;
    .end local v9    # "hash":Landroid/text/SpannableStringBuilder;
    .end local v12    # "index":I
    .end local v15    # "url":Ljava/lang/String;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/ui/IdenticonActivity;->updateEmojiButton(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v17, v0

    return-object v17
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 269
    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 274
    :cond_0
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 376
    const/16 v0, 0xb

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->container:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundGray"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string/jumbo v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string/jumbo v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string/jumbo v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "windowBackgroundWhiteGrayText4"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "windowBackgroundWhiteGrayText4"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const-string/jumbo v7, "windowBackgroundWhiteLinkText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string/jumbo v7, "chat_gifSaveHintBackground"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->hintTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "chat_gifSaveHintText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    invoke-direct {p0}, Lorg/telegram/ui/IdenticonActivity;->fixLayout()V

    .line 259
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/telegram/ui/IdenticonActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/IdenticonActivity;->chat_id:I

    .line 92
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 93
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 99
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 264
    invoke-direct {p0}, Lorg/telegram/ui/IdenticonActivity;->fixLayout()V

    .line 265
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 5
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 368
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->emojiText:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/IdenticonActivity;->showHint(Z)V

    .line 372
    :cond_0
    return-void
.end method
