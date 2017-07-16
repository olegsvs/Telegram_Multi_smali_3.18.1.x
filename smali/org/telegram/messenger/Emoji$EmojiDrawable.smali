.class public Lorg/telegram/messenger/Emoji$EmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiDrawable"
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;

.field private static rect:Landroid/graphics/Rect;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private fullSize:Z

.field private info:Lorg/telegram/messenger/Emoji$DrawableInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    .line 235
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->textPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V
    .locals 1
    .param p1, "i"    # Lorg/telegram/messenger/Emoji$DrawableInfo;

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    .line 238
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    .line 239
    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/Emoji$EmojiDrawable;)Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 262
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$000()[[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 263
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$400()[[Z

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$400()[[Z

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 267
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;-><init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$700()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 286
    .local v0, "b":Landroid/graphics/Rect;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$000()[[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->rect:Landroid/graphics/Rect;

    sget-object v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 282
    .end local v0    # "b":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Rect;
    goto :goto_1
.end method

.method public getDrawRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 247
    .local v2, "original":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .local v0, "cX":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 248
    .local v1, "cY":I
    sget-object v4, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v3

    :goto_0
    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 249
    sget-object v4, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v3

    :goto_1
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 250
    sget-object v4, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v3

    :goto_2
    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 251
    sget-object v4, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v3

    :goto_3
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 252
    sget-object v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    return-object v3

    .line 248
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v3

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v3

    goto :goto_1

    .line 250
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v3

    goto :goto_2

    .line 251
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v3

    goto :goto_3
.end method

.method public getDrawableInfo()Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 298
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 303
    return-void
.end method
