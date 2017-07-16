.class Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileNotificationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileNotificationsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 560
    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    .line 561
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 783
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 786
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 787
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 788
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 789
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 790
    const/4 v0, 0x3

    goto :goto_0

    .line 791
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 792
    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    .line 793
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 794
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 20
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 603
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 605
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/HeaderCell;

    .line 606
    .local v5, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_1

    .line 607
    const-string/jumbo v14, "General"

    const v15, 0x7f0702a1

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_2

    .line 609
    const-string/jumbo v14, "ProfilePopupNotification"

    const v15, 0x7f0704fd

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 611
    const-string/jumbo v14, "NotificationsLed"

    const v15, 0x7f07043f

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 613
    const-string/jumbo v14, "VoipNotificationSettings"

    const v15, 0x7f070688

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v5    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 619
    .local v12, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 620
    .local v10, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_5

    .line 621
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sound_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "SoundDefault"

    const v16, 0x7f0705f8

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 622
    .local v13, "value":Ljava/lang/String;
    const-string/jumbo v14, "NoSound"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 623
    const-string/jumbo v14, "NoSound"

    const v15, 0x7f0703ed

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 625
    :cond_4
    const-string/jumbo v14, "Sound"

    const v15, 0x7f0705f7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v13, v15}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 626
    .end local v13    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 627
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ringtone_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "DefaultRingtone"

    const v16, 0x7f0701d8

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 628
    .restart local v13    # "value":Ljava/lang/String;
    const-string/jumbo v14, "NoSound"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 629
    const-string/jumbo v14, "NoSound"

    const v15, 0x7f0703ed

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 631
    :cond_6
    const-string/jumbo v14, "VoipSettingsRingtone"

    const v15, 0x7f070697

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v13, v15}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 632
    .end local v13    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_14

    .line 633
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "vibrate_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 634
    .local v13, "value":I
    if-eqz v13, :cond_8

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    .line 635
    :cond_8
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "VibrationDefault"

    const v16, 0x7f070672

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_a

    :cond_9
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v14, 0x0

    goto :goto_1

    .line 636
    :cond_b
    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 637
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "Short"

    const v16, 0x7f0705cc

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_d

    :cond_c
    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    goto :goto_2

    .line 638
    :cond_e
    const/4 v14, 0x2

    if-ne v13, v14, :cond_11

    .line 639
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "VibrationDisabled"

    const v16, 0x7f070673

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_10

    :cond_f
    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_10
    const/4 v14, 0x0

    goto :goto_3

    .line 640
    :cond_11
    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 641
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "Long"

    const v16, 0x7f070364

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_13

    :cond_12
    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v14, 0x0

    goto :goto_4

    .line 643
    .end local v13    # "value":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_18

    .line 644
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "priority_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 645
    .restart local v13    # "value":I
    if-nez v13, :cond_15

    .line 646
    const-string/jumbo v14, "NotificationsPriority"

    const v15, 0x7f070445

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "NotificationsPriorityDefault"

    const v16, 0x7f070446

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 647
    :cond_15
    const/4 v14, 0x1

    if-ne v13, v14, :cond_16

    .line 648
    const-string/jumbo v14, "NotificationsPriority"

    const v15, 0x7f070445

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "NotificationsPriorityHigh"

    const v16, 0x7f070447

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 649
    :cond_16
    const/4 v14, 0x2

    if-ne v13, v14, :cond_17

    .line 650
    const-string/jumbo v14, "NotificationsPriority"

    const v15, 0x7f070445

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "NotificationsPriorityMax"

    const v16, 0x7f070449

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 651
    :cond_17
    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 652
    const-string/jumbo v14, "NotificationsPriority"

    const v15, 0x7f070445

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "NotificationsPrioritySettings"

    const v16, 0x7f07044a

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 654
    .end local v13    # "value":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_1c

    .line 655
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "smart_max_count_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 656
    .local v8, "notifyMaxCount":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "smart_delay_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb4

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 657
    .local v7, "notifyDelay":I
    if-nez v8, :cond_1a

    .line 658
    const-string/jumbo v14, "SmartNotifications"

    const v15, 0x7f0705e8

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "SmartNotificationsDisabled"

    const v16, 0x7f0705eb

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_19

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v14, 0x0

    goto :goto_5

    .line 660
    :cond_1a
    const-string/jumbo v14, "Minutes"

    div-int/lit8 v15, v7, 0x3c

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 661
    .local v6, "minutes":Ljava/lang/String;
    const-string/jumbo v14, "SmartNotifications"

    const v15, 0x7f0705e8

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "SmartNotificationsInfo"

    const v16, 0x7f0705ec

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1b

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1b
    const/4 v14, 0x0

    goto :goto_6

    .line 663
    .end local v6    # "minutes":Ljava/lang/String;
    .end local v7    # "notifyDelay":I
    .end local v8    # "notifyMaxCount":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 664
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "calls_vibrate_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 665
    .restart local v13    # "value":I
    if-eqz v13, :cond_1d

    const/4 v14, 0x4

    if-ne v13, v14, :cond_1e

    .line 666
    :cond_1d
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "VibrationDefault"

    const v16, 0x7f070672

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 667
    :cond_1e
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1f

    .line 668
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "Short"

    const v16, 0x7f0705cc

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 669
    :cond_1f
    const/4 v14, 0x2

    if-ne v13, v14, :cond_20

    .line 670
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "VibrationDisabled"

    const v16, 0x7f070673

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 671
    :cond_20
    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 672
    const-string/jumbo v14, "Vibrate"

    const v15, 0x7f070671

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "Long"

    const v16, 0x7f070364

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 678
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v13    # "value":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 679
    .local v12, "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_21

    .line 680
    const-string/jumbo v14, "ProfilePopupNotificationInfo"

    const v15, 0x7f0704fe

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200ae

    const-string/jumbo v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 682
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_22

    .line 683
    const-string/jumbo v14, "NotificationsLedInfo"

    const v15, 0x7f070441

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200af

    const-string/jumbo v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 685
    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_24

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_23

    .line 687
    const-string/jumbo v14, ""

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200ae

    const-string/jumbo v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 689
    :cond_23
    const-string/jumbo v14, "PriorityInfo"

    const v15, 0x7f0704f6

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 692
    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_25

    .line 693
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200ae

    const-string/jumbo v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 695
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 696
    const-string/jumbo v14, "VoipRingtoneInfo"

    const v15, 0x7f070696

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200ae

    const-string/jumbo v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 702
    .end local v12    # "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/TextColorCell;

    .line 703
    .local v12, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 705
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "color_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 706
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "color_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, -0xffff01

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 714
    .local v4, "color":I
    :goto_8
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_9
    const/16 v14, 0x9

    if-ge v2, v14, :cond_26

    .line 715
    sget-object v14, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v14, v14, v2

    if-ne v14, v4, :cond_29

    .line 716
    sget-object v14, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v4, v14, v2

    .line 720
    :cond_26
    const-string/jumbo v14, "NotificationsLedColor"

    const v15, 0x7f070440

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v4, v15}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 708
    .end local v2    # "a":I
    .end local v4    # "color":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v14

    long-to-int v14, v14

    if-gez v14, :cond_28

    .line 709
    const-string/jumbo v14, "GroupLed"

    const v15, -0xffff01

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "color":I
    goto :goto_8

    .line 711
    .end local v4    # "color":I
    :cond_28
    const-string/jumbo v14, "MessagesLed"

    const v15, -0xffff01

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "color":I
    goto :goto_8

    .line 714
    .restart local v2    # "a":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 724
    .end local v2    # "a":I
    .end local v4    # "color":I
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v11, Lorg/telegram/ui/Cells/RadioCell;

    .line 725
    .local v11, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 726
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "popup_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 727
    .local v9, "popup":I
    if-nez v9, :cond_2a

    .line 728
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v14

    long-to-int v14, v14

    if-gez v14, :cond_2b

    const-string/jumbo v14, "popupGroup"

    :goto_a
    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 729
    if-eqz v9, :cond_2c

    .line 730
    const/4 v9, 0x1

    .line 735
    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_2e

    .line 736
    const-string/jumbo v14, "PopupEnabled"

    const v15, 0x7f0704f3

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x1

    if-ne v9, v14, :cond_2d

    const/4 v14, 0x1

    :goto_c
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v14, v0}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 737
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 728
    :cond_2b
    const-string/jumbo v14, "popupAll"

    goto :goto_a

    .line 732
    :cond_2c
    const/4 v9, 0x2

    goto :goto_b

    .line 736
    :cond_2d
    const/4 v14, 0x0

    goto :goto_c

    .line 738
    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 739
    const-string/jumbo v14, "PopupDisabled"

    const v15, 0x7f0704f2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x2

    if-ne v9, v14, :cond_2f

    const/4 v14, 0x1

    :goto_d
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v14, v0}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 740
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 739
    :cond_2f
    const/4 v14, 0x0

    goto :goto_d

    .line 745
    .end local v9    # "popup":I
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 746
    .local v3, "cell":Lorg/telegram/ui/Cells/TextCheckBoxCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 747
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v14, "NotificationsEnableCustom"

    const v15, 0x7f07043e

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v14

    if-eqz v14, :cond_30

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v14

    if-eqz v14, :cond_30

    const/4 v14, 0x1

    :goto_e
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v14, v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_30
    const/4 v14, 0x0

    goto :goto_e

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 571
    packed-switch p2, :pswitch_data_0

    .line 593
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 597
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 573
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 574
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 577
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 578
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 581
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 582
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 584
    .end local v0    # "view":Landroid/view/View;
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .line 585
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 588
    .end local v0    # "view":Landroid/view/View;
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 589
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 755
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 758
    :pswitch_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 759
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 763
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 764
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 768
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 769
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 773
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :pswitch_3
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/RadioCell;

    .line 774
    .local v0, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/RadioCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_4

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
