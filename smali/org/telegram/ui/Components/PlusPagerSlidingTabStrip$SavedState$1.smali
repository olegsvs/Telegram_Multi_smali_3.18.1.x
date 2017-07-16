.class final Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState$1;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 784
    new-instance v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcel;Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState$1;->newArray(I)[Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 789
    new-array v0, p1, [Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;

    return-object v0
.end method
