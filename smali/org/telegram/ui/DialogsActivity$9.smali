.class Lorg/telegram/ui/DialogsActivity$9;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/TabsView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1084
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "type"    # I

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/DialogsActivity;->access$3102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)V

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1093
    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)V

    .line 1097
    :cond_0
    return-void
.end method

.method public onTabLongClick(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "type"    # I

    .prologue
    .line 1101
    if-nez p2, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortAll:I

    .line 1102
    .local v0, "sort":I
    :goto_0
    if-nez p2, :cond_8

    .line 1103
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;III)V

    .line 1108
    :goto_1
    return-void

    .line 1101
    .end local v0    # "sort":I
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortUsers:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_3

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortGroups:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortChannels:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortBots:I

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p2, v1, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortSuperGroups:I

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSortFavs:I

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 1105
    .restart local v0    # "sort":I
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;III)V

    goto :goto_1
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1113
    return-void
.end method
