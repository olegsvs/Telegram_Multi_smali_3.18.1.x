.class public Lorg/telegram/ui/Components/RecyclerListView;
.super Lorg/telegram/messenger/support/widget/RecyclerView;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScroll;,
        Lorg/telegram/ui/Components/RecyclerListView$Holder;,
        Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static attributes:[I

.field private static gotAttributes:Z


# instance fields
.field private clickRunnable:Ljava/lang/Runnable;

.field private currentChildPosition:I

.field private currentChildView:Landroid/view/View;

.field private currentFirst:I

.field private currentVisible:I

.field private disallowInterceptTouchEvents:Z

.field private emptyView:Landroid/view/View;

.field private fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headersCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreOnScroll:Z

.field private instantClick:Z

.field private interceptedByChild:Z

.field private isChildViewEnabled:Z

.field private observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

.field private onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

.field private onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field private onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

.field private pinnedHeader:Landroid/view/View;

.field private sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

.field private sectionsCount:I

.field private sectionsType:I

.field private selectChildRunnable:Ljava/lang/Runnable;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorPosition:I

.field private selectorRect:Landroid/graphics/Rect;

.field private selfOnLayout:Z

.field private startSection:I

.field private wasPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    const-string/jumbo v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :try_start_0
    sget-boolean v3, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.android.internal"

    const-string/jumbo v4, "View"

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    sput-object v3, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    const/4 v3, 0x1

    sput-boolean v3, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const-class v3, Landroid/view/View;

    const-string/jumbo v4, "initializeScrollbars"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "initializeScrollbars":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "initializeScrollbars":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$2;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-super {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    return p1
.end method

.method static synthetic access$2608(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/RecyclerListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private checkIfEmpty()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .local v0, "emptyViewVisible":Z
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "emptyViewVisible":Z
    :cond_3
    move v0, v1

    goto :goto_1

    .restart local v0    # "emptyViewVisible":Z
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;
    .param p2, "forceLayout"    # Z

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "heightSpec":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "widthSpec":I
    :try_start_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void

    .restart local v1    # "heightSpec":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "widthSpec":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_3
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "widthSpec":I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightSpec":I
    :try_start_1
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDrawableStateForSelector()[I
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onCreateDrawableState(I)[I

    move-result-object v0

    .local v0, "state":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const v2, 0x10100a7

    aput v2, v0, v1

    return-object v0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "section"    # I
    .param p2, "oldView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .local v0, "shouldLayout":Z
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    :cond_0
    return-object v1

    .end local v0    # "shouldLayout":Z
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    if-eq p1, v4, :cond_6

    move v1, v2

    .local v1, "positionChanged":Z
    :goto_1
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .local v0, "enabled":Z
    iget-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    if-eq v4, v0, :cond_3

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "positionChanged":Z
    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method private removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "pressedChild"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_1
    if-eqz p2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method private updateSelectorState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelClickRunnables(Z)V
    .locals 4
    .param p1, "uncheck"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .local v1, "header":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .local v2, "saveCount":I
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "top":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    :goto_2
    int-to-float v6, v3

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .end local v0    # "a":I
    .end local v1    # "header":Landroid/view/View;
    .end local v2    # "saveCount":I
    .end local v3    # "top":I
    :cond_3
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .restart local v2    # "saveCount":I
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "top":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v5, v4

    :cond_4
    int-to-float v4, v3

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v7, v7, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v2    # "saveCount":I
    .end local v3    # "top":I
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->drawableStateChanged()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadersCache()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPinnedHeader()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".R$styleable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onAttachedToWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .end local v0    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onDetachedFromWindow()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/support/widget/RecyclerView;->onLayout(ZIIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, v4, p3, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredWidth()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "x":I
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, v0, p3, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onMeasure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/high16 v1, 0x43040000    # 132.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->measure(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView;->onSizeChanged(IIII)V

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .local v1, "header":Landroid/view/View;
    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    .end local v1    # "header":Landroid/view/View;
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 3
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    .local v0, "oldAdapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    :goto_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    return-void

    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    goto :goto_0
.end method

.method public setDisallowInterceptTouchEvents(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    goto :goto_0
.end method

.method public setFastScrollEnabled()V
    .locals 2

    .prologue
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setFastScrollVisible(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setInstantClick(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return-void
.end method

.method public setListSelectorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public setOnInterceptTouchListener(Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setSectionsType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateFastScrollColors()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->access$3000(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
