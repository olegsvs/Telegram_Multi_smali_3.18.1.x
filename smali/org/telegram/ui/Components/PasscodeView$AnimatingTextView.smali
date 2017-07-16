.class Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingTextView"
.end annotation


# instance fields
.field private DOT:Ljava/lang/String;

.field private characterTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private dotRunnable:Ljava/lang/Runnable;

.field private dotTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private stringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x42100000    # 36.0f

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x41c80000    # 25.0f

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    .line 82
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const-string/jumbo v3, "\u2022"

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->DOT:Ljava/lang/String;

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    .line 87
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 88
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 93
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 94
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 95
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 98
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 99
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Landroid/widget/TextView;

    .end local v2    # "textView":Landroid/widget/TextView;
    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v2    # "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 108
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 110
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 111
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 114
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 115
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 119
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseAllCharacters(Z)V

    return-void
.end method

.method private eraseAllCharacters(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 316
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 320
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 321
    iput-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 323
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 324
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 325
    iput-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 327
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 328
    if-eqz p1, :cond_7

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v8, :cond_6

    .line 332
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_4

    .line 334
    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 340
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_5

    .line 341
    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 348
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 349
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 350
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 360
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v8, :cond_0

    .line 361
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 362
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getXForTextView(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public appendCharacter(Ljava/lang/String;)V
    .locals 13
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 126
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 236
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 138
    .local v3, "newPos":I
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 141
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 143
    const-string/jumbo v5, "scaleX"

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string/jumbo v5, "scaleY"

    new-array v6, v11, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string/jumbo v5, "alpha"

    new-array v6, v11, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string/jumbo v5, "translationY"

    new-array v6, v11, [F

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 148
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 149
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 150
    const-string/jumbo v5, "scaleX"

    new-array v6, v11, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string/jumbo v5, "scaleY"

    new-array v6, v11, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const-string/jumbo v5, "translationY"

    new-array v6, v11, [F

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v3, 0x1

    .local v0, "a":I
    :goto_2
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 156
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_1

    .line 157
    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 163
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_2

    .line 164
    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "newPos":I
    .end local v4    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v3    # "newPos":I
    .restart local v4    # "textView":Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_4

    .line 171
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 173
    :cond_4
    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 204
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 206
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_5

    .line 207
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 208
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 214
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 221
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    .line 222
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 224
    :cond_6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 225
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 226
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 227
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 143
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 144
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 145
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 150
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 151
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public eraseLastCharacter()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 247
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 313
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 258
    .local v2, "deletingPos":I
    if-eqz v2, :cond_1

    .line 259
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    move v0, v2

    .local v0, "a":I
    :goto_2
    const/4 v5, 0x4

    if-ge v0, v5, :cond_4

    .line 263
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 264
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_2

    .line 265
    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 273
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_3

    .line 274
    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 252
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "deletingPos":I
    .end local v4    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 253
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v2    # "deletingPos":I
    :cond_4
    if-nez v2, :cond_5

    .line 283
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 286
    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_6

    .line 287
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 288
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 290
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string/jumbo v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 293
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_7

    .line 294
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 295
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 298
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_8

    .line 299
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 301
    :cond_8
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 302
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 303
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 304
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lenght()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 369
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 371
    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 373
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 375
    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 378
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 379
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 380
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 381
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 382
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 383
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 384
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 385
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 387
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 388
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 389
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 390
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 391
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 392
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 378
    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 395
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 398
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 399
    return-void
.end method
