.class Lorg/telegram/ui/Components/TabsView$Tab;
.super Ljava/lang/Object;
.source "TabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Tab"
.end annotation


# instance fields
.field private position:I

.field private final res:I

.field final synthetic this$0:Lorg/telegram/ui/Components/TabsView;

.field private final title:Ljava/lang/String;

.field private final type:I

.field private unread:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TabsView;Ljava/lang/String;III)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/TabsView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "res"    # I
    .param p4, "type"    # I
    .param p5, "position"    # I

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView$Tab;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/TabsView$Tab;->title:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Components/TabsView$Tab;->res:I

    iput p4, p0, Lorg/telegram/ui/Components/TabsView$Tab;->type:I

    iput p5, p0, Lorg/telegram/ui/Components/TabsView$Tab;->position:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/TabsView$Tab;->unread:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/TabsView$Tab;->position:I

    return v0
.end method

.method public getRes()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/TabsView$Tab;->res:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$Tab;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/TabsView$Tab;->type:I

    return v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/TabsView$Tab;->unread:I

    return v0
.end method

.method public setUnread(I)V
    .locals 0
    .param p1, "unread"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/TabsView$Tab;->unread:I

    return-void
.end method
