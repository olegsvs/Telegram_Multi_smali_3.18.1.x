.class public Lorg/telegram/ui/Components/HistorySelectorView;
.super Landroid/widget/LinearLayout;
.source "HistorySelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final HISTORY:Ljava/lang/String; = "HISTORY"

.field private static final MAX_COLORS:I = 0x1e

.field private static final PREFS_NAME:Ljava/lang/String; = "RECENT_COLORS"


# instance fields
.field color:I

.field colors:Lorg/json/JSONArray;

.field listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HistorySelectorView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/HistorySelectorView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HistorySelectorView;->setColor(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HistorySelectorView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/HistorySelectorView;

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->onColorChanged()V

    return-void
.end method

.method private getColor()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->color:I

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "content":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/HistorySelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->readColors()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->makeColorList()V

    return-void
.end method

.method private makeColorList()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0c0016

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/HistorySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .local v3, "colorlist":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_0
    const v8, 0x7f0c0017

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/HistorySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, "nocolors":Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v8, 0x7f0c0015

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/HistorySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .end local v7    # "nocolors":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v8, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .local v2, "color":I
    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "boxgroup":Landroid/view/ViewGroup;
    const v8, 0x7f0c0018

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "box":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Lorg/telegram/ui/Components/HistorySelectorView$1;

    invoke-direct {v8, p0, v2}, Lorg/telegram/ui/Components/HistorySelectorView$1;-><init>(Lorg/telegram/ui/Components/HistorySelectorView;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v0    # "box":Landroid/widget/TextView;
    .end local v1    # "boxgroup":Landroid/view/ViewGroup;
    .end local v2    # "color":I
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onColorChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method

.method private setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->color:I

    return-void
.end method


# virtual methods
.method public moveValueToFront(Lorg/json/JSONArray;II)Lorg/json/JSONArray;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "index"    # I
    .param p3, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "array":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .restart local p1    # "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public readColors()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "RECENT_COLORS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string/jumbo v3, "HISTORY"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public selectColor(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "RECENT_COLORS"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .local v5, "prefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    if-nez v6, :cond_0

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    :cond_0
    const/4 v0, 0x0

    .local v0, "dontadd":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-ne v6, p1, :cond_1

    const/4 v0, 0x1

    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {p0, v6, v3, p1}, Lorg/telegram/ui/Components/HistorySelectorView;->moveValueToFront(Lorg/json/JSONArray;II)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_5

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .local v4, "newcolors":Lorg/json/JSONArray;
    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1e

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iput-object v4, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    .end local v4    # "newcolors":Lorg/json/JSONArray;
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "HISTORY"

    iget-object v7, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dontadd":Z
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i":I
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :goto_2
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    return-void
.end method
