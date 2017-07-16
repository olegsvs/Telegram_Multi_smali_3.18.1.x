.class public Lorg/telegram/ui/Components/TextPaintUrlSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextPaintUrlSpan.java"


# instance fields
.field private color:I

.field private currentUrl:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->currentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_0
    return-void
.end method
