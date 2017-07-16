.class Lorg/telegram/ui/ThemingChatActivity$4;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 1386
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

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
    .line 1389
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1390
    const/4 v0, 0x0

    .line 1497
    :goto_0
    return v0

    .line 1404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatHeaderColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    .line 1497
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1406
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatHeaderGradient"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1408
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatHeaderGradientColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1410
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_5

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatSolidBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    goto :goto_1

    .line 1413
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_6

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatGradientBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    .line 1415
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    goto :goto_1

    .line 1416
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatGradientBG"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1418
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_8

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatMemberColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1420
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_9

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatContactNameColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1422
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_a

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatRTextColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1424
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_b

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatLTextColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1426
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_c

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatSelectedMsgBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1428
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_d

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatNameColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1430
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_e

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatNameSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1432
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_f

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatStatusColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1434
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_10

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatOnlineColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1436
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_11

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatTypingColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1438
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatStatusSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1440
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_13

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatRTimeColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1442
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_14

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatLTimeColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1444
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_15

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatCommandColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1446
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_16

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatDateColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1448
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_17

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatChecksColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1450
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_18

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatTextSize"

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ThemingChatActivity;->access$7300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1452
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_19

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatTimeSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1454
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1a

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatDateSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1456
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1b

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatDateBubbleColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1458
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1c

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatSendIconColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1460
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1d

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1462
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1e

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1464
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1f

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1466
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_20

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextBGGradentColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1468
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_21

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextBGGradient"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1470
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_22

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1472
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_23

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachBGGradient"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1474
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_24

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachBGGradientColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1476
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_25

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachTextColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1478
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_26

    .line 1479
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1480
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_27

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewBGGradient"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1482
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_28

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewBGGradientColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1484
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_29

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewTabIconColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1486
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2a

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewTabColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1488
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2b

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatQuickBarColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1490
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2c

    .line 1491
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatQuickBarNamesColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1493
    :cond_2c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1494
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
