.class Lorg/telegram/ui/ProfileActivity$22;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1891
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$22;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$22;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6700(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$22;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)V

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$22;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6800(Lorg/telegram/ui/ProfileActivity;)V

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$22;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1899
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
