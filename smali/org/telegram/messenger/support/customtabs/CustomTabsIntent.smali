.class public final Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$1;,
        Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_ACTION_BUTTON_BUNDLE:Ljava/lang/String; = "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

.field public static final EXTRA_CLOSE_BUTTON_ICON:Ljava/lang/String; = "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

.field public static final EXTRA_DEFAULT_SHARE_MENU_ITEM:Ljava/lang/String; = "android.support.customtabs.extra.SHARE_MENU_ITEM"

.field public static final EXTRA_ENABLE_URLBAR_HIDING:Ljava/lang/String; = "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

.field public static final EXTRA_EXIT_ANIMATION_BUNDLE:Ljava/lang/String; = "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

.field public static final EXTRA_MENU_ITEMS:Ljava/lang/String; = "android.support.customtabs.extra.MENU_ITEMS"

.field public static final EXTRA_SECONDARY_TOOLBAR_COLOR:Ljava/lang/String; = "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

.field public static final EXTRA_SESSION:Ljava/lang/String; = "android.support.customtabs.extra.SESSION"

.field public static final EXTRA_TINT_ACTION_BUTTON:Ljava/lang/String; = "android.support.customtabs.extra.TINT_ACTION_BUTTON"

.field public static final EXTRA_TITLE_VISIBILITY_STATE:Ljava/lang/String; = "android.support.customtabs.extra.TITLE_VISIBILITY"

.field public static final EXTRA_TOOLBAR_COLOR:Ljava/lang/String; = "android.support.customtabs.extra.TOOLBAR_COLOR"

.field public static final EXTRA_TOOLBAR_ITEMS:Ljava/lang/String; = "android.support.customtabs.extra.TOOLBAR_ITEMS"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "android.support.customtabs.customaction.DESCRIPTION"

.field public static final KEY_ICON:Ljava/lang/String; = "android.support.customtabs.customaction.ICON"

.field public static final KEY_ID:Ljava/lang/String; = "android.support.customtabs.customaction.ID"

.field public static final KEY_MENU_ITEM_TITLE:Ljava/lang/String; = "android.support.customtabs.customaction.MENU_ITEM_TITLE"

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "android.support.customtabs.customaction.PENDING_INTENT"

.field private static final MAX_TOOLBAR_ITEMS:I = 0x5

.field public static final NO_TITLE:I = 0x0

.field public static final SHOW_PAGE_TITLE:I = 0x1

.field public static final TOOLBAR_ACTION_BUTTON_ID:I


# instance fields
.field public final intent:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final startAnimationBundle:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startAnimationBundle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 77
    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;
    .param p2, "x1"    # Landroid/os/Bundle;
    .param p3, "x2"    # Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$1;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getMaxToolbarItems()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Landroid/net/Uri;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
