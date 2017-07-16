.class public Lorg/telegram/ui/Cells/PhotoPickerSearchCell;
.super Landroid/widget/LinearLayout;
.source "PhotoPickerSearchCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;,
        Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowGifs"    # Z

    .prologue
    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->setOrientation(I)V

    new-instance v2, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V

    .local v2, "searchButton":Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SearchImages"

    const v5, 0x7f07056f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SearchImagesInfo"

    const v5, 0x7f070570

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020243

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    .end local v2    # "searchButton":Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V

    .restart local v2    # "searchButton":Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SearchGifs"

    const v5, 0x7f07056d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "GIPHY"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02023f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    new-instance v3, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    return-void
.end method
