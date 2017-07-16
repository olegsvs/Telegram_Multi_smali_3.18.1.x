.class Lorg/telegram/ui/PaymentFormActivity$20;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$totalPrice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1679
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$20;->val$totalPrice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1682
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1683
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "PaymentTransactionReview"

    const v2, 0x7f0704bd

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1684
    const-string/jumbo v1, "PaymentTransactionMessage"

    const v2, 0x7f0704bc

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$20;->val$totalPrice:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->access$3600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->access$3700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1685
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$20$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$20$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$20;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1693
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1694
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1695
    return-void
.end method
