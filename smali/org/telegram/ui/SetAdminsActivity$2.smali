.class Lorg/telegram/ui/SetAdminsActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SetAdminsActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$400(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$002(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity;->access$302(Lorg/telegram/ui/SetAdminsActivity;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$100(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$2;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
