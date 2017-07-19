.class public Lorg/telegram/ui/Adapters/UserItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public context:Landroid/app/Activity;

.field public inflater:Landroid/view/LayoutInflater;

.field itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->context:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    .line 38
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x4

    .line 78
    if-nez p2, :cond_0

    .line 80
    new-instance v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;-><init>()V

    .line 81
    .local v0, "holder":Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03079c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    const v2, 0x7f0c0074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewPhoto:Landroid/widget/ImageView;

    .line 84
    const v2, 0x7f0c0077

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewCurrent:Landroid/widget/ImageView;

    .line 85
    const v2, 0x7f0c0075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->txtViewName:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0c0076

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->txtViewPhone:Landroid/widget/TextView;

    .line 87
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewCurrent:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/UserItems;

    .line 94
    .local v1, "userItems":Lorg/telegram/ui/Components/UserItems;
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UserItems;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual {v1}, Lorg/telegram/ui/Components/UserItems;->getCurrent()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UserItems;->getCurrent()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 96
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewCurrent:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chats_sentCheck"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 97
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewCurrent:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->txtViewName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UserItems;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->txtViewPhone:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UserItems;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-object p2

    .line 91
    .end local v0    # "holder":Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;
    .end local v1    # "userItems":Lorg/telegram/ui/Components/UserItems;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;

    .restart local v0    # "holder":Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;
    goto :goto_0

    .line 98
    .restart local v1    # "userItems":Lorg/telegram/ui/Components/UserItems;
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;->imgViewCurrent:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public remove(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/UserItemsAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
