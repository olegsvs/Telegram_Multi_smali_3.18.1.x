.class Lorg/telegram/ui/ThemingContactsActivity$4;
.super Ljava/lang/Object;
.source "ThemingContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 442
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

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
    .line 445
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsHeaderColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    .line 494
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsHeaderGradientColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsHeaderTitleColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_5

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsHeaderIconsColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_6

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsIconsColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsRowColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_8

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsRowGradientColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_9

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsHeaderGradient"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_a

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsRowGradient"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_b

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsAvatarRadius"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 480
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_c

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsNameColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 482
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_d

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsNameSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 484
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_e

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsStatusColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 486
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_f

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsStatusSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 488
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_10

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsOnlineColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$4;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2100(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
