.class Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogsOnTouch"
.end annotation


# instance fields
.field private changed:Z

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field private touchPosition:F

.field private vDPI:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->displayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->vDPI:F

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/telegram/ui/DialogsActivity$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->vDPI:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$1902(Lorg/telegram/ui/DialogsActivity;F)F

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TabsView;->getPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->vDPI:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->touchPosition:F

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->touchPosition:F

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    iput-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->changed:Z

    :cond_3
    instance-of v0, p1, Landroid/widget/LinearLayout;

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->changed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;->changed:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
