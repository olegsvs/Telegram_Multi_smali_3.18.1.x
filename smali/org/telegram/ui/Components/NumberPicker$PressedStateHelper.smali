.class Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$100(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$200(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$300(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->access$400(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$200(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->access$400(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$100(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$100(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$200(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->access$300(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v1}, Lorg/telegram/ui/Components/NumberPicker;->access$300(Lorg/telegram/ui/Components/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->access$400(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
