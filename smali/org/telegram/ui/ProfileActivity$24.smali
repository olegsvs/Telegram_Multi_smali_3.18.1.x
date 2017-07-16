.class Lorg/telegram/ui/ProfileActivity$24;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 2392
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$24;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 2395
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 2396
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2398
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2399
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 2400
    .local v0, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 2401
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$24;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ProfileActivity;->access$7102(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2403
    .end local v0    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$24;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2404
    return-void
.end method
