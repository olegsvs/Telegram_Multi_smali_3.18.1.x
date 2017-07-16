.class Lorg/telegram/ui/ThemingActivity$4;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingActivity;

    .prologue
    .line 460
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$4;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$4;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$4;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$200(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$4;->this$0:Lorg/telegram/ui/ThemingActivity;

    const v1, -0xff6978

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingActivity;->access$300(Lorg/telegram/ui/ThemingActivity;I)V

    .line 471
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$4;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$4;->this$0:Lorg/telegram/ui/ThemingActivity;

    const-string/jumbo v1, "dialogColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingActivity;->access$2300(Lorg/telegram/ui/ThemingActivity;Ljava/lang/String;)V

    goto :goto_1
.end method
