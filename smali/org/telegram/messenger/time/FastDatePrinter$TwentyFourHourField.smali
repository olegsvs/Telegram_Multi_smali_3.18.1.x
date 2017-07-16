.class Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "value":I
    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
