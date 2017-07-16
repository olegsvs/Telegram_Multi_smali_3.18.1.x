.class Lorg/telegram/ui/PaymentFormActivity$19$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$19;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$19;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$19;

    .prologue
    .line 1623
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$19$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectNewCard(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "tokenJson"    # Ljava/lang/String;
    .param p2, "card"    # Ljava/lang/String;
    .param p3, "saveCard"    # Z

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$19$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$19$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p3}, Lorg/telegram/ui/PaymentFormActivity;->access$2602(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$19$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/PaymentFormActivity;->access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$19$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$3400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$19$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$19;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$19;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PaymentCheckoutMethod"

    const v3, 0x7f07049d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1630
    return-void
.end method
