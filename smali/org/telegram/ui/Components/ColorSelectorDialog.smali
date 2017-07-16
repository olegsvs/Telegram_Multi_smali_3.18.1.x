.class public Lorg/telegram/ui/Components/ColorSelectorDialog;
.super Landroid/app/Dialog;
.source "ColorSelectorDialog.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final CENTER:I = 0x0

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x3


# instance fields
.field private alpha:Z

.field private btnNew:Landroid/widget/Button;

.field private btnOld:Landroid/widget/Button;

.field private color:I

.field private content:Lorg/telegram/ui/Components/ColorSelectorView;

.field private history:Lorg/telegram/ui/Components/HistorySelectorView;

.field private initColor:I

.field private listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

.field private offset:I

.field private side:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initColor"    # I
    .param p3, "side"    # I

    .prologue
    .line 79
    const/high16 v0, 0x7f090000

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    iput p2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    .line 81
    iput p3, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;
    .param p3, "initColor"    # I
    .param p4, "side"    # I
    .param p5, "offset"    # I
    .param p6, "alpha"    # Z

    .prologue
    .line 70
    const/high16 v0, 0x7f090000

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 71
    iput-object p2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    .line 72
    iput p3, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    .line 73
    iput p4, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    .line 74
    iput p5, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    .line 75
    iput-boolean p6, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->alpha:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ColorSelectorDialog;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorDialog;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/HistorySelectorView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ColorSelectorDialog;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorDialog;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->colorChangedInternal(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ColorSelectorDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    return-object v0
.end method

.method private adjustAlpha(IZ)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "b"    # Z

    .prologue
    .line 158
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 159
    .local v0, "alpha":I
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 160
    .local v3, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 161
    .local v2, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 162
    .local v1, "blue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4

    .line 158
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v3    # "red":I
    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private colorChangedInternal(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    xor-int/lit8 v1, p1, -0x1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->alpha:Z

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->adjustAlpha(IZ)I

    move-result p1

    .line 154
    iput p1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    .line 155
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;->colorChanged(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->selectColor(I)V

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->dismiss()V

    .line 202
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;->colorChanged(I)V

    .line 209
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->setContentView(I)V

    .line 92
    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 95
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$1;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$2;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f0c0026

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ColorSelectorView;

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/ColorSelectorView;->setDialog(Landroid/app/Dialog;)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$3;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;)V

    .line 133
    const v1, 0x7f0c0027

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/HistorySelectorView;

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$4;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HistorySelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;)V

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    iget v2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    iget v2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    xor-int/lit8 v2, v2, -0x1

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    iget v2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(I)V

    .line 147
    return-void

    .line 97
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "TOuch outside the dialog ******************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->dismiss()V

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(I)V

    .line 168
    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "mlistener"    # Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    .line 184
    return-void
.end method
