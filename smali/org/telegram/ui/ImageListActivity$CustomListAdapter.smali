.class Lorg/telegram/ui/ImageListActivity$CustomListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ImageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final imgid:[Ljava/lang/Integer;

.field private final itemname:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ImageListActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ImageListActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemname"    # [Ljava/lang/String;
    .param p4, "imgid"    # [Ljava/lang/Integer;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->this$0:Lorg/telegram/ui/ImageListActivity;

    const v0, 0x7f03000e

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->itemname:[Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->imgid:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x46

    const/4 v8, 0x0

    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-static {v6}, Lorg/telegram/ui/ImageListActivity;->access$000(Lorg/telegram/ui/ImageListActivity;)I

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "chatBubbleStyle"

    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->itemname:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    const v6, 0x7f03000e

    invoke-virtual {v1, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->itemname:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, -0x2f2f30

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    const v6, 0x7f0c0049

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, "txtTitle":Landroid/widget/TextView;
    const v6, 0x7f0c0047

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "inImageView":Landroid/widget/ImageView;
    const v6, 0x7f0c0048

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .local v3, "outImageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->itemname:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->imgid:[Ljava/lang/Integer;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->imgid:[Ljava/lang/Integer;

    iget-object v7, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->itemname:[Ljava/lang/String;

    array-length v7, v7

    add-int/2addr v7, p1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-static {v6}, Lorg/telegram/ui/ImageListActivity;->access$000(Lorg/telegram/ui/ImageListActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/16 v6, 0x32

    invoke-virtual {p2, v6, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_2
    return-object p2

    .end local v0    # "inImageView":Landroid/widget/ImageView;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outImageView":Landroid/widget/ImageView;
    .end local v5    # "txtTitle":Landroid/widget/TextView;
    :cond_0
    const-string/jumbo v6, "chatCheckStyle"

    goto/16 :goto_0

    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    const v6, -0xf0f10

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .restart local v0    # "inImageView":Landroid/widget/ImageView;
    .restart local v3    # "outImageView":Landroid/widget/ImageView;
    .restart local v5    # "txtTitle":Landroid/widget/TextView;
    :cond_2
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatLBubbleColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatRBubbleColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method
