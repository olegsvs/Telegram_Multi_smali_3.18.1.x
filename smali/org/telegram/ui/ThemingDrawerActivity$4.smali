.class Lorg/telegram/ui/ThemingDrawerActivity$4;
.super Ljava/lang/Object;
.source "ThemingDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingDrawerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingDrawerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 591
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 594
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    .line 609
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_2

    .line 610
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerHeaderColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 660
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2802(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_0

    .line 611
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_3

    .line 612
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerHeaderGradient"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 613
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_4

    .line 614
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerHeaderGradientColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 615
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_5

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerListColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 618
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_6

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerRowGradientColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 621
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_7

    .line 622
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerRowGradient"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 624
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_8

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerRowGradientListCheck"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 627
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_9

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerListDividerColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 629
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_a

    .line 630
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerAvatarColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 631
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_b

    .line 632
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerAvatarRadius"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 633
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_c

    .line 634
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerNameColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 635
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_d

    .line 636
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerAvatarSize"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 637
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_e

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerNameSize"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_f

    .line 640
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerPhoneColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 641
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_10

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerPhoneSize"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 643
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_11

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerIconColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto/16 :goto_1

    .line 646
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_12

    .line 647
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerOptionColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto/16 :goto_1

    .line 649
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_13

    .line 650
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerOptionSize"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 651
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_14

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerVersionColor"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 653
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_15

    .line 654
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerVersionSize"

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 656
    :cond_15
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3000(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
