.class Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCircle"
.end annotation


# instance fields
.field private amplitude:F

.field private animateAmplitudeDiff:F

.field private animateToAmplitude:F

.field private lastUpdateTime:J

.field private scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 401
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    const-string/jumbo v1, "chat_messagePanelVoiceBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    const-string/jumbo v1, "chat_messagePanelVoiceShadow"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1802(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "chat_messagePanelVoicePressed"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 407
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1902(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 408
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "chat_messagePanelVoicePressed"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 409
    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x3e800000    # 0.25f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v13, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    .line 429
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 430
    .local v1, "cx":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 433
    .local v2, "cy":I
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_3

    .line 434
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    div-float v6, v7, v9

    .local v6, "sc":F
    move v0, v6

    .line 442
    .local v0, "alpha":F
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    sub-long v4, v8, v10

    .line 443
    .local v4, "dt":J
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 444
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    long-to-float v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 445
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_5

    .line 446
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 447
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 454
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 456
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 457
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_2

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 460
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 461
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 462
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v2

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 464
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 465
    return-void

    .line 435
    .end local v0    # "alpha":F
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "dt":J
    .end local v6    # "sc":F
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v8, 0x3f400000    # 0.75f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 436
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    mul-float/2addr v8, v10

    sub-float v6, v7, v8

    .line 437
    .restart local v6    # "sc":F
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto/16 :goto_0

    .line 439
    .end local v0    # "alpha":F
    .end local v6    # "sc":F
    :cond_4
    const v7, 0x3f666666    # 0.9f

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v9, 0x3f400000    # 0.75f

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    mul-float/2addr v8, v10

    add-float v6, v7, v8

    .line 440
    .restart local v6    # "sc":F
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto/16 :goto_0

    .line 450
    .restart local v4    # "dt":J
    :cond_5
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 451
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    goto/16 :goto_1

    .line 461
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2
.end method

.method public setAmplitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 412
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    .line 413
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 415
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 416
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 423
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 424
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 425
    return-void
.end method
