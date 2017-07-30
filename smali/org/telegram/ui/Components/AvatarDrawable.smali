.class public Lorg/telegram/ui/Components/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# static fields
.field private static arrColorsNames:[I


# instance fields
.field private color:I

.field private drawBrodcast:Z

.field private drawPhoto:Z

.field private isProfile:Z

.field private namePaint:Landroid/text/TextPaint;

.field private radius:I

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private textHeight:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:F

.field private textWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsNames:[I

    return-void

    :array_0
    .array-data 4
        -0xbbcca
        -0x16e19d
        -0x63d850
        -0x98c549
        -0xc0ae4b
        -0xde690d
        -0xfc560c
        -0xff432c
        -0xab8a62
        -0xb350b0
        -0x743cb6
        -0x3223c7
        -0x14c5
        -0x3ef9
        -0x6800
        -0xa8de
        -0x86aab8
        -0x616162
        -0x9f8275
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    .line 67
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    const/16 v0, 0x20

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->radius:I

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 6
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "profile"    # Z

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 91
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 95
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "profile"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 83
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static getButtonColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 113
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_actionBarSelector:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 109
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorIndex(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 102
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    .line 105
    .end local p0    # "id":I
    :goto_0
    return p0

    .restart local p0    # "id":I
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    array-length v0, v0

    rem-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_0
.end method

.method public static getIconColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 117
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_actionBarIcon:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNameColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 133
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProfileBackColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 129
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_backgroundActionBar:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProfileColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 121
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_backgroundInProfile:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProfileTextColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 125
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_subtitleInProfile:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 244
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 248
    .local v4, "size":I
    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string/jumbo v8, "avatar_text"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 249
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    iget v8, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v7, :cond_2

    .line 253
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    :goto_1
    iget-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawBrodcast:Z

    if-eqz v7, :cond_3

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 261
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v5, v7, 0x2

    .line 262
    .local v5, "x":I
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v6, v7, 0x2

    .line 263
    .local v6, "y":I
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v5

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 255
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 257
    .local v3, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getRadius()I

    move-result v1

    .line 258
    .local v1, "r":I
    int-to-float v7, v1

    int-to-float v8, v1

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 266
    .end local v1    # "r":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "rectF":Landroid/graphics/RectF;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_4

    .line 267
    int-to-float v7, v4

    iget v8, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iget v8, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v7, v8

    int-to-float v8, v4

    iget v9, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 269
    :cond_4
    iget-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawPhoto:Z

    if-eqz v7, :cond_1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 270
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v5, v7, 0x2

    .line 271
    .restart local v5    # "x":I
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v6, v7, 0x2

    .line 272
    .restart local v6    # "y":I
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v5

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, -0x2

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->radius:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 282
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 149
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 287
    return-void
.end method

.method public setDrawPhoto(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawPhoto:Z

    .line 239
    return-void
.end method

.method public setInfo(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "isBroadcast"    # Z

    .prologue
    .line 165
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 166
    return-void
.end method

.method public setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "isBroadcast"    # Z
    .param p5, "custom"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    if-eqz v1, :cond_4

    .line 174
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileColorForId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 179
    :goto_0
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawBrodcast:Z

    .line 181
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    move-object p2, p3

    .line 183
    const/4 p3, 0x0

    .line 186
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 187
    if-eqz p5, :cond_5

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 224
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 176
    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto :goto_0

    .line 190
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 193
    :cond_6
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 194
    const/4 v11, 0x0

    .line 195
    .local v11, "lastch":Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .local v9, "a":I
    :goto_3
    if-ltz v9, :cond_7

    .line 196
    if-eqz v11, :cond_9

    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_9

    .line 201
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_8

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u200c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 199
    :cond_9
    invoke-virtual {p3, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 195
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 205
    .end local v9    # "a":I
    .end local v11    # "lastch":Ljava/lang/Integer;
    :cond_a
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .restart local v9    # "a":I
    :goto_4
    if-ltz v9, :cond_2

    .line 207
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_c

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v9, v1, :cond_c

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_c

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_b

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u200c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 206
    :cond_c
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 229
    .end local v9    # "a":I
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 230
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 233
    .end local v2    # "text":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    goto/16 :goto_2
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v3, 0x0

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 146
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setProfile(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 99
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 153
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->radius:I

    .line 154
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 162
    return-void
.end method
