.class Lorg/telegram/ui/DialogsActivity$17;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
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
    .line 2100
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 2103
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2104
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2105
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2106
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 2107
    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    .line 2104
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2108
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    instance-of v4, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_0

    .line 2109
    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    goto :goto_1

    .line 2112
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    .line 2113
    .local v3, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    if-eqz v3, :cond_4

    .line 2114
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2115
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 2116
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2117
    .restart local v1    # "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz v4, :cond_3

    .line 2118
    check-cast v1, Lorg/telegram/ui/Cells/HintDialogCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HintDialogCell;->update()V

    .line 2115
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2122
    :cond_4
    return-void
.end method
