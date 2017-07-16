.class Lorg/telegram/ui/PaymentFormActivity$20$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$20;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$20;

    .prologue
    .line 1685
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2400(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 1689
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 1690
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$3800(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 1691
    return-void
.end method
