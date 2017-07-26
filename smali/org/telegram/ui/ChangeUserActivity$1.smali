.class Lorg/telegram/ui/ChangeUserActivity$1;
.super Ljava/lang/Object;
.source "ChangeUserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUserActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUserActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/telegram/ui/ChangeUserActivity$1;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 89
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-lez p3, :cond_0

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$1;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-static {v0, p3}, Lorg/telegram/ui/ChangeUserActivity;->access$000(Lorg/telegram/ui/ChangeUserActivity;I)V

    .line 92
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$1;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity$1;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    const v2, 0x7f070615

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
