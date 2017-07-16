.class public Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "progressViewStyle"    # I

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 696
    return-void
.end method


# virtual methods
.method public create()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 703
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$602(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 705
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "icons"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 709
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$602(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2102(Lorg/telegram/ui/ActionBar/AlertDialog;[I)[I

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 712
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 726
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2302(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 727
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 737
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2502(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1802(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 739
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 743
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2602(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 745
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 758
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 759
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 731
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2402(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1702(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 733
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 721
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2202(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 722
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 716
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$402(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 717
    return-object p0
.end method

.method public show()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method
