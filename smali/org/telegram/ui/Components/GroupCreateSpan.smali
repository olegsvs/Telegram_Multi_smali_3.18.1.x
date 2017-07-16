.class public Lorg/telegram/ui/Components/GroupCreateSpan;
.super Landroid/view/View;
.source "GroupCreateSpan.java"


# static fields
.field private static backPaint:Landroid/graphics/Paint;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private colors:[I

.field private deleteDrawable:Landroid/graphics/drawable/Drawable;

.field private deleting:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private lastUpdateTime:J

.field private nameLayout:Landroid/text/StaticLayout;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private textWidth:I

.field private textX:F

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    .line 52
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 55
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 59
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 64
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:I

    .line 67
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const/high16 v0, 0x43b70000    # 366.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    .line 72
    .local v12, "maxNameWidth":I
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    const/16 v4, 0x20

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    int-to-float v4, v12

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    .local v1, "name":Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    const/16 v3, 0x3e8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    .line 79
    :cond_0
    const/4 v3, 0x0

    .line 80
    .local v3, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 83
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    const-string/jumbo v5, "50_50"

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    .line 85
    return-void

    .line 70
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v3    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v12    # "maxNameWidth":I
    :cond_2
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v2, 0x43240000    # 164.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v12, v0, 0x2

    .restart local v12    # "maxNameWidth":I
    goto :goto_0
.end method


# virtual methods
.method public cancelDeleteAnimation()V
    .locals 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->invalidate()V

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:I

    return v0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 136
    iget-boolean v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-nez v4, :cond_5

    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 137
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 139
    .local v0, "dt":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    const-wide/16 v4, 0x11

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 140
    :cond_2
    const-wide/16 v0, 0x11

    .line 142
    :cond_3
    iget-boolean v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-eqz v4, :cond_7

    .line 143
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x42f00000    # 120.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    .line 144
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 145
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    .line 153
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->invalidate()V

    .line 155
    .end local v0    # "dt":J
    .end local v2    # "newTime":J
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    sget-object v4, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v9, 0x4

    aget v8, v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 160
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    .line 161
    sget-object v4, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    sget-object v4, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    iget v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    const/high16 v4, 0x42340000    # 45.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41a80000    # 21.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    iget v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    const/high16 v5, 0x42240000    # 41.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    return-void

    .line 148
    .restart local v0    # "dt":J
    .restart local v2    # "newTime":J
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x42f00000    # 120.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    .line 149
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 150
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 131
    const/high16 v0, 0x42640000    # 57.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    add-int/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/GroupCreateSpan;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method public startDeleteAnimation()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    .line 113
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->invalidate()V

    goto :goto_0
.end method

.method public updateColors()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 88
    const-string/jumbo v3, "avatar_backgroundGroupCreateSpanBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "color":I
    const-string/jumbo v3, "groupcreate_spanBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "back":I
    const-string/jumbo v3, "groupcreate_spanText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, "text":I
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    aput v5, v3, v4

    .line 92
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    aput v5, v3, v4

    .line 93
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    aput v5, v3, v4

    .line 94
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    aput v5, v3, v4

    .line 95
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    aput v5, v3, v4

    .line 96
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v3, v6

    .line 97
    sget-object v3, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    sget-object v3, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 101
    return-void
.end method
