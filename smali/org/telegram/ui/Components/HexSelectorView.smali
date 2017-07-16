.class public Lorg/telegram/ui/Components/HexSelectorView;
.super Landroid/widget/LinearLayout;
.source "HexSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private color:I

.field private dialog:Landroid/app/Dialog;

.field private edit:Landroid/widget/EditText;

.field private listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

.field private txtError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/HexSelectorView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lorg/telegram/ui/Components/HexSelectorView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HexSelectorView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/HexSelectorView;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HexSelectorView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/HexSelectorView;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 66
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HexSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 67
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "content":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/HexSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0c0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/HexSelectorView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HexSelectorView$1;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/HexSelectorView$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HexSelectorView$2;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/HexSelectorView$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HexSelectorView$3;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/HexSelectorView$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HexSelectorView$4;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 114
    const v2, 0x7f0c0013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->btnSave:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->btnSave:Landroid/widget/Button;

    new-instance v3, Lorg/telegram/ui/Components/HexSelectorView$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HexSelectorView$5;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method private onColorChanged()V
    .locals 3

    .prologue
    .line 186
    const-string/jumbo v0, "HexSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String parsing succeeded. changing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HexSelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;->colorChanged(I)V

    .line 189
    :cond_0
    return-void
.end method

.method private padLeft(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "padChar"    # C
    .param p3, "size"    # I

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p3, :cond_0

    .line 181
    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 177
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_1

    .line 179
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    return v0
.end method

.method public setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/16 v3, 0x8

    .line 165
    iget v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    if-ne p1, v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Components/HexSelectorView;->padLeft(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "d"    # Landroid/app/Dialog;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView;->dialog:Landroid/app/Dialog;

    .line 62
    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    .prologue
    .line 193
    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView;->listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    .line 194
    return-void
.end method

.method public validateColorInTextView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 126
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "hex":Ljava/lang/String;
    const-string/jumbo v2, "HexSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "String parsing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 145
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "hex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HexSelector"

    const-string/jumbo v3, "String parsing died"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 146
    .restart local v1    # "hex":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x10

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Components/HexSelectorView;->onColorChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
