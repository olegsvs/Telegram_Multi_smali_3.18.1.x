.class Lorg/telegram/ui/PaymentFormActivity$24$2;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$24;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$24;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$24;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$24;

    .prologue
    .line 2262
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$24$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$24$2;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2265
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$24$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$24;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$24$2;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerficationNeeded;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerficationNeeded;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$24$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$24;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2267
    return-void
.end method
