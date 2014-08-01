.class Lcom/mediatek/inputmethod/DoubleClickSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "DoubleClickSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/inputmethod/DoubleClickSpeedPreference$1;->this$0:Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/inputmethod/DoubleClickSpeedPreference$1;->this$0:Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;

    #calls: Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;->access$000(Lcom/mediatek/inputmethod/DoubleClickSpeedPreference;)V

    .line 58
    return-void
.end method
