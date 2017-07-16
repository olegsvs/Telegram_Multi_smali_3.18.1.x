.class public Lorg/telegram/ui/ImageListActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ImageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ImageListActivity$CustomListAdapter;
    }
.end annotation


# instance fields
.field private arrayId:I

.field private listAdapter:Lorg/telegram/ui/ImageListActivity$CustomListAdapter;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ImageListActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ImageListActivity;

    .prologue
    iget v0, p0, Lorg/telegram/ui/ImageListActivity;->arrayId:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ImageListActivity;)Lorg/telegram/ui/ImageListActivity$CustomListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ImageListActivity;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ImageListActivity;->listAdapter:Lorg/telegram/ui/ImageListActivity$CustomListAdapter;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ImageListActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v1, p0, Lorg/telegram/ui/ImageListActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v2, p0, Lorg/telegram/ui/ImageListActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v1, p0, Lorg/telegram/ui/ImageListActivity;->arrayId:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "BubbleStyle"

    const v3, 0x7f0700d8

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/ImageListActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ImageListActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ImageListActivity$1;-><init>(Lorg/telegram/ui/ImageListActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ImageListActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ImageListActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;

    iget v1, p0, Lorg/telegram/ui/ImageListActivity;->arrayId:I

    if-nez v1, :cond_1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->bubblesNamesArray:[Ljava/lang/String;

    :goto_1
    iget v2, p0, Lorg/telegram/ui/ImageListActivity;->arrayId:I

    if-nez v2, :cond_2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->imgid:[Ljava/lang/Integer;

    :goto_2
    invoke-direct {v3, p0, p1, v1, v2}, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;-><init>(Lorg/telegram/ui/ImageListActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v3, p0, Lorg/telegram/ui/ImageListActivity;->listAdapter:Lorg/telegram/ui/ImageListActivity$CustomListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ImageListActivity;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .local v0, "list":Landroid/widget/ListView;
    iget-object v1, p0, Lorg/telegram/ui/ImageListActivity;->listAdapter:Lorg/telegram/ui/ImageListActivity$CustomListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lorg/telegram/ui/ImageListActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ImageListActivity$2;-><init>(Lorg/telegram/ui/ImageListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/ImageListActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .end local v0    # "list":Landroid/widget/ListView;
    :cond_0
    const-string/jumbo v1, "CheckStyle"

    const v3, 0x7f070172

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->checksNamesArray:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->checkid:[Ljava/lang/Integer;

    goto :goto_2
.end method

.method public onFragmentCreate()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ImageListActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "array_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ImageListActivity;->arrayId:I

    iget v0, p0, Lorg/telegram/ui/ImageListActivity;->arrayId:I

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    return v0
.end method
