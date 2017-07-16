.class Lorg/telegram/ui/DialogsActivity$13;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showTabLongClick(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$position:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1382
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$13;->val$type:I

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$13;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 1385
    if-ne p2, v1, :cond_1

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$type:I

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;I)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$position:I

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;I)V

    goto :goto_0

    .line 1389
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_0

    .line 1391
    :cond_3
    if-nez p2, :cond_0

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PlusManageTabsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
