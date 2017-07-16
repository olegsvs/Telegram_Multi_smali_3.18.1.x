.class Lorg/telegram/ui/CountrySelectActivity$3;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CountrySelectActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$000(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$200(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->getItem(I)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    .local v0, "country":Lorg/telegram/ui/CountrySelectActivity$Country;
    :goto_0
    if-gez p2, :cond_2

    .end local v0    # "country":Lorg/telegram/ui/CountrySelectActivity$Country;
    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getSectionForPosition(I)I

    move-result v2

    .local v2, "section":I
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    .local v1, "row":I
    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    .restart local v0    # "country":Lorg/telegram/ui/CountrySelectActivity$Country;
    goto :goto_0

    .end local v1    # "row":I
    .end local v2    # "section":I
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/CountrySelectActivity;->finishFragment()V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$3;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;->didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
