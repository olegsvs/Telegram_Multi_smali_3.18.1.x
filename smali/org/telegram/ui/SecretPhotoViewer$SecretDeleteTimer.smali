.class Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;
.super Landroid/widget/FrameLayout;
.source "SecretPhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretPhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecretDeleteTimer"
.end annotation


# instance fields
.field private currentInfoString:Ljava/lang/String;

.field private deleteProgressPaint:Landroid/graphics/Paint;

.field private deleteProgressRect:Landroid/graphics/RectF;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private infoLayout:Landroid/text/StaticLayout;

.field private infoPaint:Landroid/text/TextPaint;

.field private infoWidth:I

.field final synthetic this$0:Lorg/telegram/ui/SecretPhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    .line 73
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    .line 67
    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoLayout:Landroid/text/StaticLayout;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    .line 70
    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->setWillNotDraw(Z)V

    .line 76
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressPaint:Landroid/graphics/Paint;

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method

.method private updateSecretTimeText()V
    .locals 9

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretPhotoViewer;->access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretPhotoViewer;->access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getSecretTimeString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->currentInfoString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->currentInfoString:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :cond_2
    iput-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->currentInfoString:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->currentInfoString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoWidth:I

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->currentInfoString:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 98
    .local v1, "str2":Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoLayout:Landroid/text/StaticLayout;

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x42000000    # 32.0f

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretPhotoViewer;->access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretPhotoViewer;->access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getTimeDifference()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 121
    .local v6, "msTime":J
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretPhotoViewer;->access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretPhotoViewer;->access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    div-float v9, v0, v1

    .line 122
    .local v9, "progress":F
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float v3, v0, v9

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_3

    .line 124
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 125
    .local v8, "offset":I
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int/2addr v0, v8

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sub-int/2addr v1, v8

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    mul-int/lit8 v4, v8, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate(IIII)V

    .line 127
    .end local v8    # "offset":I
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->updateSecretTimeText()V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->infoLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    return-void
.end method
