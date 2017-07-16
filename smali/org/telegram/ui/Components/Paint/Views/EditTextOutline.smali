.super Landroid/widget/EditText;


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/text/TextPaint;

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUpdateCachedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V


    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V


    const/4 v0, 0x0




    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V


    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0


    if-eqz v2, :cond_1


    if-eqz v2, :cond_1


    if-eqz v2, :cond_0


    move-result v2


    move-result v4

    sub-int/2addr v2, v4


    move-result v4

    sub-int v3, v2, v4

    .local v3, "w":I

    move-result v9

    .local v9, "h":I

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;


    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V


    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v11, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V


    cmpl-float v2, v2, v6

    if-lez v2, :cond_2


    .local v10, "strokeWidth":F
    :goto_0

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setStrokeWidth(F)V



    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V



    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V



    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;


    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/text/StaticLayout;


    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .local v0, "sl":Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I


    move-result v2

    sub-int v2, v9, v2


    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v2, v4

    .local v8, "a":F


    move-result v4

    int-to-float v4, v4


    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V


    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V


    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V


    .end local v0    # "sl":Landroid/text/StaticLayout;
    .end local v1    # "text":Ljava/lang/String;
    .end local v3    # "w":I
    .end local v8    # "a":F
    .end local v9    # "h":I
    .end local v10    # "strokeWidth":F
    :cond_0


    invoke-virtual {p1, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .restart local v1    # "text":Ljava/lang/String;
    .restart local v3    # "w":I
    .restart local v9    # "h":I
    :cond_2

    move-result v2

    const/high16 v4, 0x41380000    # 11.5f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v10, v4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1


    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0


    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0


    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x1


    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue

    const/4 v0, 0x1



    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue

    const/4 v0, 0x1



    return-void
.end method
